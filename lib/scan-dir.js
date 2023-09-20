let fs = require('fs');
let { join } = require('path');

module.exports = async function ({ distDir, visit }) {
  /*
    We haev to convert the module format into json because no other mechanism for
    share this data worked between ember build (node, commonjs) and the
    project code (browser, module).
  */
  let articleData = fs.readFileSync(join(__dirname, '/../app/article-data.js')).toString();
  let trimmedArticleData = articleData
    .replace('let articles =', '')
    .replace('export default articles;', '');
  let articles = JSON.parse(trimmedArticleData);
  let articleUrls = articles.map((a) => {
    return '/' + a.route.replace(/\./g, '/');
  });

  return [
    '/',
    '/talks',
    '/articles',
    '/projects',
    ...articleUrls
  ];
};
