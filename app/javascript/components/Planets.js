import React from 'react'
const Planets = (props) => {
    const { planet } = props
    return(
        <div>
            <h1>Planets Page</h1>
            <p>planet is {planet.name}</p>
            <p>planet id is {planet.id}</p>
        </div>
    )
}
export default Planets