@react.component
let make = () => {
  <li>
    <button> {"Delete"->React.string} </button>
    <span> {"Todo"->React.string} </span>
    <input type_="checkbox" />
  </li>
}
