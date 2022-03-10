<template>
  <div id="app">
    <TodoComponent />
  </div>
</template>

<script>
import TodoComponent from "./components/TodoComponent";

export default {
  name: "App",
  components: {
    TodoComponent,
  },
};
</script>

<style>
#app {
  margin: 0;
  padding: 0;
}
</style>
