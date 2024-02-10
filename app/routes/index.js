import Route from '@ember/routing/route';
import { inject as service } from '@ember/service';

export default class IndexRoute extends Route {
  @service headTitle;
  @service headDescription;

  afterModel() {
    this.headTitle.assign("Sean Massa's Labs");
    this.headDescription.assign("Sean Massa's personal website, which is mostly a blog about tech, software development, organizations, ethics, and games.");
  }
}
