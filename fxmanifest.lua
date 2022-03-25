fx_version 'cerulean'
games { 'rdr3', 'gta5' }

author 'Sm1Ly'
description 'A resource you can use to make api calls to you server'
version '1.0.0'

server_scripts {

	-- http status codes
	"config/status-codes.lua",

	-- shared methods
	"server/lib/handlers/methods/*.lua",

	-- routing class mimics
	"server/lib/handlers/*.lua",

	-- api class mimic
	"server/lib/api.lua",

	-- use api class
	"server/main.lua"

}