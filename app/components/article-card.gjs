import { LinkTo } from '@ember/routing';

<template>
  <div class="blog-item">
    <LinkTo class="post-link"
      @route="article"
      @model={{@article}}>
        {{@article.title}}
    </LinkTo>
    <p class="meta"><i>{{{@article.description}}}</i></p>
    <p class="meta">{{@article.date}}</p>
  </div>
</template>
