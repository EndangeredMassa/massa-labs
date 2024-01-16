let getArticles = require('./get-articles');

module.exports = async function ({ distDir, visit }) {
  let articles = getArticles();
  let articleUrls = articles.map((a) => {
    return '/blog/' + a.slug.replace(/\./g, '/');
  });

  return [
    '/',
    '/talks',
    '/blog',
    '/projects',
    ...articleUrls
  ];
};
