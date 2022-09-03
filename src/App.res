%%raw(`import './App.css';`)

@react.component
let make = () => {
  let (todoList, setTodoList) = React.useState((_): array<TodoItem.todo> => [])

  let addTodo = (todoName: string) =>
    setTodoList(prevState =>
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

  let renderItems = () =>
    todoList
    ->Belt.Array.map(todo => {<TodoItem key={todo.id->Belt.Int.toString} todo removeTodo />})
    ->React.array

  <div className="App">
    <Input addTodo />
    {Belt.Array.length(todoList) > 0 ? renderItems() : "No items added yet"->React.string}
  </div>
}
