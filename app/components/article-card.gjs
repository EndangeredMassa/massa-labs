import { LinkTo } from '@ember/routing';

<template>
  <div class="blog-item">
    <h2>
      <LinkTo class="post-link"
        @route="article"
        @model={{@article}}>
          {{@article.title}}
      </LinkTo>
    </h2>
    <p class="meta"><i>{{@article.date}}</i></p>
    <p class="meta">{{{@article.description}}}</p>
  </div>
</template>
