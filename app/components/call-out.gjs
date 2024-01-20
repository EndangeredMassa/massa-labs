import { LinkTo } from '@ember/routing';
import IconSvg from './icon-svg';

<template>
  <div class="callout">
    <div class="callout-title">
      <div class="callout-icon">
        <IconSvg @name={{@type}} />
      </div>
      <div class="callout-title-inner">
        {{@title}}
      </div>
    </div>
    <div class="callout-content">
      {{yield}}
    </div>
  </div>
</template>
