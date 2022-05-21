fx_version 'cerulean'
games { 'rdr3', 'gta5' }

author 'Sm1Ly'
description 'A resource you can use to make api calls to you server'
version '2.0.4'

shared_scripts {
	"@fsx-core/libs/table.lua",
	"@fsx-core/libs/string.lua",
}

server_scripts {
	"dist/library.lua", -- load api system resources
	"dist/integrity.lua" -- load api server side exports
}