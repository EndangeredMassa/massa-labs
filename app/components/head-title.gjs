import Component from '@glimmer/component';
import { inject as service } from '@ember/service';

let firstRender = true;

// renders the current value of the `headTitle` service
// should be run after any `{{outlet}}` to give children a chance
// to register a new title in the `headTitle` service
export default class HeadTitleComponent extends Component {
  @service headTitle;
  @service fastboot;

  get isFirstRender() {
    if (this.fastboot.isFastBoot) {
      return true;
    }

    if (firstRender) {
      firstRender = false;
      return true;
    }

    return false;
  }

  <template>
    {{#if this.isFirstRender}}
      <title>{{this.headTitle.title}}</title>
    {{/if}}
  </template>
}
