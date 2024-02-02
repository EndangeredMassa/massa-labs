import Service from '@ember/service';
import { tracked } from '@glimmer/tracking'
import { action } from '@ember/object';

export default class HeadTitleService extends Service {
  @tracked title;

  @action
  assign(newTitle) {
    // `document` doesn't exist during prember run
    if (typeof document !== 'undefined') {
      let titleElement = document.querySelector('title');

      // the `titleElement` will not exist in the first run
      // but that's OK because the first run is handled by
      // the <HeadTitle /> component's rendering later
      if (titleElement) {
        titleElement.innerText = newTitle;
      }
    }

    this.title = newTitle;
  }
}
