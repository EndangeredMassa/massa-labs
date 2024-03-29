'use strict';

const EmberApp = require('ember-cli/lib/broccoli/ember-app');
const scanDir = require('./lib/scan-dir');

module.exports = function (defaults) {
  const app = new EmberApp(defaults, {
    minifyCSS: {
      options: { processImport: true },
    },
    fingerprint: {
      enabled: false
    },
    routerScroll: {
      scrollWhenAfterRender: false,
      scrollWhenIdle: false,
    },
    prember: {
      urls: scanDir
    },
    'markdown-it-templates': {
      options: {
        // default
        linkify: true,
        html: true,

        // overrides
        typographer: false,
        quotes: '""\'\'',
      }
    }
  });

  return app.toTree();
};
