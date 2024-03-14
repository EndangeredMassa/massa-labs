import RouteTemplate from 'ember-route-template';
import Component from '@glimmer/component';
import { action } from '@ember/object';
import ArticleCard from '../components/article-card';
import articles from '../article-data';

function uniq(arr) {
  return [...new Set(arr)];
}

class FavoritesRouteComponent extends Component {
  get favoriteArticles() {
    return articles.filter((article) =>
      article.published
      && article.tags.find((tag) => tag === 'favorite')
    );
  }

  get favoriteGroups() {
    let allTags = this.favoriteArticles.flatMap(a => a.tags);
    return uniq(allTags.filter(t => t !== 'favorite'));
  }

  @action
  getArticlesByGroup(group) {
    return this.favoriteArticles.filter(a => {
      return a.tags.find(t => t === group)
    });
  }

  <template>
    <h1>Sean's Favorites</h1>

    <p>
      All of my favorite things, each with descriptions and reasons.
    </p>

    {{#each this.favoriteGroups as |group|}}
      <h2>{{group}}</h2>
      {{#each (this.getArticlesByGroup group) as |article|}}
        <ArticleCard
          @article={{article}}
          @level='h3'
        />
      {{/each}}
    {{/each}}
  </template>
}

export default RouteTemplate(FavoritesRouteComponent);
