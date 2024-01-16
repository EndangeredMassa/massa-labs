import { LinkTo } from '@ember/routing';
import IconSvg from './icon-svg';

<template>
  <div class="blog-item">
    <h1>
      {{@article.title}}
    </h1>
    <p class="meta"><IconSvg @name="calendar" /> <i>{{@article.date}}</i></p>
  </div>
</template>
