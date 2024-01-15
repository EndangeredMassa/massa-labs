import { LinkTo } from '@ember/routing';
import IconSvg from './icon-svg';

<template>
  <div class="blog-item">
    <h1>
      <LinkTo class="post-link"
        @route="blog.article"
        @model={{@article}}>
          {{@article.title}}
      </LinkTo>
    </h1>
    <p class="meta"><IconSvg @name="calendar" /> <i>{{@article.date}}</i></p>
    <p class="meta">{{{@article.description}}}</p>
  </div>
</template>
