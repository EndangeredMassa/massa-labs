import Route from '@ember/routing/route';
import { inject as service } from '@ember/service';

export default class TalksIndexRoute extends Route {
  @service headTitle;
  @service headDescription;

  afterModel() {
    this.headTitle.assign("Sean's Talks");
    this.headDescription.assign("Sean Massa's recorded presentations across time.");
  }
}
