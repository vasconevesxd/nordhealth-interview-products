<script setup lang="ts"></script>
<template>
  <provet-header>
    <h1 class="n-typescale-l">Dashboard</h1>
    <template v-slot:end>
      <provet-button variant="primary">
        <template v-slot:start>
          <provet-icon name="interface-add-small"></provet-icon>
        </template>
        Create new
      </provet-button>
    </template>
    <provet-tooltip id="export" position="block-end"> Export data as Spreadsheet </provet-tooltip>
  </provet-header>
</template>
