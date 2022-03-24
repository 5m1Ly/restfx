fx_version 'cerulean'
games { 'rdr3', 'gta5' }

author 'Sm1Ly'
description 'A resource you can use to make api calls to you server'
version '1.0.0'

server_scripts {
	"config/status-codes.lua",
	"server/api/response.lua",
	"server/api/paths.lua",
	"server/api/router.lua",
	"server/main.lua"
}