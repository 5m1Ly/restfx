fx_version 'cerulean'
games { 'rdr3', 'gta5' }

author 'Sm1Ly'
description 'A resource you can use to make api calls to you server'
version '2.0.4'

shared_scripts {

	"lib/config/**/*.lua", -- load api config resources
	"lib/core/**/*.lua", -- load api core resources

}

server_scripts {

	"lib/system/**/*.lua", -- load api system resources

	"source/check_version.lua" -- load api server side exports

}

client_scripts {

	"lib/world/**/*.lua", -- load api world resources

}