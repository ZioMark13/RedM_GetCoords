fx_version 'cerulean'
game 'rdr3'

author 'ZioMark'
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'
description 'Coords system for RedM with NUI interface'

client_scripts {
	'client/main.lua'
}

server_scripts {
	'server/main.lua'
}
ui_page 'html/index.html'

files {
	'html/index.html',
	'html/script.js',
	'html/style.css',
}

shared_scripts {
	'@libs/lib/utils.lua',
}