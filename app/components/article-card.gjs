import { LinkTo } from '@ember/routing';
import IconSvg from './icon-svg';

<template>
  <div class="blog-item">
    <h2>
      <LinkTo class="post-link"
        @route="blog.article"
        @model={{@article}}>
          {{@article.title}}
      </LinkTo>
    </h2>
    <p class="meta"><IconSvg @name="calendar" /> <i>{{@article.date}}</i></p>
    <p class="meta">{{{@article.description}}}</p>
  </div>
</template>
