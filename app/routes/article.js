import Route from '@ember/routing/route';
import articles from '../article-data';

export default class ArticlesArticleRoute extends Route {
  beforeModel(transition) {
    // set the proper template

    let slug;
    if (transition.intent.url) {
      // direct load
      slug = transition.intent.url.replace('/articles/', '');
    } else {
      // linked load
      slug = transition.routeInfos[1].context.slug;
    }

    this.templateName = `articles.${slug}`;
  }

  model(params) {
    let article = articles.find(a => a.slug === params.slug)
    return article;
  }
}
