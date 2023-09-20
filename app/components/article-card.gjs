import { LinkTo } from '@ember/routing';

<template>
  <div class="blog-item">
    <LinkTo class="post-link" @route={{@route}}>{{@title}}</LinkTo>
    <p class="meta"><i>{{@description}}</i></p>
    <p class="meta">{{@date}}</p>
  </div>
</template>
