type todo = {
  id: int,
  title: string,
  checked: bool,
}

@react.component
let make = (~todo, ~removeTodo) => {
  <li>
    <button onClick={_ => removeTodo(todo.id)}> {"Delete"->React.string} </button>
    <span> {todo.title->React.string} </span>
    <input type_="checkbox" checked={todo.checked} readOnly={true} />
  </li>
}
