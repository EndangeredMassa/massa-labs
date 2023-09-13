import EmberRouter from '@ember/routing/router';
import config from 'ember-blog/config/environment';

export default class Router extends EmberRouter {
  location = config.locationType;
  rootURL = config.rootURL;
}

Router.map(function () {
  this.route('talks', function() {
    this.route('index', { path: '/' });
  })

  this.route('projects', function() {
    this.route('index', { path: '/' });
  })

  this.route('articles', function() {
    this.route('index', { path: '/' });
    this.route('some-post');
  });
});
