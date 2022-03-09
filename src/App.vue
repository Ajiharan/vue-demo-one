<template>
  <div id="app">
    <TodoComponent :todos="todos" disabled />
  </div>
</template>

<script>
import TodoComponent from "./components/TodoComponent";

export default {
  name: "App",
  components: {
    TodoComponent,
  },

  data() {
    return {
      todos: ["first", "second"],
    };
  },
};
</script>

<style>
#app {
  margin: 0;
  padding: 0;
}
</style>
