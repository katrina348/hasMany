import React from 'react'
const Planet = (props) => {
    const { sub } = props
    return(
        <div>
            <h1>Planet Page</h1>
            <p>Sub is {sub.name}</p>
            <p>Sub id is {sub.id}</p>
        </div>
    )
}
export default Planet