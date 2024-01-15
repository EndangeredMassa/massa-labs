import RouteTemplate from 'ember-route-template';
import ArticleCard from '../../components/article-card';
import articles from '../../article-data';

export default RouteTemplate(
<template>
  <h1>Sean's Blog</h1>

  {{#each articles as |article|}}
    {{#if article.published}}
      <ArticleCard
        @article={{article}}
      />
    {{/if}}
  {{/each}}
</template>
);
