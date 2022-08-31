@react.component
let make = (~addTodo) => {
  let (value, setValue) = React.useState(_ => "")

  let handleChange = evt => ReactEvent.Form.target(evt)["value"]->setValue

  <div>
    <input type_="text" onChange={handleChange} />
    <button onClick={_ => addTodo(value)}> {"Add"->React.string} </button>
  </div>
}
