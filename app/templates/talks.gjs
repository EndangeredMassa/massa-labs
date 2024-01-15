import RouteTemplate from 'ember-route-template';
import YoutubeLink from '../components/youtube-link';

export default RouteTemplate(
<template>
  <div class="link-list">
    <YoutubeLink @id="c5DMXsBTS0E"
      @title="Strength-finding Interviews | dojo.live"
      @date="2020-03-25" />
    <YoutubeLink @id="CcSKlsc_AhQ"
      @title="Ember.js Contributor Rally | EmberConf 2018"
      @date="2018-04-06" />
  </div>
</template>
);
