import RouteTemplate from 'ember-route-template';
import ArticleCard from '../components/article-card';
import articles from '../article-data';

export default RouteTemplate(
<template>
  {{#each articles as |article|}}
    <ArticleCard
      @title={{article.title}}
      @route={{article.route}}
      @date={{article.date}}
      @description={{article.description}}
    />
  {{/each}}

  {{outlet}}
</template>
);
