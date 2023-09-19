
module.exports = async function ({ distDir, visit }) {
  let urls = [
    '/',
    '/talks',
    '/articles',
    '/projects',
    '/articles/some-post'
  ];

  // TODO: dynamically build list of all pages

  return urls;
};
