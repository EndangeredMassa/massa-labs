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
      Sean is a(n):
    </p>

    <ul>
      <li>supporter of diversity, equity, and inclusion</li>
      <li>enthusiast of organizational structures</li>
      <li>software engineer with nearly two decades of experience spanning .NET, Ruby/Rails, front-end javascript, Node.js, and various databases</li>
      <li>community organizer of meetups, hackathons, and conferences</li>
    </ul>

    <h3>Personal Statement</h3>

    <p>I've been a software engineer for 18 years. That's wild to me. I still vividly remember being 3 years into my career, desperate to reach 5+ years and achieve a senior title. Now, I realize just how much there was to learn after that. At 18 years, I'm still learning, certainly, but I've also already learned <b>so</b> much about how to build software and run software development companies.</p>

    <p>Those years were not passive. I constantly:</p>

    <p><b>Improve.</b> I can't help it. I am constantly reading, watching, asking, and listening. I take what I've learned and run experiments on myself, my team, and larger groups. I get feedback, check in on the goals of the experiment, and iterate.</p>

    <p><b>Lead.</b> I can't help that either. It can be top-down or bottom-up, but in some way, I'm constantly driving or significantly contributing to important initiatives, collaborating with those around me, and collaborating with those around me.</p>

    <p><b>Collaborate.</b> I love working with people. I am constantly pairing, teaching, learning, sharing, mentoring, and generally iterating on collaborative processes. I grow people, process, and product.</p>

    <p><b>Organize.</b> I research, document, plan, and communicate. I need to for myself, but others get the benefit. I've been told that I bring clarity from chaos.</p>

    <p><b>Execute.</b> Everything else is nice and all, but I also deliver work. I break tasks down into smaller parts, build momentum, stay on the critical path of a project, and remove blockers. I make my work visible and help others to do the same.</p>

    <p>
      Feel free to reach out to me about anything, especially if it's about my interests, on Mastodon at
      <a href="https://social.massalabs.com/@sean">@sean@social.massalabs.com</a>.
    </p>

  </template>
}

export default RouteTemplate(IndexRouteComponent);
