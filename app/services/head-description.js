import Service from '@ember/service';
import { tracked } from '@glimmer/tracking'
import { action } from '@ember/object';

export default class HeadDescriptionService extends Service {
  @tracked description;

  @action
  assign(newDescription) {
    // `document` doesn't exist during prember run
    if (typeof document !== 'undefined') {
      let element = document.querySelector('meta[name="description"]');

      // the `element` will not exist in the first run
      // but that's OK because the first run is handled by
      // the <DynamicHead /> component's rendering later
      if (element) {
        element.content = newDescription;
      }
    }

    this.description = newDescription;
  }
}
