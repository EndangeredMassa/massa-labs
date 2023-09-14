
module.exports = async function ({ distDir, visit }) {
  let urls = [
    '/',
    '/talks',
    '/articles',
    '/projects',
  ];

  // TODO: dynamically build list of all pages

  return urls;
};
