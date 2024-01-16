import { eq } from 'ember-truth-helpers';

<template>
  {{#if (eq @level 'h1')}}
    <h1>{{yield}}</h1>
  {{else if (eq @level 'h2')}}
    <h2>{{yield}}</h2>
  {{else if (eq @level 'h3')}}
    <h3>{{yield}}</h3>
  {{else}}
    <h2>{{yield}}</h2>
  {{/if}}
</template>
