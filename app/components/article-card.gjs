import { LinkTo } from '@ember/routing';
import IconSvg from './icon-svg';
import Heading from './x-heading';

<template>
  <div class="blog-item">
    <LinkTo
      @tag="div"
      @route="blog.article"
      @model={{@article}}>

        <Heading @level={{@level}} class="title">{{{@article.title}}}</Heading>
        <p class="meta"><IconSvg @name="calendar" /> <i>{{@article.date}}</i></p>
        <div class="meta">{{{@article.description}}}</div>
    </LinkTo>
  </div>
</template>
