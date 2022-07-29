fx_version 'cerulean'
games { 'gta5' }

author 'Sm1Ly'
description 'Easly built restfull apis for you fx server.'
version '2.0.3'

server_only 'yes'

-- load the RestFX library
server_scripts {
	".ini/*.lua",
	"build/modules/*.js",
	"build/**/*.lua",
	"lib/RestFX.lua"
}