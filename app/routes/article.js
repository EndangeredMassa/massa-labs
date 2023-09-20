import Route from '@ember/routing/route';
import articles from '../article-data';

export default class ArticlesArticleRoute extends Route {
  slug;

  beforeModel(transition) {
    // set the proper template
    this.slug = transition.intent.url.replace('/articles/', '');
    this.templateName = `articles.${this.slug}`;
  }

  model() {
    let article = articles.find(a => a.slug === params.slug)
    return article;
  }
}
