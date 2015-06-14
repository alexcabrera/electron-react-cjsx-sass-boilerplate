React = require 'react'

Header = require '../layouts/Header.cjsx'

module.exports = React.createClass
    displayName: 'Main'
    render: ->

        <div className='Main____'>
            <div className='_AppHeader__'>
                <Header />
            </div>
        </div>
