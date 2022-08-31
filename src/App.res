%%raw(`import './App.css';`)

@react.component
let make = () => {
  let (todoList, setTodoList) = React.useState(_ => [])

  let addTodo = (todoName: string) =>
    setTodoList((prevState: array<TodoItem.todo>) =>
      prevState->Belt.Array.concat([
        {
          id: todoList->Belt.Array.length + 1,
          title: todoName,
          checked: false,
        },
      ])
    )

  let removeTodo = (todoId: int) =>
    setTodoList(prevState => prevState->Js.Array2.filter(x => x.id != todoId))

  Js.log(todoList)

  <div className="App">
    <Input addTodo />
    {todoList
    ->Belt.Array.map(todo => {<TodoItem key={todo.id->Belt.Int.toString} todo removeTodo />})
    ->React.array}
  </div>
}
