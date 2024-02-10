import Component from '@glimmer/component';
import { inject as service } from '@ember/service';

let firstRender = true;

// renders the current value of the `headTitle` and `headDescription` services
// should be run after any `{{outlet}}` to give children a chance
// to register a new values
export default class DynamicHeadComponent extends Component {
  @service fastboot;
  @service headTitle;
  @service headDescription;

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
      <meta name="description" content="{{this.headDescription.description}}">
    {{/if}}
  </template>
}
