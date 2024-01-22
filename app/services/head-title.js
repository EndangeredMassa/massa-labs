import Service from '@ember/service';
import { tracked } from '@glimmer/tracking'
import { action } from '@ember/object';

export default class HeadTitleService extends Service {
  @tracked _title;

  get title() {
    return this._title;
  }

  @action
  assign(newTitle) {
    if (typeof document !== 'undefined') {
      let titleElement = document.querySelector('title');
      titleElement.innerText = newTitle;
    }

    this._title = newTitle;
  }
}
