import RouteTemplate from 'ember-route-template';
import { LinkTo } from '@ember/routing';
import Component from '@glimmer/component';
import ArticleCard from '../components/article-card';
import articles from '../article-data';

let mostRecentPublishedArticle = articles.find((a) => a.published);

class IndexRouteComponent extends Component {
  <template>
    <h1>Sean's Adventures</h1>

    <p>Sean Massa discusses tech, organizations, ethics, and games.</p>

    <h2>Recent Blog Post</h2>

    <ArticleCard
      @level='h3'
      @article={{mostRecentPublishedArticle}}
    />

    <p>See more at <LinkTo @route="blog">/blog</LinkTo>.</p>

    <h2>About Sean Massa</h2>
    <p>
      They are a(n):
    </p>

    <ul>
      <li>supporter of diversity and inclusion</li>
      <li>enthusiast of organizational structures</li>
      <li>software engineer with well over a decade of experience spanning .NET, Ruby/Rails, front-end javascript, Node.js, and various databases</li>
      <li>community organizer of meetups, hackathons, and conferences</li>
    </ul>
    <p>
      Feel free to reach out to me about anything, especially if it's about my interests, on Mastodon at
      <a href="https://social.massalabs.com/@sean">@sean@social.massalabs.com</a>.
    </p>

  </template>
}

export default RouteTemplate(IndexRouteComponent);
