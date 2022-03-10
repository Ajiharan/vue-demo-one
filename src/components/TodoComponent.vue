<template>
  <div class="container">
    <todo-form @updateTodoList="updateTodoList"></todo-form>
    <todo-list :todos="todos" @delete="deleteTodo"></todo-list>
  </div>
</template>

<script>
import TodoForm from "./TodoForm";
import TodoList from "./TodoList";
export default {
  name: "TodoComponent",
  components: {
    "todo-form": TodoForm,
    "todo-list": TodoList,
  },
  data() {
    return {
      todos: [],
    };
  },
  methods: {
    updateTodoList(todo) {
      this.todos.push(todo);
    },
    deleteTodo(index) {
      this.todos.splice(index, 1);
    },
  },
};
</script>

<style>
</style>