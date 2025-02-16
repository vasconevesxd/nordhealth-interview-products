<script setup lang="ts">
import Header from './Header.vue'
import Navbar from './Navbar.vue'
</script>

<template>
  <provet-layout>
    <Header />
    <Navbar />
    <provet-stack gap="l">
      <slot></slot>
    </provet-stack>
  </provet-layout>
  <provet-command-menu></provet-command-menu>
</template>
