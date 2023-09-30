import Route from '@ember/routing/route';
import { inject as service } from '@ember/service';

export default class ApplicationRoute extends Route {
  @service fastboot;
  @service router;

  activate() {
    this.router.on('routeDidChange', (transition) => {
      if (this.fastboot.isFastBoot) {
        return;
      }

      // this happens when you hit the back button,
      // conflicting with Ember default behavior
      window.scrollTo({
        top: 0,
        behavior: 'instant',
      });
    })
  }
}
