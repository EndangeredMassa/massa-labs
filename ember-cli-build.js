'use strict';

const EmberApp = require('ember-cli/lib/broccoli/ember-app');

module.exports = function (defaults) {
  const app = new EmberApp(defaults, {
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
