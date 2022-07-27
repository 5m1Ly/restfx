fx_version 'cerulean'
games { 'gta5' }

author 'Sm1Ly'
description 'Easly built restfull apis for you fx server.'
version '2.0.3'

lua54 'yes'
server_only 'yes'

-- load the RestFX library
server_script {
	"dist/*.lua",
	"lib/RestFX.lua"
}

-- load files for your restfull api
server_scripts { "api/**/*.lua" }