fx_version 'cerulean'
games { 'rdr3', 'gta5' }

author 'Sm1Ly'
description 'A resource you can use to make api calls to you server'
version '1.0.0'

server_scripts {

	-- http status codes
	"config/status-codes.lua",

	-- shared methods
	"server/api/routers/methdos/split.lua",
	"server/api/routers/methdos/tostring.lua",

	-- routing class mimics
	"server/api/routers/response.lua",
	"server/api/routers/parameter.lua",
	"server/api/routers/paths.lua",
	"server/api/routers/router.lua",

	-- api class mimic
	"server/api/api.lua",

	-- use api class
	"server/main.lua"

}