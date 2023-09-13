import Component from '@glimmer/component';
import { action } from '@ember/object';

export default class SomePostComponent extends Component {
  @action
  handleClick() {
    console.log('hit');
  }
}
