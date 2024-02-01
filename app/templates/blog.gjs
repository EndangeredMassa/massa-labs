import RouteTemplate from 'ember-route-template';
import Component from '@glimmer/component';

class BlogRouteComponent extends Component {
  <template>
    <div class="blog">
      {{outlet}}
    </div>
  </template>
}

export default RouteTemplate(BlogRouteComponent);
