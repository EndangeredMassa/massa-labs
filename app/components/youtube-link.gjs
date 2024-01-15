import { LinkTo } from '@ember/routing';

function href(youtubeID) {
  return `https://www.youtube.com/watch?v=${youtubeID}`;
}

function thumbnail(youtubeID) {
  return `https://img.youtube.com/vi/${youtubeID}/maxresdefault.jpg`;
}

<template>
  <div class="youtube-link">
    <a target="_blank" href={{href @id}}>
      <div class="header">
        <div class="talk-title">{{@title}}</div>
        <div class="talk-date">{{@date}}</div>
      </div>

      <hr class="accent-rule">

      <img src={{thumbnail @id}}>
    </a>
  </div>
</template>
