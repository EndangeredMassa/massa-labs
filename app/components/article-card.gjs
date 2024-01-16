import { LinkTo } from '@ember/routing';
import IconSvg from './icon-svg';
import Heading from './x-heading';

<template>
  <div class="blog-item">
    <Heading @level={{@level}}>
      <LinkTo class="post-link"
        @route="blog.article"
        @model={{@article}}>
          {{@article.title}}
      </LinkTo>
    </Heading>
    <p class="meta"><IconSvg @name="calendar" /> <i>{{@article.date}}</i></p>
    <p class="meta">{{{@article.description}}}</p>
  </div>
</template>
