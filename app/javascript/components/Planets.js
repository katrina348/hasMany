import React from 'react'
const Planets = (props) => {
    const { planets } = props

    const renderPlanets = () => {

        return planets.map( planet => {

            return (
                <div>
                    <h1>{planet.name}</h1>
                    <a href={`/planets/${planet.id}`}>show</a>
                    <a href={`/planets/${planet.id}/edit`}>edit</a>
                    <a href={`/planets/${planet.id}`} data-method='delete'>delete</a>
                </div>
            )
        })
    } 
    return(
        <div>
            <h1>Planet component here</h1>
            {renderPlanets()}
        </div>
    )
}
export default Planets