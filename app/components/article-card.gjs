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
        <p class="meta">
          <IconSvg @name="calendar" /> <i>{{@article.date}}</i>
          <span class="dim">by</span> <a href="https://social.massalabs.com/@sean" target="_blank">Sean Massa</a>
          {{#each @article.tags as |tag|}}
            <code class="pill">#{{tag}}</code>
          {{/each}}
        </p>
        <div class="meta">{{{@article.description}}}</div>
    </LinkTo>
  </div>
</template>
