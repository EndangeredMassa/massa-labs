import { LinkTo } from '@ember/routing';
import IconSvg from './icon-svg';

<template>
  <h1>
    {{{@article.title}}}
  </h1>
  <div>
    <IconSvg @name="calendar" /> <i>{{@article.date}}</i>
    <span class="dim">by</span> <a href="https://social.massalabs.com/@sean" target="_blank">Sean Massa</a>
    {{#each @article.tags as |tag|}}
      <code class="pill">#{{tag}}</code>
    {{/each}}
  </div>
</template>
