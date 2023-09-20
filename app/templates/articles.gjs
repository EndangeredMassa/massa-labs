import RouteTemplate from 'ember-route-template';
import ArticleCard from '../components/article-card';
import articles from '../article-data';

export default RouteTemplate(
<template>
  {{#each articles as |article|}}
    <ArticleCard
      @article={{article}}
    />
  {{/each}}

  {{outlet}}
</template>
);
