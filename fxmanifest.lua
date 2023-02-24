fx_version                  'cerulean'
use_experimental_fxv2_oal   'yes'
lua54                       'yes'
game                        'gta5'


name                        'MI_SafeSpace'
author                      'MIAgimir'
version                     '0.0.1'
repository                  'https://github.com/MIAgimir/MI_SafeSpace'
description                 'Ox_Lib based script for creating server safe zones'


dependencies {
	'/server:6116',
	'/onesync',
	'oxmysql',
	'ox_lib',
}

shared_scripts {
	'@ox_lib/init.lua',
}

shared_scripts {
	'shared/config.lua'
}

client_scripts {
	'client/main.lua'
}
