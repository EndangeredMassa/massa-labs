import Route from '@ember/routing/route';
import { inject as service } from '@ember/service';

export default class FavoritesRoute extends Route {
  @service headTitle;
  @service headDescription;

  afterModel() {
    this.headTitle.assign("Sean's Favorites");
    this.headDescription.assign("Sean Massa's favorite things.");
  }
}
