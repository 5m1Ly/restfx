fx_version 'cerulean'
games { 'rdr3', 'gta5' }

author 'Sm1Ly'
description 'A resource you can use to make api calls to you server'
version '1.4'
stay_up_to_date 'true'

server_scripts {

	-- http status codes
	"config/status-codes.lua",

	-- shared meta methods
	"lib/handlers/meta/*.lua",

	-- routing class mimics
	"lib/handlers/*.lua",

	-- api class mimic
	"lib/api.lua",

	-- check the api version
	"src/vcheck.lua",

	-- use api class
	"main.lua"

}