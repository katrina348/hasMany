import React from 'react'

const Planet = (props) => {

  return(
    <>
      <h1>planet component</h1>
      <h3>{name}</h3>
      <p>created: {created_at}, id: {id}</p>
      <a href="/">back</a>
    </>
  )
}
export default Planet