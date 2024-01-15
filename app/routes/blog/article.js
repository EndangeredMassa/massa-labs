import Route from '@ember/routing/route';
import articles from '../../article-data';

export default class BlogRoute extends Route {
  beforeModel(transition) {
    // set the proper template

    let slug;
    if (transition.intent.url) {
      // direct load
      slug = transition.intent.url.replace('/blog/', '');
    } else {
      // linked load
      const info = transition.routeInfos[2];

      slug = info?.context?.slug || info?.params?.slug;
    }

    if (slug) {
      this.templateName = `blog.article.${slug}`;
    }
  }

  model(params) {
    let article = articles.find(a => a.slug === params.slug)
    return article;
  }
}
