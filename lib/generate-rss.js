let fs = require('node:fs/promises');
let path = require('node:path');
let getArticles = require('./get-articles');

let siteData = {
  title: "Sean Massa's Labs",
  description: "Sean Massa's personal site where they discuss tech, organizations, ethics, and games.",
  url: 'https://massalabs.com'
};

// Source: https://stackoverflow.com/a/27979933
function escapeXml(unsafe) {
  return unsafe.replace(/[<>&'"]/g, function (c) {
    switch (c) {
      case '<': return '&lt;';
      case '>': return '&gt;';
      case '&': return '&amp;';
      case '\'': return '&apos;';
      case '"': return '&quot;';
    }
  });
}

function toUtcDate(str) {
  return new Date(Date.parse(str)).toUTCString();;
}

function generateTags(article) {
  // TODO: implement tags
  // <category>{{ tag | xml_escape }}</category>
  return '';
}

function generateRssItem(article) {
  let fullUrl = `https://massalabs.com/blog/${article.slug}`;
  let tags = generateTags(article);

  return `
    <item>
      <title>${escapeXml(article.title)}</title>
      <description>${escapeXml(article.description)}</description>
      <pubDate>${toUtcDate(article.date)}</pubDate>
      <link>${fullUrl}</link>
      <guid isPermaLink="true">${fullUrl}</guid>
      ${tags}
    </item>
  `.trim();
}

function generateRss(articles) {
  let mostRecentPublishedArticle = articles.find((a) => a.published);
  let mostRecentPublishedDate = toUtcDate(mostRecentPublishedArticle.date);
  let generationDate = (new Date()).toUTCString();
  let posts = articles.map(a => generateRssItem(a)).join('\n');

  return `
    <?xml version="1.0" encoding="UTF-8"?>
    <rss version="2.0" xmlns:atom="http://www.w3.org/2005/Atom">
      <channel>
        <title>${siteData.title}</title>
        <description>${siteData.description}</description>
        <link>${siteData.url}</link>
        <atom:link href="${siteData.url}/feed.xml" rel="self" type="application/rss+xml" />
        <pubDate>${generationDate}</pubDate>
        <lastBuildDate>${mostRecentPublishedDate}</lastBuildDate>
        ${posts}
      </channel>
    </rss>
  `.trim();
}

async function writeRss() {
  let articles = getArticles();
  let rssString = generateRss(articles);

  let pathToRss = path.join(__dirname, '../dist/feed.xml');
  await fs.writeFile(pathToRss, rssString);
}

writeRss().then(() => {
  console.log('Generated rss!')
}).catch((error) => {
  console.error('Failed to generate rss!');
  console.error(error);
});



