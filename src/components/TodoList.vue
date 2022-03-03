// view todo list component
<template>
  <div>
  <form @submit.prevent="addTodo">
    <input type='text' v-model="todo"/>
    <button>Add button</button>
  </form>
    <li v-for="todo in newTodos" :key="todo">{{ todo }}</li>
  </div>
</template>

<script>
export default {
  name: "TodoList",
  todo:"",
  props: {
    todos: Array,  
  },
  setup(props){
    const newTodos=props?.todos||[];
    return {
      newTodos
    }
  },
  methods:{
    addTodo(){
      this.newTodos.push(this.todo);
    }
  }
};
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
</style>
