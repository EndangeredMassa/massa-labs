'use strict';

const EmberApp = require('ember-cli/lib/broccoli/ember-app');

module.exports = function (defaults) {
  const app = new EmberApp(defaults, {
    minifyCSS: {
      options: { processImport: true },
    },
    prember: {
      urls: [
        '/',
        '/talks',
        '/articles',
        '/projects',
      ]
    }
  });

  return app.toTree();
};
