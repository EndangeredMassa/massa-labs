import RouteTemplate from 'ember-route-template';
import ArticleCard from '../components/article-card';

export default RouteTemplate(
<template>
  <ArticleCard />
  <ArticleCard />
  <ArticleCard />
  <ArticleCard />

  {{outlet}}
</template>
);
