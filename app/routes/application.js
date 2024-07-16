import Route from '@ember/routing/route';
import { inject as service } from '@ember/service';
import { run, scheduleOnce } from '@ember/runloop';
import hljs from '../common/highlight.min';
import { inject as registerVercelAnalytics } from '@vercel/analytics';

let firstLoad = true;

export default class ApplicationRoute extends Route {
  @service fastboot;
  @service router;

  afterRender() {
    hljs.highlightAll();

    let tags = document.querySelectorAll("h1,h2,h3,h4,h5,h6");
    for (var i=0, heading; heading = tags[i]; i++) {
      heading.id = heading.innerHTML.toLowerCase().replace(/ /g, "-");
    }
  }

  activate() {
    if (firstLoad && !this.fastboot.isFastBoot) {
      registerVercelAnalytics();
    }

    this.router.on('routeDidChange', (transition) => {
      if (this.fastboot.isFastBoot) {
        return;
      }

      if (!firstLoad) {
        // this happens when you hit the back button,
        // conflicting with Ember default behavior
        window.scrollTo({
          top: 0,
          behavior: 'instant',
        });
      }

      run(() => {
        scheduleOnce('afterRender', this, () => {
          setTimeout(() => {
            this.afterRender();
          }, 100);
        });
      });

      firstLoad = false;
    })
  }
}
