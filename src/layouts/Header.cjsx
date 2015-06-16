React = require 'react'

Debug = require '../components/Debug.cjsx'

module.exports = React.createClass
    displayName: 'Header'
    render: ->

        <header className='Header__'>
            <Debug msg='A Debug component in the Header layout' />
        </header>
