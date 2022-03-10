<template>
  <div class="todo">
    <form @submit.prevent="addTodo">
      <input type="text" v-model="todo" />
      <button>Add button</button>
    </form>
  </div>
</template>

<script>
export default {
  name: "TodoForm",
  data() {
    return {
      todo: "",
    };
  },
  emits: ["updateTodoList"],
  methods: {
    addTodo() {
      this.$emit("update-todo-list", this.todo);
    },
  },
};
</script>

<style>
</style>