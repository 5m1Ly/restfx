fx_version 'cerulean'
games { 'gta5' }

author 'Sm1Ly'
description 'fsx-engine part | used for building fxserver rest apis'
version '2.0.4'

lua54 'yes'
server_only 'yes'

server_scripts {

	"@fsx-core/libs/table.lua",
	"@fsx-core/libs/string.lua",

	"dist/library.lua",
	"dist/integrity.lua"

}

dependency 'fsx-core'