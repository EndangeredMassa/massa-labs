import Route from '@ember/routing/route';
import { inject as service } from '@ember/service';

export default class BlogIndexRoute extends Route {
  @service headTitle;
  @service headDescription;

  afterModel() {
    this.headTitle.assign("Sean's Blog");
    this.headDescription.assign("Sean Massa's blog about tech, software development, organizations, ethics, and games.");
  }
}
