import { LinkTo } from '@ember/routing';
import IconSvg from './icon-svg';

<template>
  <h1>
    {{{@article.title}}}
  </h1>
  <div><IconSvg @name="calendar" /> <i>{{@article.date}}</i></div>
</template>
