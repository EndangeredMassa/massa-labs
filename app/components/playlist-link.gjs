import { LinkTo } from '@ember/routing';
import IconSvg from './icon-svg';

function href(playlistID, source) {
  switch(source) {
    case 'youtube':
      return `https://www.youtube.com/playlist?list=${playlistID}`;
    case 'vimeo':
      return `https://vimeo.com/channels/${playlistID}/videos`;
    default:
      throw new Error(`Invalid VideoLink source "${source}".`);
  }
}

function thumbnail(playlistID) {
  return `/assets/thumb-${playlistID}.jpg`;
}

<template>
  <div class="video-link">
    <a target="_blank" class="no-icon" href={{href @id @source}}>
      <h3>{{@title}}</h3>

      <div><IconSvg @name="calendar" /> {{@date}}</div>

      <p class="thumbnail">
        <img src={{thumbnail @id}} alt={{@alt}}>
      </p>
    </a>
  </div>
</template>
