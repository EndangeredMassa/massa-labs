let fs = require('fs');
let { join } = require('path');

function tryParseJSON(jsonText, originalFilePath) {
  try {
    return JSON.parse(jsonText);
  } catch (error) {
    console.log(`JSON Parse Error of "${originalFilePath}": ${error.message}\nText:\n${jsonText}`);
  }
}

module.exports = function getArticles({ includeDraft } = {}) {
  /*
    We have to convert the module format into json because no other mechanism for
    sharing this data worked between ember build (node, commonjs) and the
    project code (browser, module).
  */
  let articlePath = join(__dirname, '/../app/article-data.js');
  let articleData = fs.readFileSync(articlePath).toString();
  let trimmedArticleData = articleData
    .replace('let articles =', '')
    .replace('export default articles;', '');

  let parsedArticles = tryParseJSON(trimmedArticleData, articlePath);
  if (includeDraft) {
    return parsedArticles;
  }

  return parsedArticles.filter((a) => a.published);
}
