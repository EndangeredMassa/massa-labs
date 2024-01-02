import { LinkTo } from '@ember/routing';

<template>
  <div class="blog-item">
    <h2>
      {{@article.title}}
    </h2>
    <p class="meta"><i>{{@article.date}}</i></p>
  </div>
</template>
