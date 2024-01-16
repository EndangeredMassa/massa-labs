import { LinkTo } from '@ember/routing';
import IconSvg from './icon-svg';

function href(youtubeID) {
  return `https://www.youtube.com/watch?v=${youtubeID}`;
}

function thumbnail(youtubeID) {
  return `https://img.youtube.com/vi/${youtubeID}/maxresdefault.jpg`;
}

<template>
  <div class="youtube-link">
    <a target="_blank" href={{href @id}}>
      <h2>
        <div class="talk-title">{{@title}}</div>
        <div class="talk-date"><IconSvg @name="calendar" /> {{@date}}</div>
      </h2>

      <img src={{thumbnail @id}}>
    </a>
  </div>
</template>
