fx_version 'cerulean'
games { 'gta5' }

author 'Sm1Ly'
description 'Easly built restfull apis for you fx server.'
version 'v1.0.0-beta'

server_only 'yes'

-- load the RestFX library
server_scripts {
	".conf/*.lua",
	"build/modules/*.js",
	"build/**/*.lua"
}