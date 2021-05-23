import React from 'react'
const PlanetNew = (props) => {
    const { sub } = props
    return(
        <div>
            <h1>PlanetNew Page</h1>
            <p>Sub is {sub.name}</p>
            <p>Sub id is {sub.id}</p>
        </div>
    )
}
export default PlanetNew