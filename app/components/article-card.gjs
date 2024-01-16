import { LinkTo } from '@ember/routing';
import IconSvg from './icon-svg';
import Heading from './x-heading';

<template>
  <div class="blog-item">
    <LinkTo
      @tag="div"
      @route="blog.article"
      @model={{@article}}>

        <p class="title">{{@article.title}}</p>
        <p class="meta"><IconSvg @name="calendar" /> <i>{{@article.date}}</i></p>
        <p class="meta">{{{@article.description}}}</p>
    </LinkTo>
  </div>
</template>
