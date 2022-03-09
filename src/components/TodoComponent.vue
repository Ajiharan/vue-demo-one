<template>
  <div class="container">
    <!-- <todo-form></todo-form> -->
    <todo-list></todo-list>
  </div>
</template>

<script>
// import TodoForm from "./TodoForm";
import TodoList from "./TodoList";
export default {
  name: "TodoComponent",
  components: {
    // "todo-form": TodoForm,
    "todo-list": TodoList,
  },
  props: {},
};
</script>

<style>
</style>