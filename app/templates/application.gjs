import RouteTemplate from 'ember-route-template';
import { LinkTo } from '@ember/routing';
import IconButton from '../components/icon-button';
import Component from "@glimmer/component";

class MyRouteComponent extends Component {
  <template>
    <header>
      <nav>
        <LinkTo @route="index">Home</LinkTo>
        <LinkTo @route="blog">Blog</LinkTo>
        <LinkTo @route="talks">Talks</LinkTo>
        <LinkTo @route="projects">Projects</LinkTo>
      </nav>
      <div class="socials">
        <IconButton @icon="github" @href="https://github.com/EndangeredMassa" />
        <IconButton @icon="mastodon" @href="https://social.massalabs.com/@sean" />
      </div>
      <h1>Massa Labs</h1>
      <p>Sean Massa writes about tech, organizations, ethics, and games.</p>
    </header>

    <main>
      {{outlet}}
    </main>

    <footer>
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

  get title() {
    return window.location.pathname.split('/')[1];
  }
}

export default RouteTemplate(MyRouteComponent);
