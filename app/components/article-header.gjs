import { LinkTo } from '@ember/routing';

<template>
  <div class="blog-item">
    <div class="post-link">
      {{@article.title}}
    </div>
    <p class="meta"><i>{{{@article.description}}}</i></p>
    <p class="meta">{{@article.date}}</p>
  </div>
</template>

