import EmberRouter from '@ember/routing/router';
import config from 'ember-blog/config/environment';
import articles from './article-data';

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
  });

  for(let article of articles) {
    let path = '/' + article.route.replace(/\./g, '/');
    console.log(`Registering "${article.route}" at: ${path}`);
    this.route(article.route, { path });
  }
});
