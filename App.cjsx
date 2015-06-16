app 			= require 'app'
BrowserWindow	= require 'browser-window'
CrashReporter   = require 'crash-reporter'
React 			= require 'react'

CrashReporter.start()
main_window = null

app.on 'window-all-closed', () ->
	if process.platform !== 'darwin' then app.quit()

app.on 'ready', () ->
	main_window = new BrowserWindow
		width		: 640
		height 		: 480
		min-width 	: 640
		min-height	: 480
		frame 		: true

	main_window.loadUrl "file://#{ __dirname }/index.html"
	main_window.on 'closed', () ->
		main_window = null
