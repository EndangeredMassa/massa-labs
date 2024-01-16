import RouteTemplate from 'ember-route-template';
import YoutubeLink from '../components/youtube-link';

export default RouteTemplate(
<template>
  <h1>Sean's Talks</h1>

  <div class="link-list">
    <YoutubeLink @id="c5DMXsBTS0E"
      @title="Strength-finding Interviews | dojo.live"
      @alt="Screenshot from the video of a video call showing Sean and three other people discussing the topic."
      @date="2020-03-25" />
    <YoutubeLink @id="CcSKlsc_AhQ"
      @title="Ember.js Contributor Rally | EmberConf 2018"
      @alt="Screenshot from the video of Sean speaking at a podium with a presentations slide visible, which shows the two hamster mascots for Chicago Ember.js."
      @date="2018-04-06" />
  </div>
</template>
);
