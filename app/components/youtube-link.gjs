import { LinkTo } from '@ember/routing';
import IconSvg from './icon-svg';

function href(youtubeID) {
  return `https://www.youtube.com/watch?v=${youtubeID}`;
}

function thumbnail(youtubeID) {
  return `/assets/thumb-${youtubeID}.jpg`;
}

<template>
  <div class="youtube-link">
    <a target="_blank" href={{href @id}}>
      <h2>
        <div class="talk-title">{{@title}}</div>
        <div class="talk-date"><IconSvg @name="calendar" /> {{@date}}</div>
      </h2>

      <p>
        <img src={{thumbnail @id}} alt={{@alt}}>
      </p>
    </a>
  </div>
</template>
