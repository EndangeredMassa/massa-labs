import RouteTemplate from 'ember-route-template';
import { LinkTo } from '@ember/routing';
import IconButton from '../components/icon-button';
import Component from '@glimmer/component';
import { inject as service } from '@ember/service';
import { action } from '@ember/object';

class MyRouteComponent extends Component {
  @service headTitle;

  <template>
    <header>
      {{this.headTitle.assign 'WAT'}}

      <div class="site-title">Sean Massa's Labs</div>
      <nav>
        <LinkTo @route="index">Home</LinkTo>
        <LinkTo @route="blog">Blog</LinkTo>
        <LinkTo @route="talks">Talks</LinkTo>
        <LinkTo @route="resume-cv">CV</LinkTo>
        {{!-- TODO: Add this section later --}}
        {{!-- <LinkTo @route="projects">Projects</LinkTo> --}}
        <span class="separator">|</span>
        <a target="_blank" href="https://social.massalabs.com/@sean">Microblog</a>
        <a target="_blank" href="https://github.com/EndangeredMassa">Code</a>
      </nav>
    </header>

    <main>
      {{outlet}}
    </main>

    <footer>
      <div class="socials">
        <IconButton @icon="github"
          @href="https://github.com/EndangeredMassa"
          @title="link to github.com for EndangeredMassa" />
        <IconButton @icon="mastodon"
          @href="https://social.massalabs.com/@sean"
          @title="link to social.massalabs.com (mastodon instance) for @sean" />
        <IconButton @icon="linkedin"
          @href="https://www.linkedin.com/in/sean-massa/"
          @title="link to linkedin.com/in/sean-massa for Sean Massa" />
        <IconButton @icon="rss"
          @href="/feed.xml"
          @title="link to /feed.xml for an RSS feed" />
      </div>
      <p>
        Thanks to <a href="https://kevquirk.com">Kev Quirk</a>
        for making <a href="https://simplecss.org/">Simple.css</a>,
        which this site's design is based on.
      </p>
    </footer>

    <link rel="stylesheet" href="/assets/tomorrow-night-bright.css">
    <script type="module">
      import hljs from '/assets/highlight.min.js';
      // import js from 'https://cdnjs.cloudflare.com/ajax/libs/highlight.js/11.9.0/es/languages/js.min.js';
      // hljs.registerLanguage('js', js);

      hljs.highlightAll();
    </script>
  </template>
}

export default RouteTemplate(MyRouteComponent);
