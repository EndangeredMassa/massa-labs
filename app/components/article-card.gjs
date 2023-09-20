import { LinkTo } from '@ember/routing';

<template>
  <div class="blog-item">
    {{log @article}}
    <LinkTo class="post-link"
      @route={{@article.route}}>
        {{@article.title}}
    </LinkTo>
    <p class="meta"><i>{{@article.description}}</i></p>
    <p class="meta">{{@article.date}}</p>
  </div>
</template>
