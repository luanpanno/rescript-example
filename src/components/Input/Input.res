@react.component
let make = (~addTodo) => {
  let (value, setValue) = React.useState(_ => "")

  let handleChange = evt => ReactEvent.Form.target(evt)["value"]->setValue

  let handleAddTodo = _ => {
    addTodo(value)
    setValue(_ => "")
  }

  <div>
    <input type_="text" placeholder="Insert a todo" value onChange={handleChange} />
    <button onClick={handleAddTodo}> {"Add"->React.string} </button>
  </div>
}
