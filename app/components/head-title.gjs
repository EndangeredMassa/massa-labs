import Component from '@glimmer/component';
import { inject as service } from '@ember/service';

// renders the current value of the `headTitle` service
// should be run after any `{{outlet}}` to give children a chance
// to register a new title in the `headTitle` service
export default class HeadTitleComponent extends Component {
  @service headTitle;

  <template>
    <title>{{this.headTitle.title}}</title>
  </template>
}
