import { LinkTo } from '@ember/routing';
import IconSvg from './icon-svg';

function href(videoID, source) {
  switch(source) {
    case 'youtube':
      return `https://www.youtube.com/watch?v=${videoID}`;
    case 'vimeo':
      return `https://vimeo.com/${videoID}`;
    default:
      throw new Error(`Invalid VideoLink source "${source}".`);
  }
}

// youtube thumbnail: https://img.youtube.com/vi/${videoID}/maxresdefault.jpg
// vimeo thumbnail: load URL, find #vp-preview, extract data-thumb attribute
function thumbnail(videoID) {
  return `/assets/thumb-${videoID}.jpg`;
}

<template>
  <div class="video-link">
    <a target="_blank" href={{href @id @source}}>
      <h3>
        <div class="talk-title">{{@title}}</div>
        <div class="talk-date"><IconSvg @name="calendar" /> {{@date}}</div>
      </h3>

      <p class="thumbnail">
        <img src={{thumbnail @id}} alt={{@alt}}>
      </p>
    </a>
  </div>
</template>
