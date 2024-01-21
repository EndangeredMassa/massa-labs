import Route from '@ember/routing/route';
import { inject as service } from '@ember/service';
import { run, scheduleOnce } from '@ember/runloop';
import hljs from '../common/highlight.min';

let firstLoad = true;

export default class ApplicationRoute extends Route {
  @service fastboot;
  @service router;

  activate() {
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
            console.log('highlighting!');
            hljs.highlightAll();
          }, 100);

        });
      });

      firstLoad = false;
    })
  }
}
