import React from 'react'
const PlanetEdit = (props) => {
    const { sub } = props
    return(
        <div>
            <h1>PlanetEdit Page</h1>
            <p>Sub is {sub.name}</p>
            <p>Sub id is {sub.id}</p>
        </div>
    )
}
export default PlanetEdit