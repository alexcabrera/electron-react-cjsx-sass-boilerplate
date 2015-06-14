(
    () ->
        React  = require 'react'
        Main   = require './windows/Main.cjsx'
        remote = window.require 'remote'

        window.React = React
        React.render <Main />, document.body
)()
