import Route from '@ember/routing/route';
import { inject as service } from '@ember/service';

export default class ResumeCVRoute extends Route {
  @service headTitle;
  @service headDescription;

  afterModel() {
    this.headTitle.assign("Sean's Resume / CV");
    this.headDescription.assign("Sean Massa's resume across their career as a Software Engineer.");
  }
}
