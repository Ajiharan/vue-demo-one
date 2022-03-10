// view todo list component
<template>
  <div>
    <li v-for="(todo, i) in todos" :key="i">
      <span>{{ todo }}</span>
      <button @click="deleteTodo(i)">Delete</button>
    </li>
  </div>
</template>

<script>
export default {
  name: "TodoList",
  todo: "",
  props: {
    todos: Array,
  },
  emits: ["delete"],
  methods: {
    deleteTodo(index) {
      this.$emit("delete", index);
    },
  },
};
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
</style>
