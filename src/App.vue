<template>
  <div id="app">
    <TodoList :todos="todos" />
  </div>
</template>

<script>
import TodoList from "./components/TodoList";

export default {
  name: "App",
  components: {
    TodoList,
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
