import Route from '@ember/routing/route';
import { inject as service } from '@ember/service';

export default class ResumeCVRoute extends Route {
  @service headTitle;

  afterModel() {
    this.headTitle.assign("Sean's Resume / CV");
  }
}
