import Route from '@ember/routing/route';
import { inject as service } from '@ember/service';

export default class IndexRoute extends Route {
  @service headTitle;

  afterModel() {
    this.headTitle.assign("Sean Massa's Labs");
  }
}
