import { LinkTo } from '@ember/routing';

<template>
  <div class="blog-item">
    <h1>
      {{@article.title}}
    </h1>
    <p class="meta"><i>{{@article.date}}</i></p>
  </div>
</template>
