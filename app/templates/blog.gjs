import RouteTemplate from 'ember-route-template';
import Component from '@glimmer/component';
import { inject as service } from '@ember/service';

class BlogRouteComponent extends Component {
  @service headTitle;

  <template>
    {{this.headTitle.assign 'Blog'}}

    <div class="blog">
      {{outlet}}
    </div>
  </template>
}

export default RouteTemplate(BlogRouteComponent);
