fx_version 'cerulean'
games { 'rdr3', 'gta5' }

author 'Sm1Ly'
description 'A resource you can use to make api calls to you server'
version '2.0.1'
stay_up_to_date 'true'

server_scripts {

	-- load library
	"dist/library.lua",

	-- load export system
	"dist/exports.lua",

	-- load test file
	"src/server/main.lua"

}