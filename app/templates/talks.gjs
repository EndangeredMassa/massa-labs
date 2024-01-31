import RouteTemplate from 'ember-route-template';
import VideoLink from '../components/video-link';
import PlaylistLink from '../components/playlist-link';

export default RouteTemplate(
<template>
  <h1>Sean's Talks</h1>

  <h2>Presented by Sean</h2>

  <div class="link-list">
    <VideoLink @id="u-eL2xFd1lY"
      @source="youtube"
      @title="Software Career Advancement Office Hours"
      @alt="Screenshot from the video of a zoom call with 5 people talking, including Sean Massa."
      @date="2020-10-29" />
    <VideoLink @id="c5DMXsBTS0E"
      @source="youtube"
      @title="Strength-finding Interviews | dojo.live"
      @alt="Screenshot from the video of a video call showing Sean and three other people discussing the topic."
      @date="2020-03-25" />
    <VideoLink @id="CcSKlsc_AhQ"
      @source="youtube"
      @title="Ember.js Contributor Rally | EmberConf 2018"
      @alt="Screenshot from the video of Sean speaking at a podium with a presentations slide visible, which shows the two hamster mascots for Chicago Ember.js."
      @date="2018-04-06" />
    <VideoLink @id="JXmhILYb1eM"
      @source="youtube"
      @title="Using ECMAScript 6 (ES6 / ES2015) in Node.js | Chicago Node.js"
      @alt="Screenshot from the video of a screenshare showing the meetup.com page for this meetup and tweetdeck, for some reason."
      @date="2015-06-11" />
    <VideoLink @id="105610898"
      @source="vimeo"
      @title="Meet Groupon Engineering: Aaron Bedra and Sean Massa - Part I"
      @alt="Screenshot from the video of Sean and Aaron talking to each other."
      @date="2014-09-08" />
    <VideoLink @id="107190763"
      @source="vimeo"
      @title="Meet Groupon Engineering: Aaron Bedra and Sean Massa - Part II"
      @alt="Screenshot from the video of Sean and Aaron talking to each other."
      @date="2014-09-08" />
    <VideoLink @id="TfSFplT0-Jw"
      @source="youtube"
      @title="Writing Modules for the Browser | Chicago Node.js"
      @alt="Screenshot from the video of a slide asking 'how did we get here?' with logos for npm, es6, amd, require.js, commonhs, browserify, and component."
      @date="2014-09-03" />
    <VideoLink @id="HupgUkPcLmU"
      @source="youtube"
      @title="Project Spotlight on Buckets.io | Open Source Hangout 005"
      @alt="Open Source Hangout Logo"
      @date="2014-08-20" />
    <VideoLink @id="KJ95PJZdSC8"
      @source="youtube"
      @title="How to Run an Open Source Project, Big and Small | Open Source Hangout 004"
      @alt="Open Source Hangout Logo"
      @date="2014-08-06" />
    <VideoLink @id="R-tZxLHIYlc"
      @source="youtube"
      @title="Open Source Funding Models | Open Source Hangout 003"
      @alt="Open Source Hangout Logo"
      @date="2014-07-30" />
    <VideoLink @id="m2XDRKUPrb8"
      @source="youtube"
      @title="Getting Started with Open Source Contribution | Open Source Hangout 002"
      @alt="Open Source Hangout Logo"
      @date="2014-07-24" />
    <VideoLink @id="k29WlOnEgr4"
      @source="youtube"
      @title="Ideal Package Management for the Web | Open Source Hangout 001"
      @alt="Open Source Hangout Logo"
      @date="2014-07-16" />
    <VideoLink @id="_SyGstd9Dkg"
      @source="youtube"
      @title="What's Coming in Node.js 0.12? | Chicago Node.js"
      @alt="Screenshot from the video of a screenshare showing meetup.com comments for Chicago Node.js, for some reason."
      @date="2014-03-18" />
    <VideoLink @id="qmPlM_SqZes"
      @source="youtube"
      @title="I-Tier: Testium Demo"
      @alt="Screenshot from the video of a screenshare showing some test code behind a webpage showing a dummy form with dummy text."
      @date="2013-ish" />
  </div>

  <h2>Moderated by Sean</h2>

  <div class="link-list">
    <VideoLink @id="7dMLXvgtjAg"
      @source="youtube"
      @title="The Culture of Open Source Panel | All Things Open 2014"
      @alt="Screenshot from the video of a conference room with chairs, stage, and backdrop, with 4 speakers sitting on stage, talking."
      @date="2014-10-23" />
  </div>

  <h2>Organized by Sean</h2>

  <div class="link-list">
    <PlaylistLink @id="749026"
      @source="vimeo"
      @title="Geekfest Chicago Meetup at Groupon"
      @alt="Geekfest logo with green background and stylized 'g' that looks like a pair of glasses."
      @date="2014-2015"
    />
    <PlaylistLink @id="PL4eq2DPpyBbmSKZLCqzMqdtpedlGrDQuc"
      @source="youtube"
      @title="EmberCamp Chicago 2019"
      @alt="EmberCamp Chicago logo with a blue background."
      @date="2019-09-16"
    />
    <PlaylistLink @id="PL4eq2DPpyBbm-vTgHMdBjUi1Qd5GiRIfW"
      @source="youtube"
      @title="EmberCamp Chicago 2018"
      @alt="EmberCamp Chicago logo with a blue background."
      @date="2018-09-21"
    />
  </div>
</template>
);
