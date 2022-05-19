Fsx = Fsx or {}
Fsx.config = Fsx.config or {}
Fsx.config.games = Fsx.config.games or {}
Fsx.config.games.gtav = Fsx.config.games.gtav or {}
Fsx.config.games.gtav.vehicles = Fsx.config.games.gtav.vehicles or {}

-- vehicle data and other info comes from
-- https://www.gtabase.com/grand-theft-auto-v/vehicles/
-- https://gtahash.ru/car/
-- https://gta.fandom.com/wiki/Vehicles_in_GTA_Online

-- contains all gta vehicles
Fsx.config.games.gtav.vehicles.list = {

	-- unknown version need to be searched for and tested
	{ version = '1.00', build = 1604, blacklist = false, hash = 1229411063, 	cat = 'helicopters', 				brand = 'unknown', 		model = 'seasparrow2', 		name = 'Sparrow' 						}, -- 
	{ version = '1.00', build = 1604, blacklist = false, hash = 1593933419, 	cat = 'helicopters', 				brand = 'unknown', 		model = 'seasparrow3', 		name = 'Sparrow' 						}, -- 
	{ version = '1.00', build = 1604, blacklist = false, hash = 1086534307, 	cat = 'motorcycles', 				brand = 'maibatsu', 	model = 'manchez2', 		name = 'Manchez' 						}, -- 
	{ version = '1.00', build = 1604, blacklist = false, hash = 908897389, 		cat = 'boats', 						brand = 'lampadati', 	model = 'toro2', 			name = 'Toro' 							}, -- 
	{ version = '1.00', build = 1604, blacklist = false, hash = 437538602, 		cat = 'boats', 						brand = 'pegassi', 		model = 'speeder2', 		name = 'Speeder' 						}, -- 
	{ version = '1.00', build = 1604, blacklist = false, hash = -311022263, 	cat = 'boats', 						brand = 'speedophile', 	model = 'seashark3', 		name = 'Seashark' 						}, -- 
	{ version = '1.00', build = 1604, blacklist = false, hash = 1448677353, 	cat = 'boats', 						brand = 'shitzu', 		model = 'tropic2', 			name = 'Tropic' 						}, -- 
	{ version = '1.00', build = 1604, blacklist = false, hash = 872704284, 		cat = 'sports', 					brand = 'karin', 		model = 'sultan2', 			name = 'Sultan Custom' 					}, -- 
	{ version = '1.01', build = 1604, blacklist = false, hash = 544021352, 		cat = 'sports', 					brand = 'hijak', 		model = 'khamelion', 		name = 'Khamelion' 						}, -- 
	{ version = '1.52', build = 2189, blacklist = false, hash = 837858166, 		cat = 'helicopters', 				brand = 'western', 		model = 'annihilator', 		name = 'Annihilator' 					}, -- 
	{ version = '1.01', build = 1604, blacklist = false, hash = -2098947590, 	cat = 'sportsclassics', 			brand = 'grotti', 		model = 'stingergt', 		name = 'Stinger GT' 					}, -- 
	{ version = '1.01', build = 1604, blacklist = false, hash = 509498602, 		cat = 'boats', 						brand = 'nagasaki', 	model = 'dinghy3', 			name = 'Dinghy (4-seater)' 				}, -- 
	{ version = '1.01', build = 1604, blacklist = false, hash = 867467158, 		cat = 'boats', 						brand = 'nagasaki', 	model = 'dinghy4', 			name = 'Dinghy (4-seater)' 				}, -- 

	-- GTAV 1.01 | Game Build 1604 | 251 vehicles | Game Launch
	{ version = '1.01', build = 1604, blacklist = false, hash = 1032823388, 	cat = 'sports', 					brand = 'obey', 		model = 'ninef', 			name = '9F' 							}, -- 1
	{ version = '1.01', build = 1604, blacklist = false, hash = -1461482751, 	cat = 'sports', 					brand = 'obey', 		model = 'ninef2', 			name = '9F Cabrio' 						}, -- 2
	{ version = '1.01', build = 1604, blacklist = false, hash = -344943009, 	cat = 'compacts', 					brand = 'dinka', 		model = 'blista', 			name = 'Blista' 						}, -- 3
	{ version = '1.01', build = 1604, blacklist = false, hash = -1809822327, 	cat = 'sedans', 					brand = 'declasse', 	model = 'asea', 			name = 'Asea' 							}, -- 4
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'asea2', 			name = '' 								}, -- 5
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'asea2', 			name = '' 								}, -- 6
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'bus', 				name = '' 								}, -- 7
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'armytanker', 		name = '' 								}, -- 8
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'armytrailer', 		name = '' 								}, -- 9
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'armytrailer2', 	name = '' 								}, -- 10
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'freighttrailer', 	name = '' 								}, -- 11
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'coach', 			name = '' 								}, -- 12
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'airbus', 			name = '' 								}, -- 13
	{ version = '1.01', build = 1604, blacklist = false, hash = -1903012613, 	cat = 'sedans', 					brand = 'karin', 		model = 'asterope', 		name = 'Asterope' 						}, -- 14
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'airtug', 			name = '' 								}, -- 15
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'ambulance', 		name = '' 								}, -- 16
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'barracks', 		name = '' 								}, -- 17
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'barracks2', 		name = '' 								}, -- 18
	{ version = '1.01', build = 1604, blacklist = false, hash = -808831384, 	cat = 'suvs', 						brand = 'gallivanter', 	model = 'baller', 			name = 'Baller' 						}, -- 19
	{ version = '1.01', build = 1604, blacklist = false, hash = 142944341, 		cat = 'suvs', 						brand = 'gallivanter', 	model = 'baller2', 			name = 'Baller II' 						}, -- 20
	{ version = '1.01', build = 1604, blacklist = false, hash = 850565707, 		cat = 'suvs', 						brand = 'karin', 		model = 'bjxl', 			name = 'BeeJay XL' 						}, -- 21
	{ version = '1.01', build = 1604, blacklist = false, hash = -1041692462, 	cat = 'sports', 					brand = 'bravado', 		model = 'banshee', 			name = 'Banshee' 						}, -- 22
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'benson', 			name = '' 								}, -- 23
	{ version = '1.01', build = 1604, blacklist = false, hash = 1126868326, 	cat = 'offroad', 					brand = 'Bf', 			model = 'bfinjection', 		name = 'Injection' 						}, -- 24
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'biff', 			name = '' 								}, -- 25
	{ version = '1.01', build = 1604, blacklist = false, hash = -2128233223, 	cat = 'offroad', 					brand = 'nagasaki', 	model = 'blazer', 			name = 'Blazer' 						}, -- 26
	{ version = '1.01', build = 1604, blacklist = false, hash = -48031959, 		cat = 'offroad', 					brand = 'nagasaki', 	model = 'blazer2', 			name = 'Blazer Lifeguard' 				}, -- 27
	{ version = '1.01', build = 1604, blacklist = false, hash = -1269889662, 	cat = 'offroad', 					brand = 'nagasaki', 	model = 'blazer3', 			name = 'Blazer Hot Rod' 				}, -- 28
	{ version = '1.01', build = 1604, blacklist = false, hash = -16948145, 		cat = 'vans', 						brand = 'bravado', 		model = 'bison', 			name = 'Bison' 							}, -- 29
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'bison2', 			name = '' 								}, -- 30
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'bison3', 			name = '' 								}, -- 31
	{ version = '1.01', build = 1604, blacklist = false, hash = -1987130134, 	cat = 'vans', 						brand = 'brute', 		model = 'boxville', 		name = 'Boxville (LSDWP)' 				}, -- 32
	{ version = '1.01', build = 1604, blacklist = false, hash = -233098306, 	cat = 'vans', 						brand = 'brute', 		model = 'boxville2', 		name = 'Boxville (Go Postal)' 			}, -- 33
	{ version = '1.00', build = 1604, blacklist = false, hash = 121658888, 		cat = 'vans', 						brand = 'brute', 		model = 'boxville3', 		name = 'Boxville 3' 					}, -- 34
	{ version = '1.01', build = 1604, blacklist = false, hash = 1069929536, 	cat = 'vans', 						brand = 'vapid', 		model = 'bobcatxl', 		name = 'Bobcat XL' 						}, -- 35
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'bodhi2', 			name = '' 								}, -- 36
	{ version = '1.01', build = 1604, blacklist = false, hash = -682211828, 	cat = 'muscle', 					brand = 'albany', 		model = 'buccaneer', 		name = 'Buccaneer' 						}, -- 37
	{ version = '1.01', build = 1604, blacklist = false, hash = -304802106, 	cat = 'sports', 					brand = 'bravado', 		model = 'buffalo', 			name = 'Buffalo' 						}, -- 38
	{ version = '1.01', build = 1604, blacklist = false, hash = 736902334, 		cat = 'sports', 					brand = 'bravado', 		model = 'buffalo2', 		name = 'Buffalo S' 						}, -- 39
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'bulldozer', 		name = '' 								}, -- 40
	{ version = '1.01', build = 1604, blacklist = false, hash = -1696146015, 	cat = 'super', 						brand = 'vapid', 		model = 'bullet', 			name = 'Bullet' 						}, -- 41
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'blimp', 			name = '' 								}, -- 42
	{ version = '1.01', build = 1604, blacklist = false, hash = -1346687836, 	cat = 'vans', 						brand = 'declasse', 	model = 'burrito', 			name = 'Burrito (Livery)' 				}, -- 43
	{ version = '1.01', build = 1604, blacklist = false, hash = -907477130, 	cat = 'vans', 						brand = 'declasse', 	model = 'burrito2', 		name = 'Bugstars Burrito' 				}, -- 44
	{ version = '1.01', build = 1604, blacklist = false, hash = -1743316013, 	cat = 'vans', 						brand = 'declasse', 	model = 'burrito3', 		name = 'Burrito' 						}, -- 45
	{ version = '1.01', build = 1604, blacklist = false, hash = 893081117, 		cat = 'vans', 						brand = 'declasse', 	model = 'burrito4', 		name = 'Burrito' 						}, -- 46
	{ version = '1.01', build = 1604, blacklist = false, hash = 1132262048, 	cat = 'vans', 						brand = 'declasse', 	model = 'burrito5', 		name = 'Burrito (ny)' 					}, -- 47
	{ version = '1.01', build = 1604, blacklist = false, hash = 2006918058, 	cat = 'suvs', 						brand = 'albany', 		model = 'cavalcade', 		name = 'Cavalcade' 						}, -- 48
	{ version = '1.01', build = 1604, blacklist = false, hash = -789894171, 	cat = 'suvs', 						brand = 'albany', 		model = 'cavalcade2', 		name = 'Cavalcade' 						}, -- 49
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'policet', 			name = '' 								}, -- 50
	{ version = '1.01', build = 1604, blacklist = false, hash = -1745203402, 	cat = 'vans', 						brand = 'declasse', 	model = 'gburrito', 		name = 'Lost Gang Burrito' 				}, -- 51
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'cablecar', 		name = '' 								}, -- 52
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'caddy', 			name = '' 								}, -- 53
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'caddy2', 			name = '' 								}, -- 54
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'camper', 			name = '' 								}, -- 55
	{ version = '1.01', build = 1604, blacklist = false, hash = 2072687711, 	cat = 'sports', 					brand = 'grotti', 		model = 'carbonizzare', 	name = 'Carbonizzare' 					}, -- 56
	{ version = '1.01', build = 1604, blacklist = false, hash = -1311154784, 	cat = 'super', 						brand = 'grotti', 		model = 'cheetah', 			name = 'Cheetah' 						}, -- 57
	{ version = '1.01', build = 1604, blacklist = false, hash = -1045541610, 	cat = 'sports', 					brand = 'Pfister', 		model = 'comet2', 			name = 'Comet' 							}, -- 58
	{ version = '1.01', build = 1604, blacklist = false, hash = 330661258, 		cat = 'coupes', 					brand = 'enus', 		model = 'cogcabrio', 		name = 'Cognoscenti Cabrio' 			}, -- 59
	{ version = '1.01', build = 1604, blacklist = false, hash = 108773431, 		cat = 'sports', 					brand = 'invetero', 	model = 'coquette', 		name = 'Coquette' 						}, -- 60
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'cutter', 			name = '' 								}, -- 61
	{ version = '1.01', build = 1604, blacklist = false, hash = -1543762099, 	cat = 'suvs', 						brand = 'bravado', 		model = 'gresley', 			name = 'Gresley' 						}, -- 62
	{ version = '1.01', build = 1604, blacklist = false, hash = -1130810103, 	cat = 'compacts', 					brand = 'karin', 		model = 'dilettante', 		name = 'Dilettante' 					}, -- 63
	{ version = '1.01', build = 1604, blacklist = false, hash = 1682114128, 	cat = 'compacts', 					brand = 'karin', 		model = 'dilettante2', 		name = 'Dilettante Patrol' 				}, -- 64
	{ version = '1.01', build = 1604, blacklist = false, hash = -1661854193, 	cat = 'offroad', 					brand = 'bf', 			model = 'dune', 			name = 'Dune Buggy' 					}, -- 65
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'dune2', 			name = '' 								}, -- 66
	{ version = '1.01', build = 1604, blacklist = false, hash = 37348240, 		cat = 'muscle', 					brand = 'vapid', 		model = 'hotknife', 		name = 'Hotknife' 						}, -- 67
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'dloader', 			name = '' 								}, -- 68
	{ version = '1.01', build = 1604, blacklist = false, hash = 1177543287, 	cat = 'suvs', 						brand = 'benefactor', 	model = 'dubsta', 			name = 'Dubsta' 						}, -- 69
	{ version = '1.01', build = 1604, blacklist = false, hash = -394074634, 	cat = 'suvs', 						brand = 'benefactor', 	model = 'dubsta2', 			name = 'Dubsta Luxuary' 				}, -- 70
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'dump', 			name = '' 								}, -- 71
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'rubble', 			name = '' 								}, -- 72
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'docktug', 			name = '' 								}, -- 73
	{ version = '1.01', build = 1604, blacklist = false, hash = 80636076, 		cat = 'muscle', 					brand = 'vapid', 		model = 'dominator', 		name = 'Dominator' 						}, -- 74
	{ version = '1.01', build = 1604, blacklist = false, hash = -685276541, 	cat = 'sedans', 					brand = 'albany', 		model = 'emperor', 			name = 'emperor' 						}, -- 75
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'emperor2', 		name = '' 								}, -- 76
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'emperor3', 		name = '' 								}, -- 77
	{ version = '1.01', build = 1604, blacklist = false, hash = -1291952903, 	cat = 'super', 						brand = 'overflod', 	model = 'entityxf', 		name = 'Entity XF' 						}, -- 78
	{ version = '1.01', build = 1604, blacklist = false, hash = -5153954, 		cat = 'coupes', 					brand = 'dewbauchee', 	model = 'exemplar', 		name = 'Exemplar' 						}, -- 79
	{ version = '1.01', build = 1604, blacklist = false, hash = -566387422, 	cat = 'sports', 					brand = 'annis', 		model = 'elegy2', 			name = 'Elegy RH8' 						}, -- 80
	{ version = '1.01', build = 1604, blacklist = false, hash = -591610296, 	cat = 'coupes', 					brand = 'ocelot', 		model = 'f620', 			name = 'F620' 							}, -- 81
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'fbi2', 			name = '' 								}, -- 82
	{ version = '1.01', build = 1604, blacklist = false, hash = -1647941228, 	cat = 'suvs', 						brand = 'declasse', 	model = 'fbi2', 			name = 'FIB Granger' 					}, -- 83
	{ version = '1.01', build = 1604, blacklist = false, hash = -391594584, 	cat = 'coupes', 					brand = 'lampadati', 	model = 'felon', 			name = 'Felon' 							}, -- 84
	{ version = '1.01', build = 1604, blacklist = false, hash = -89291282, 		cat = 'coupes', 					brand = 'lampadati', 	model = 'felon2', 			name = 'Felon GT' 						}, -- 85
	{ version = '1.01', build = 1604, blacklist = false, hash = -1995326987, 	cat = 'sports', 					brand = 'benefactor', 	model = 'feltzer2', 		name = 'Feltzer' 						}, -- 86
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'firetruk', 		name = '' 								}, -- 87
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'flatbed', 			name = '' 								}, -- 88
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'forklift', 		name = '' 								}, -- 89
	{ version = '1.01', build = 1604, blacklist = false, hash = -1137532101, 	cat = 'suvs', 						brand = 'fathom', 		model = 'fq2', 				name = 'FQ 2' 							}, -- 90
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'fusilade', 		name = '' 								}, -- 91
	{ version = '1.01', build = 1604, blacklist = false, hash = 1909141499, 	cat = 'sedans', 					brand = 'cheval', 		model = 'fugitive', 		name = 'Fugitive' 						}, -- 92
	{ version = '1.01', build = 1604, blacklist = false, hash = 2016857647, 	cat = 'coupes', 					brand = 'karin', 		model = 'futo', 			name = 'Futo' 							}, -- 93
	{ version = '1.01', build = 1604, blacklist = false, hash = -1775728740, 	cat = 'suvs', 						brand = 'declasse', 	model = 'granger', 			name = 'Granger' 						}, -- 94
	{ version = '1.01', build = 1604, blacklist = false, hash = -1800170043, 	cat = 'muscle', 					brand = 'bravado', 		model = 'gauntlet', 		name = 'Gauntlet' 						}, -- 95
	{ version = '1.01', build = 1604, blacklist = false, hash = 884422927, 		cat = 'suvs', 						brand = 'emperor', 		model = 'habanero', 		name = 'Habanero' 						}, -- 96
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'hauler', 			name = '' 								}, -- 97
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'handler', 			name = '' 								}, -- 98
	{ version = '1.01', build = 1604, blacklist = false, hash = 418536135, 		cat = 'super', 						brand = 'pegassi', 		model = 'infernus', 		name = 'Infernus' 						}, -- 99
	{ version = '1.01', build = 1604, blacklist = false, hash = -1289722222, 	cat = 'sedans', 					brand = 'vulcar', 		model = 'ingot', 			name = 'Ingot' 							}, -- 100
	{ version = '1.01', build = 1604, blacklist = false, hash = 886934177, 		cat = 'sedans', 					brand = 'karin', 		model = 'intruder', 		name = 'Intruder' 						}, -- 101
	{ version = '1.01', build = 1604, blacklist = false, hash = -1177863319, 	cat = 'compacts', 					brand = 'weeny', 		model = 'issi2', 			name = 'Issi' 							}, -- 102
	{ version = '1.01', build = 1604, blacklist = false, hash = -624529134, 	cat = 'coupes', 					brand = 'ocelot', 		model = 'jackal', 			name = 'Jackal' 						}, -- 103
	{ version = '1.01', build = 1604, blacklist = false, hash = -120287622, 	cat = 'vans', 						brand = 'zirconium', 	model = 'journey', 			name = 'Journey' 						}, -- 104
	{ version = '1.01', build = 1604, blacklist = false, hash = 1051415893, 	cat = 'sportsclassics', 			brand = 'dewbauchee', 	model = 'jb700', 			name = 'JB 700' 						}, -- 105
	{ version = '1.01', build = 1604, blacklist = false, hash = 1269098716, 	cat = 'suvs', 						brand = 'dundreary', 	model = 'landstalker', 		name = 'Landstalker' 					}, -- 106
	{ version = '1.01', build = 1604, blacklist = false, hash = 469291905, 		cat = 'suvs', 						brand = 'declasse', 	model = 'lguard', 			name = 'Lifeguard Granger' 				}, -- 107
	{ version = '1.01', build = 1604, blacklist = false, hash = -2124201592, 	cat = 'muscle', 					brand = 'albany', 		model = 'manana', 			name = 'Manana' 						}, -- 108
	{ version = '1.01', build = 1604, blacklist = false, hash = 914654722, 		cat = 'offroad', 					brand = 'canis', 		model = 'mesa', 			name = 'Mesa' 							}, -- 109
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'mesa2', 			name = '' 								}, -- 110
	{ version = '1.01', build = 1604, blacklist = false, hash = -2064372143, 	cat = 'offroad', 					brand = 'canis', 		model = 'mesa3', 			name = 'Mesa Merryweather' 				}, -- 111
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'crusader', 		name = '' 								}, -- 112
	{ version = '1.01', build = 1604, blacklist = false, hash = -310465116, 	cat = 'vans', 						brand = 'vapid', 		model = 'minivan', 			name = 'Minivan' 						}, -- 113
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'mixer', 			name = '' 								}, -- 114
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'mixer2', 			name = '' 								}, -- 115
	{ version = '1.01', build = 1604, blacklist = false, hash = -433375717, 	cat = 'sportsclassics', 			brand = 'pegassi', 		model = 'monroe', 			name = 'Monroe' 						}, -- 116
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'mower', 			name = '' 								}, -- 117
	{ version = '1.01', build = 1604, blacklist = false, hash = 1343932732, 	cat = 'commercial', 				brand = 'maibatsu', 	model = 'mule', 			name = 'Mule' 							}, -- 118
	{ version = '1.00', build = 1604, blacklist = false, hash = 1343932732, 	cat = 'commercial', 				brand = 'maibatsu', 	model = 'mule2', 			name = 'Mule' 							}, -- 119
	{ version = '1.01', build = 1604, blacklist = false, hash = 1348744438, 	cat = 'sedans', 					brand = 'ubermacht', 	model = 'oracle', 			name = 'Oracle' 						}, -- 120
	{ version = '1.01', build = 1604, blacklist = false, hash = -511601230, 	cat = 'coupes', 					brand = 'ubermacht', 	model = 'oracle2', 			name = 'Oracle XS' 						}, -- 121
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'packer', 			name = '' 								}, -- 122
	{ version = '1.01', build = 1604, blacklist = false, hash = -808457413, 	cat = 'suvs', 						brand = 'mammoth', 		model = 'patriot', 			name = 'Patriot' 						}, -- 123
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'pbus', 			name = '' 								}, -- 124
	{ version = '1.01', build = 1604, blacklist = false, hash = -377465520, 	cat = 'sports', 					brand = 'maibatsu', 	model = 'penumbra', 		name = 'Penumbra' 						}, -- 125
	{ version = '1.01', build = 1604, blacklist = false, hash = 1830407356, 	cat = 'sportsclassics', 			brand = 'vapid', 		model = 'peyote', 			name = 'Peyote' 						}, -- 126
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'phantom', 			name = '' 								}, -- 127
	{ version = '1.01', build = 1604, blacklist = false, hash = -2095439403, 	cat = 'muscle', 					brand = 'imponte', 		model = 'phoenix', 			name = 'Phoenix' 						}, -- 128
	{ version = '1.01', build = 1604, blacklist = false, hash = 1507916787, 	cat = 'muscle', 					brand = 'cheval', 		model = 'picador', 			name = 'Picador' 						}, -- 129
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'pounder', 			name = '' 								}, -- 130
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'police', 			name = '' 								}, -- 131
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'police2', 			name = '' 								}, -- 132
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'police3', 			name = '' 								}, -- 133
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'police4', 			name = '' 								}, -- 134
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'policeold1', 		name = '' 								}, -- 135
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'policeold2', 		name = '' 								}, -- 136
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'pony', 			name = '' 								}, -- 137
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'pony2', 			name = '' 								}, -- 138
	{ version = '1.01', build = 1604, blacklist = false, hash = -1450650718, 	cat = 'compacts', 					brand = 'bollokan', 	model = 'prairie', 			name = 'Prairie' 						}, -- 139
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'pranger', 			name = '' 								}, -- 140
	{ version = '1.01', build = 1604, blacklist = false, hash = -1883869285, 	cat = 'sedans', 					brand = 'declasse', 	model = 'premier', 			name = 'Premier' 						}, -- 141
	{ version = '1.01', build = 1604, blacklist = false, hash = -1150599089, 	cat = 'sedans', 					brand = 'albany', 		model = 'primo', 			name = 'Primo' 							}, -- 142
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'proptrailer', 		name = '' 								}, -- 143
	{ version = '1.01', build = 1604, blacklist = false, hash = 1645267888, 	cat = 'offroad', 					brand = 'declasse', 	model = 'rancherxl', 		name = 'Rancher XL' 					}, -- 144
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'rancherxl2', 		name = '' 								}, -- 145
	{ version = '1.01', build = 1604, blacklist = false, hash = -1934452204, 	cat = 'sports', 					brand = 'dewbauchee', 	model = 'rapidgt', 			name = 'Rapid GT' 						}, -- 146
	{ version = '1.01', build = 1604, blacklist = false, hash = 1737773231, 	cat = 'sports', 					brand = 'dewbauchee', 	model = 'rapidgt2', 		name = 'Rapid GT Cabrio' 				}, -- 147
	{ version = '1.01', build = 1604, blacklist = false, hash = -1651067813, 	cat = 'suvs', 						brand = 'vapid', 		model = 'radi', 			name = 'Radius' 						}, -- 148
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'ratloader', 		name = '' 								}, -- 149
	{ version = '1.01', build = 1604, blacklist = false, hash = -1207771834, 	cat = 'offroad', 					brand = 'annis', 		model = 'rebel', 			name = 'Rusty Rebel' 					}, -- 150
	{ version = '1.01', build = 1604, blacklist = false, hash = -14495224, 		cat = 'sedans', 					brand = 'dundreary', 	model = 'regina', 			name = 'Regina' 						}, -- 151
	{ version = '1.01', build = 1604, blacklist = false, hash = -2045594037, 	cat = 'offroad', 					brand = 'annis', 		model = 'rebel2', 			name = 'Rebel' 							}, -- 152
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'rentalbus', 		name = '' 								}, -- 153
	{ version = '1.01', build = 1604, blacklist = false, hash = -227741703, 	cat = 'muscle', 					brand = 'imponte', 		model = 'ruiner', 			name = 'Ruiner' 						}, -- 154
	{ version = '1.01', build = 1604, blacklist = false, hash = 1162065741, 	cat = 'vans', 						brand = 'bravado', 		model = 'rumpo', 			name = 'Rumpo' 							}, -- 155
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'rumpo2', 			name = '' 								}, -- 156
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'rhino', 			name = '' 								}, -- 157
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'riot', 			name = '' 								}, -- 158
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'ripley', 			name = '' 								}, -- 159
	{ version = '1.01', build = 1604, blacklist = false, hash = 2136773105, 	cat = 'suvs', 						brand = 'obey', 		model = 'rocoto', 			name = 'Rocoto' 						}, -- 160
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'romero', 			name = '' 								}, -- 161
	{ version = '1.01', build = 1604, blacklist = false, hash = -1685021548, 	cat = 'muscle', 					brand = 'declasse', 	model = 'sabregt', 			name = 'Sabre Turbo' 					}, -- 162
	{ version = '1.01', build = 1604, blacklist = false, hash = -599568815, 	cat = 'utility', 					brand = 'vapid', 		model = 'sadler', 			name = 'Sadler' 						}, -- 163
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'sadler2', 			name = '' 								}, -- 164
	{ version = '1.01', build = 1604, blacklist = false, hash = -1189015600, 	cat = 'offroad', 					brand = 'annis', 		model = 'sandking', 		name = 'Sandking' 						}, -- 165
	{ version = '1.01', build = 1604, blacklist = false, hash = 989381445, 		cat = 'offroad', 					brand = 'annis', 		model = 'sandking2', 		name = 'Sandking SWB' 					}, -- 166
	{ version = '1.01', build = 1604, blacklist = false, hash = -1255452397, 	cat = 'sedans', 					brand = 'benefactor', 	model = 'schafter2', 		name = 'Schafter' 						}, -- 167
	{ version = '1.01', build = 1604, blacklist = false, hash = -746882698, 	cat = 'sports', 					brand = 'benefactor', 	model = 'schwarzer', 		name = 'Schwartzer' 					}, -- 168
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'scrap', 			name = '' 								}, -- 169
	{ version = '1.01', build = 1604, blacklist = false, hash = 1221512915, 	cat = 'suvs', 						brand = 'canis', 		model = 'seminole', 		name = 'Seminole' 						}, -- 170
	{ version = '1.01', build = 1604, blacklist = false, hash = 1349725314, 	cat = 'coupes', 					brand = 'ubermacht', 	model = 'sentinel', 		name = 'Sentinel' 						}, -- 171
	{ version = '1.01', build = 1604, blacklist = false, hash = 873639469, 		cat = 'coupes', 					brand = 'ubermacht', 	model = 'sentinel2', 		name = 'Sentinel XS' 					}, -- 172
	{ version = '1.01', build = 1604, blacklist = false, hash = -1122289213, 	cat = 'coupes', 					brand = 'ubermacht', 	model = 'zion', 			name = 'Zion' 							}, -- 173
	{ version = '1.01', build = 1604, blacklist = false, hash = -1193103848, 	cat = 'coupes', 					brand = 'ubermacht', 	model = 'zion2', 			name = 'Zion Cabrio' 					}, -- 174
	{ version = '1.01', build = 1604, blacklist = false, hash = 1337041428, 	cat = 'suvs', 						brand = 'benefactor', 	model = 'serrano', 			name = 'Serrano' 						}, -- 175
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'sheriff', 			name = '' 								}, -- 176
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'sheriff2', 		name = '' 								}, -- 177
	{ version = '1.01', build = 1604, blacklist = false, hash = -810318068, 	cat = 'vans', 						brand = 'vapid', 		model = 'speedo', 			name = 'Speedo' 						}, -- 178
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'speedo2', 			name = '' 								}, -- 179
	{ version = '1.01', build = 1604, blacklist = false, hash = -1477580979, 	cat = 'sedans', 					brand = 'vapid', 		model = 'stanier', 			name = 'Stanier' 						}, -- 180
	{ version = '1.01', build = 1604, blacklist = false, hash = 1545842587, 	cat = 'sportsclassics', 			brand = 'grotti', 		model = 'stinger', 			name = 'Stinger' 						}, -- 181
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'stockade', 		name = '' 								}, -- 182
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'stockade3', 		name = '' 								}, -- 183
	{ version = '1.01', build = 1604, blacklist = false, hash = 1723137093, 	cat = 'sedans', 					brand = 'zirconium', 	model = 'stratum', 			name = 'Stratum' 						}, -- 184
	{ version = '1.01', build = 1604, blacklist = false, hash = 970598228, 		cat = 'sports', 					brand = 'karin', 		model = 'sultan', 			name = 'Sultan' 						}, -- 185
	{ version = '1.01', build = 1604, blacklist = false, hash = 1123216662, 	cat = 'sedans', 					brand = 'enus', 		model = 'superd', 			name = 'Super Diamond' 					}, -- 186
	{ version = '1.01', build = 1604, blacklist = false, hash = 384071873, 		cat = 'sports', 					brand = 'benefactor', 	model = 'surano', 			name = 'Surano' 						}, -- 187
	{ version = '1.01', build = 1604, blacklist = false, hash = 699456151, 		cat = 'vans', 						brand = 'bf', 			model = 'surfer', 			name = 'Surfer' 						}, -- 188
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'surfer2', 			name = '' 								}, -- 189
	{ version = '1.01', build = 1604, blacklist = false, hash = -1894894188, 	cat = 'sedans', 					brand = 'cheval', 		model = 'surge', 			name = 'Surge' 							}, -- 190
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'taco', 			name = '' 								}, -- 191
	{ version = '1.01', build = 1604, blacklist = false, hash = -1008861746, 	cat = 'sedans', 					brand = 'obey', 		model = 'tailgater', 		name = 'Tailgater' 						}, -- 192
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'taxi', 			name = '' 								}, -- 193
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'trash', 			name = '' 								}, -- 194
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'tractor', 			name = '' 								}, -- 195
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'tractor2', 		name = '' 								}, -- 196
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'tractor3', 		name = '' 								}, -- 197
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'graintrailer', 	name = '' 								}, -- 198
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'baletrailer', 		name = '' 								}, -- 199
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'tiptruck', 		name = '' 								}, -- 200
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'tiptruck2', 		name = '' 								}, -- 201
	{ version = '1.01', build = 1604, blacklist = false, hash = 464687292, 		cat = 'sportsclassics', 			brand = 'declasse', 	model = 'tornado', 			name = 'Tornado' 						}, -- 202
	{ version = '1.01', build = 1604, blacklist = false, hash = 1531094468, 	cat = 'sportsclassics', 			brand = 'declasse', 	model = 'tornado2', 		name = 'Tornado Cabrio' 				}, -- 203
	{ version = '1.01', build = 1604, blacklist = false, hash = 1762279763, 	cat = 'sportsclassics', 			brand = 'declasse', 	model = 'tornado3', 		name = 'Tornado' 						}, -- 204
	{ version = '1.01', build = 1604, blacklist = false, hash = -2033222435, 	cat = 'sportsclassics', 			brand = 'declasse', 	model = 'tornado4', 		name = 'Tornado Cabrio' 				}, -- 205
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'tourbus', 			name = '' 								}, -- 206
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'towtruck', 		name = '' 								}, -- 207
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'towtruck2', 		name = '' 								}, -- 208
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'utillitruck', 		name = '' 								}, -- 209
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'utillitruck2', 	name = '' 								}, -- 210
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'utillitruck3', 	name = '' 								}, -- 211
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'voodoo2', 			name = '' 								}, -- 212
	{ version = '1.01', build = 1604, blacklist = false, hash = 1777363799, 	cat = 'sedans', 					brand = 'albany', 		model = 'washington', 		name = 'Washington' 					}, -- 213
	{ version = '1.01', build = 1604, blacklist = false, hash = -1961627517, 	cat = 'sedans', 					brand = 'dundreary', 	model = 'stretch', 			name = 'Stretch' 						}, -- 214
	{ version = '1.01', build = 1604, blacklist = false, hash = 65402552, 		cat = 'vans', 						brand = 'bravado', 		model = 'youga', 			name = 'Youga' 							}, -- 215
	{ version = '1.01', build = 1604, blacklist = false, hash = 758895617, 		cat = 'sportsclassics', 			brand = 'truffade', 	model = 'ztype', 			name = 'Z-Type' 						}, -- 216
	{ version = '1.01', build = 1604, blacklist = false, hash = 788045382, 		cat = 'motorcycles', 				brand = 'maibatsu', 	model = 'sanchez', 			name = 'Sanchez (Livery)' 				}, -- 217
	{ version = '1.01', build = 1604, blacklist = false, hash = -1453280962, 	cat = 'motorcycles', 				brand = 'maibatsu', 	model = 'sanchez2', 		name = 'Sanchez' 						}, -- 218
	{ version = '1.01', build = 1604, blacklist = false, hash = -186537451, 	cat = 'cycles', 					brand = 'unknown', 		model = 'scorcher', 		name = 'Scorcher' 						}, -- 219
	{ version = '1.01', build = 1604, blacklist = false, hash = 1127861609, 	cat = 'cycles', 					brand = 'unknown', 		model = 'tribike', 			name = 'Tri-Cycles Race Bike' 			}, -- 220
	{ version = '1.01', build = 1604, blacklist = false, hash = -1233807380, 	cat = 'cycles', 					brand = 'unknown', 		model = 'tribike2', 		name = 'Tri-Cycles Race Bike' 			}, -- 221
	{ version = '1.01', build = 1604, blacklist = false, hash = -400295096, 	cat = 'cycles', 					brand = 'unknown', 		model = 'tribike3', 		name = 'TTri-Cycles Race Bike' 			}, -- 222
	{ version = '1.01', build = 1604, blacklist = false, hash = -836512833, 	cat = 'cycles', 					brand = 'unknown', 		model = 'fixter', 			name = 'Fixter' 						}, -- 223
	{ version = '1.01', build = 1604, blacklist = false, hash = 448402357, 		cat = 'cycles', 					brand = 'unknown', 		model = 'cruiser', 			name = 'Cruiser' 						}, -- 224
	{ version = '1.01', build = 1604, blacklist = false, hash = 1131912276, 	cat = 'cycles', 					brand = 'unknown', 		model = 'bmx', 				name = 'BMX' 							}, -- 225
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'policeb', 			name = '' 								}, -- 226
	{ version = '1.01', build = 1604, blacklist = false, hash = 1672195559, 	cat = 'motorcycles', 				brand = 'dinka', 		model = 'akuma', 			name = 'Akuma' 							}, -- 227
	{ version = '1.01', build = 1604, blacklist = false, hash = 11251904, 		cat = 'motorcycles', 				brand = 'nagasaki', 	model = 'carbonrs', 		name = 'Carbon RS' 						}, -- 228
	{ version = '1.01', build = 1604, blacklist = false, hash = -2140431165, 	cat = 'motorcycles', 				brand = 'western', 		model = 'bagger', 			name = 'Bagger' 						}, -- 229
	{ version = '1.01', build = 1604, blacklist = false, hash = -114291515, 	cat = 'motorcycles', 				brand = 'pegassi', 		model = 'bati', 			name = 'Bati 801' 						}, -- 230
	{ version = '1.01', build = 1604, blacklist = false, hash = -891462355, 	cat = 'motorcycles', 				brand = 'pegassi', 		model = 'bati2', 			name = 'Bati 801RR' 					}, -- 231
	{ version = '1.01', build = 1604, blacklist = false, hash = -893578776, 	cat = 'motorcycles', 				brand = 'pegassi', 		model = 'ruffian', 			name = 'Ruffian' 						}, -- 232
	{ version = '1.01', build = 1604, blacklist = false, hash = 2006142190, 	cat = 'motorcycles', 				brand = 'western', 		model = 'daemon', 			name = 'Daemon' 						}, -- 233
	{ version = '1.01', build = 1604, blacklist = false, hash = -1670998136, 	cat = 'motorcycles', 				brand = 'dinka', 		model = 'double', 			name = 'Double-T' 						}, -- 234
	{ version = '1.01', build = 1604, blacklist = false, hash = -909201658, 	cat = 'motorcycles', 				brand = 'shitzu', 		model = 'pcj', 				name = 'PCJ 600' 						}, -- 235
	{ version = '1.01', build = 1604, blacklist = false, hash = -140902153, 	cat = 'motorcycles', 				brand = 'shitzu', 		model = 'vader', 			name = 'Vader' 							}, -- 236
	{ version = '1.01', build = 1604, blacklist = false, hash = -825837129, 	cat = 'muscle', 					brand = 'declasse', 	model = 'vigero', 			name = 'Vigero' 						}, -- 237
	{ version = '1.01', build = 1604, blacklist = false, hash = 55628203, 		cat = 'motorcycles', 				brand = 'pegassi', 		model = 'faggio2', 			name = 'Faggio' 						}, -- 238
	{ version = '1.01', build = 1604, blacklist = false, hash = 301427732, 		cat = 'motorcycles', 				brand = 'lcc', 			model = 'hexer', 			name = 'Hexer' 							}, -- 239
	{ version = '1.01', build = 1604, blacklist = false, hash = 745926877, 		cat = 'helicopters', 				brand = 'nagasaki', 	model = 'buzzard', 			name = 'Buzzard Attack Chopper' 		}, -- 240
	{ version = '1.01', build = 1604, blacklist = false, hash = 745926877, 		cat = 'helicopters', 				brand = 'nagasaki', 	model = 'buzzard2', 		name = 'Buzzard' 						}, -- 241
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'cargobob', 		name = '' 								}, -- 242
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'cargobob2', 		name = '' 								}, -- 243
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'cargobob3', 		name = '' 								}, -- 244
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'skylift', 			name = '' 								}, -- 245
	{ version = '1.01', build = 1604, blacklist = false, hash = -1660661558, 	cat = 'helicopters', 				brand = 'buckingham', 	model = 'maverick', 		name = 'Maverick' 						}, -- 246
	{ version = '1.01', build = 1604, blacklist = false, hash = 353883353, 		cat = 'helicopters', 				brand = 'buckingham', 	model = 'polmav', 			name = 'Police Maverick' 				}, -- 247
	{ version = '1.01', build = 1604, blacklist = false, hash = -634879114, 	cat = 'motorcycles', 				brand = 'principe', 	model = 'nemesis', 			name = 'Nemesis' 						}, -- 248
	{ version = '1.01', build = 1604, blacklist = false, hash = 744705981, 		cat = 'helicopters', 				brand = 'maibatsu', 	model = 'frogger', 			name = 'Frogger' 						}, -- 249
	{ version = '1.01', build = 1604, blacklist = false, hash = 1949211328, 	cat = 'helicopters', 				brand = 'unknown', 		model = 'frogger2', 		name = 'Frogger' 						}, -- 250
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'cuban800', 		name = '' 								}, -- 251
	{ version = '1.01', build = 1604, blacklist = false, hash = 970356638, 		cat = 'planes', 					brand = 'unknown', 		model = 'duster', 			name = 'Duster' 						}, -- 252
	{ version = '1.01', build = 1604, blacklist = false, hash = -2122757008, 	cat = 'planes', 					brand = 'unknown', 		model = 'stunt', 			name = 'Mallard' 						}, -- 253
	{ version = '1.01', build = 1604, blacklist = false, hash = -1746576111, 	cat = 'planes', 					brand = 'jobuilt', 		model = 'mammatus', 		name = 'Mammatus' 						}, -- 254
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'jet', 				name = '' 								}, -- 255
	{ version = '1.01', build = 1604, blacklist = false, hash = -1214505995, 	cat = 'planes', 					brand = 'buckingham', 	model = 'shamal', 			name = 'Shamal' 						}, -- 256
	{ version = '1.01', build = 1604, blacklist = false, hash = 621481054, 		cat = 'planes', 					brand = 'buckingham', 	model = 'luxor', 			name = 'Luxor' 							}, -- 257
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'titan', 			name = '' 								}, -- 258
	{ version = '1.36', build = 1604, blacklist = false, hash = -440768424, 	cat = 'offroad', 					brand = 'annis', 		model = 'blazer4', 			name = 'Street Blazer' 					}, -- 259
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'cargoplane', 		name = '' 								}, -- 260
	{ version = '1.01', build = 1604, blacklist = false, hash = 400514754, 		cat = 'boats', 						brand = 'shitzu', 		model = 'squalo', 			name = 'Squalo' 						}, -- 261
	{ version = '1.01', build = 1604, blacklist = false, hash = -1043459709, 	cat = 'boats', 						brand = 'dinka', 		model = 'marquis', 			name = 'Marquis' 						}, -- 262
	{ version = '1.01', build = 1604, blacklist = false, hash = 1033245328, 	cat = 'boats', 						brand = 'nagasaki', 	model = 'dinghy', 			name = 'Dinghy (4-seater)' 				}, -- 263
	{ version = '1.01', build = 1604, blacklist = false, hash = 276773164, 		cat = 'boats', 						brand = 'nagasaki', 	model = 'dinghy2', 			name = 'Dinghy (2-seater)' 				}, -- 264
	{ version = '1.01', build = 1604, blacklist = false, hash = 861409633, 		cat = 'boats', 						brand = 'shitzu', 		model = 'jetmax', 			name = 'Jetmax' 						}, -- 265
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'predator', 		name = '' 								}, -- 266
	{ version = '1.01', build = 1604, blacklist = false, hash = 290013743, 		cat = 'boats', 						brand = 'shitzu', 		model = 'tropic', 			name = 'Tropic' 						}, -- 267
	{ version = '1.01', build = 1604, blacklist = false, hash = -1030275036, 	cat = 'boats', 						brand = 'speedophile', 	model = 'seashark', 		name = 'Seashark' 						}, -- 268
	{ version = '1.01', build = 1604, blacklist = false, hash = -616331036, 	cat = 'boats', 						brand = 'speedophile', 	model = 'seashark2', 		name = 'Seashark Lifeguard' 			}, -- 269
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'submersible', 		name = '' 								}, -- 270
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'freightcar', 		name = '' 								}, -- 271
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'freight', 			name = '' 								}, -- 272
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'freightcont1', 	name = '' 								}, -- 273
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'freightcont2', 	name = '' 								}, -- 274
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'freightgrain', 	name = '' 								}, -- 275
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'tankercar', 		name = '' 								}, -- 276
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'metrotrain', 		name = '' 								}, -- 277
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'docktrailer', 		name = '' 								}, -- 278
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'trailers', 		name = '' 								}, -- 279
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'trailers2', 		name = '' 								}, -- 280
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'trailers3', 		name = '' 								}, -- 281
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'tvtrailer', 		name = '' 								}, -- 282
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'raketrailer', 		name = '' 								}, -- 283
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'tanker', 			name = '' 								}, -- 284
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'trailerlogs', 		name = '' 								}, -- 285
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'tr2', 				name = '' 								}, -- 286
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'tr3', 				name = '' 								}, -- 287
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'tr4', 				name = '' 								}, -- 288
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'trflat', 			name = '' 								}, -- 289
	{ version = '1.01', build = 1604, blacklist = false, hash = 0, 				cat = '', 							brand = '', 			model = 'trailersmall', 	name = '' 								}, -- 290
	{ version = '1.01', build = 1604, blacklist = false, hash = -1673356438, 	cat = 'planes', 					brand = 'unknown', 		model = 'velum', 			name = 'Velum' 							}, -- 291
	{ version = '1.01', build = 1604, blacklist = false, hash = -1216765807, 	cat = 'super', 						brand = 'truffade', 	model = 'adder', 			name = 'Adder' 							}, -- 292
	{ version = '1.01', build = 1604, blacklist = false, hash = -1622444098, 	cat = 'super', 						brand = 'coil', 		model = 'voltic', 			name = 'Voltic' 						}, -- 293
	{ version = '1.01', build = 1604, blacklist = false, hash = 338562499, 		cat = 'super', 						brand = 'pegassi', 		model = 'vacca', 			name = 'Vacca' 							}, -- 294
	{ version = '1.01', build = 1604, blacklist = false, hash = -282946103, 	cat = 'boats', 						brand = 'shitzu', 		model = 'suntrap', 			name = 'Suntrap' 						}, -- 295

	-- GTAV 1.06 | Game Build 1604 |   4 vehicles | Beach Bum
	{ version = '1.06', build = 1604, blacklist = false, hash = 1488164764, 	cat = 'vans', 						brand = 'bravado', 		model = 'paradise', 		name = 'Paradise' 						}, -- 1
	{ version = '1.06', build = 1604, blacklist = false, hash = 92612664, 		cat = 'offroad', 					brand = 'canis', 		model = 'kalahari', 		name = 'Kalahari' 						}, -- 2
	{ version = '1.06', build = 1604, blacklist = false, hash = -349601129, 	cat = 'offroad', 					brand = 'bf', 			model = 'bifta', 			name = 'Bifta' 							}, -- 3
	{ version = '1.06', build = 1604, blacklist = false, hash = 231083307, 		cat = 'boats', 						brand = 'pegassi', 		model = 'speeder', 			name = 'Speeder' 						}, -- 4

	-- GTAV 1.10 | Game Build 1604 |   1 vehicles | Valentine's Day Massacre
	{ version = '1.10', build = 1604, blacklist = false, hash = 117401876, 		cat = 'sportsclassics', 			brand = 'albany', 		model = 'btype', 			name = 'Roosevelt' 						}, -- 1

	-- GTAV 1.11 | Game Build 1604 |   4 vehicles | Business
	{ version = '1.11', build = 1604, blacklist = false, hash = 408192225, 		cat = 'super', 						brand = 'grotti', 		model = 'turismor', 		name = 'Turismo R' 						}, -- 1
	{ version = '1.11', build = 1604, blacklist = false, hash = -1297672541, 	cat = 'sports', 					brand = 'dinka', 		model = 'jester', 			name = 'Jester' 						}, -- 2
	{ version = '1.11', build = 1604, blacklist = false, hash = 767087018, 		cat = 'sports', 					brand = 'albany', 		model = 'alpha', 			name = 'Alpha' 							}, -- 3
	{ version = '1.11', build = 1604, blacklist = false, hash = 1341619767, 	cat = 'planes', 					brand = 'buckingham', 	model = 'vestra', 			name = 'Vestra' 						}, -- 4

	-- GTAV 1.13 | Game Build 1604 |   4 vehicles | High Life
	{ version = '1.13', build = 1604, blacklist = false, hash = 486987393, 		cat = 'suvs', 						brand = 'enus', 		model = 'huntley', 			name = 'Huntley S' 						}, -- 1
	{ version = '1.13', build = 1604, blacklist = false, hash = -1403128555, 	cat = 'super', 						brand = 'pegassi', 		model = 'zentorno', 		name = 'Zentorno' 						}, -- 2
	{ version = '1.13', build = 1604, blacklist = false, hash = -142942670, 	cat = 'sports', 					brand = 'dewbauchee', 	model = 'massacro', 		name = 'Massacro' 						}, -- 3
	{ version = '1.13', build = 1604, blacklist = false, hash = 1836027715, 	cat = 'motorcycles', 				brand = 'dinka', 		model = 'thrust', 			name = 'Thrust' 						}, -- 4

	-- GTAV 1.14 | Game Build 1604 |   7 vehicles | I'm Not a Hipster
	{ version = '1.14', build = 1604, blacklist = false, hash = 1078682497, 	cat = 'sportsclassics', 			brand = 'lampadati', 	model = 'pigalle', 			name = 'Pigalle' 						}, -- 1
	{ version = '1.14', build = 1604, blacklist = false, hash = 1373123368, 	cat = 'sedans', 					brand = 'vulcar', 		model = 'warrener', 		name = 'Warrener' 						}, -- 2
	{ version = '1.14', build = 1604, blacklist = false, hash = 75131841, 		cat = 'sedans', 					brand = 'benefactor', 	model = 'glendale', 		name = 'Glendale' 						}, -- 3
	{ version = '1.14', build = 1604, blacklist = false, hash = -1237253773, 	cat = 'offroad', 					brand = 'annis', 		model = 'dubsta3', 			name = 'Dubsta 6x6' 					}, -- 4
	{ version = '1.14', build = 1604, blacklist = false, hash = -1205801634, 	cat = 'muscle', 					brand = 'vapid', 		model = 'blade', 			name = 'Blade' 							}, -- 5
	{ version = '1.14', build = 1604, blacklist = false, hash = 841808271, 		cat = 'compacts', 					brand = 'declasse', 	model = 'rhapsody', 		name = 'Rhapsody' 						}, -- 6
	{ version = '1.14', build = 1604, blacklist = false, hash = -431692672, 	cat = 'compacts', 					brand = 'benefactor', 	model = 'panto', 			name = 'Panto' 							}, -- 7

	-- GTAV 1.15 | Game Build 1604 |   2 vehicles | Independence Day
	{ version = '1.15', build = 1604, blacklist = false, hash = -845961253, 	cat = 'offroad', 					brand = 'vapid', 		model = 'monster', 			name = 'Liberator' 						}, -- 1
	{ version = '1.15', build = 1604, blacklist = false, hash = 743478836, 		cat = 'motorcycles', 				brand = 'western', 		model = 'sovereign', 		name = 'Sovereign' 						}, -- 2

	-- GTAV 1.16 | Game Build 1604 |   4 vehicles | SA Flight School
	{ version = '1.16', build = 1604, blacklist = false, hash = 1011753235, 	cat = 'sportsclassics', 			brand = 'invetero', 	model = 'coquette2', 		name = 'Coquette Classic' 				}, -- 1
	{ version = '1.16', build = 1604, blacklist = false, hash = 165154707, 		cat = 'planes', 					brand = 'buckingham', 	model = 'miljet', 			name = 'Miljet' 						}, -- 2
	{ version = '1.16', build = 1604, blacklist = false, hash = 1824333165, 	cat = 'planes', 					brand = 'western', 		model = 'besra', 			name = 'Besra' 							}, -- 3
	{ version = '1.16', build = 1604, blacklist = false, hash = -339587598, 	cat = 'helicopters', 				brand = 'buckingham', 	model = 'swift', 			name = 'Swift' 							}, -- 4

	-- GTAV 1.17 | Game Build 1604 |   3 vehicles | Last Team Standing
	{ version = '1.17', build = 1604, blacklist = false, hash = -1089039904, 	cat = 'sports', 					brand = 'lampadati', 	model = 'furoregt', 		name = 'Furore GT' 						}, -- 1
	{ version = '1.17', build = 1604, blacklist = false, hash = -159126838, 	cat = 'motorcycles', 				brand = 'llc', 			model = 'innovation', 		name = 'Innovation' 					}, -- 2
	{ version = '1.17', build = 1604, blacklist = false, hash = 1265391242, 	cat = 'motorcycles', 				brand = 'shitzu', 		model = 'hakuchou', 		name = 'Hakuchou' 						}, -- 3

	-- GTAV 1.18 | Game Build 1604 |  13 vehicles | PS4 & Xbox One Release
	{ version = '1.18', build = 1604, blacklist = false, hash = 237764926, 		cat = 'sports', 					brand = 'bravado', 		model = 'buffalo3', 		name = 'Sprunk Buffalo' 				}, -- 1
	{ version = '1.18', build = 1604, blacklist = false, hash = -591651781, 	cat = 'compacts', 					brand = 'dinka', 		model = 'blista3', 			name = 'Blista Go Go Monkey' 			}, -- 2
	{ version = '1.18', build = 1604, blacklist = false, hash = 1039032026, 	cat = 'compacts', 					brand = 'dinka', 		model = 'blista2', 			name = 'Blista Compact' 				}, -- 3
	{ version = '1.18', build = 1604, blacklist = false, hash = -613725916, 	cat = 'planes', 					brand = 'unknown', 		model = 'blimp2', 			name = 'Xero Blimp' 					}, -- 4
	{ version = '1.18', build = 1604, blacklist = false, hash = -901163259, 	cat = 'planes', 					brand = 'mammoth', 		model = 'dodo', 			name = 'Dodo' 							}, -- 5
	{ version = '1.18', build = 1604, blacklist = false, hash = 1233534620, 	cat = 'offroad', 					brand = 'cheval', 		model = 'marshall', 		name = 'Marshall' 						}, -- 6
	{ version = '1.18', build = 1604, blacklist = false, hash = -401643538, 	cat = 'muscle', 					brand = 'declasse', 	model = 'stalion2', 		name = 'Stallion Burgershot' 			}, -- 7
	{ version = '1.18', build = 1604, blacklist = false, hash = 1923400478, 	cat = 'muscle', 					brand = 'declasse', 	model = 'stalion', 			name = 'Stallion' 						}, -- 8
	{ version = '1.18', build = 1604, blacklist = false, hash = 349315417, 		cat = 'muscle', 					brand = 'bravado', 		model = 'gauntlet2', 		name = 'Redwood Gauntlet' 				}, -- 9
	{ version = '1.18', build = 1604, blacklist = false, hash = 723973206, 		cat = 'muscle', 					brand = 'imponte', 		model = 'dukes', 			name = 'Dukes' 							}, -- 10
	{ version = '1.18', build = 1604, blacklist = false, hash = -326143852, 	cat = 'muscle', 					brand = 'imponte', 		model = 'dukes2', 			name = 'Duke O\'Death' 					}, -- 11
	{ version = '1.18', build = 1604, blacklist = false, hash = -915704871, 	cat = 'muscle', 					brand = 'vapid', 		model = 'dominator2', 		name = 'Pißwasser Dominator' 			}, -- 12
	{ version = '1.18', build = 1604, blacklist = false, hash = -1066334226, 	cat = 'boats', 						brand = 'kraken', 		model = 'submersible2', 	name = 'Kraken' 						}, -- 13

	-- GTAV 1.19 | Game Build 1604 |   4 vehicles | Festive Surprise 2014
	{ version = '1.19', build = 1604, blacklist = false, hash = -631760477, 	cat = 'sports', 					brand = 'dewbauchee', 	model = 'massacro2', 		name = 'Massacro (Racecar)' 			}, -- 1
	{ version = '1.19', build = 1604, blacklist = false, hash = -1106353882, 	cat = 'sports', 					brand = 'dinka', 		model = 'jester2', 			name = 'Jester (Racecar)' 				}, -- 2
	{ version = '1.19', build = 1604, blacklist = false, hash = 729783779, 		cat = 'muscle', 					brand = 'vapid', 		model = 'slamvan', 			name = 'Slamvan' 						}, -- 3
	{ version = '1.19', build = 1604, blacklist = false, hash = -589178377, 	cat = 'muscle', 					brand = 'bravado', 		model = 'ratloader2', 		name = 'Rat-Truck' 						}, -- 4

	-- GTAV 1.21 | Game Build 1604 |  17 vehicles | Heists
	{ version = '1.21', build = 1604, blacklist = false, hash = 833469436, 		cat = 'muscle', 					brand = 'vapid', 		model = 'slamvan2', 		name = 'Lost Slamvan' 					}, -- 1
	{ version = '1.21', build = 1604, blacklist = false, hash = 1343932732, 	cat = {'commercial', 'vans'}, 		brand = 'maibatsu', 	model = 'mule3', 			name = 'Mule (heist)' 					}, -- 2
	{ version = '1.21', build = 1604, blacklist = false, hash = 296357396, 		cat = 'vans', 						brand = 'declasse', 	model = 'gburrito2', 		name = 'Gang Burrito' 					}, -- 3
	{ version = '1.21', build = 1604, blacklist = false, hash = 444171386, 		cat = 'vans', 						brand = 'brute', 		model = 'boxville4', 		name = 'Boxville 4' 					}, -- 4
	{ version = '1.21', build = 1604, blacklist = false, hash = 941800958, 		cat = 'sportsclassics', 			brand = 'lampadati', 	model = 'casco', 			name = 'Casco' 							}, -- 5
	{ version = '1.21', build = 1604, blacklist = false, hash = 410882957, 		cat = 'sports', 					brand = 'karin', 		model = 'kuruma2', 			name = 'Kuruma (Armored)' 				}, -- 6
	{ version = '1.21', build = 1604, blacklist = false, hash = -1372848492, 	cat = 'sports', 					brand = 'karin', 		model = 'kuruma', 			name = 'Kuruma' 						}, -- 7
	{ version = '1.21', build = 1604, blacklist = false, hash = 1077420264, 	cat = 'planes', 					brand = 'jobuilt', 		model = 'velum2', 			name = 'Velum' 							}, -- 8
	{ version = '1.21', build = 1604, blacklist = false, hash = 970385471, 		cat = 'planes', 					brand = 'mammoth', 		model = 'hydra', 			name = 'Hydra' 							}, -- 9
	{ version = '1.21', build = 1604, blacklist = false, hash = -2096818938, 	cat = 'offroad', 					brand = 'karin', 		model = 'technical', 		name = 'Technical' 						}, -- 10
	{ version = '1.21', build = 1604, blacklist = false, hash = -1860900134, 	cat = 'offroad', 					brand = 'hvy', 			model = 'insurgent', 		name = 'Insurgent Pick-up' 				}, -- 11
	{ version = '1.21', build = 1604, blacklist = false, hash = 2071877360, 	cat = 'offroad', 					brand = 'hvy', 			model = 'insurgent2', 		name = 'Insurgent' 						}, -- 12
	{ version = '1.21', build = 1604, blacklist = false, hash = 640818791, 		cat = 'motorcycles', 				brand = 'principe', 	model = 'lectro', 			name = 'Lectro' 						}, -- 13
	{ version = '1.21', build = 1604, blacklist = false, hash = 1753414259, 	cat = 'motorcycles', 				brand = 'dinka', 		model = 'enduro', 			name = 'Enduro' 						}, -- 14
	{ version = '1.21', build = 1604, blacklist = false, hash = -2107990196, 	cat = 'offroad', 					brand = 'annis', 		model = 'guardian', 		name = 'Guardian' 						}, -- 15
	{ version = '1.21', build = 1604, blacklist = false, hash = 1543134283, 	cat = 'helicopters', 				brand = 'buckingham', 	model = 'valkyrie2', 		name = 'Valkyrie (model 2)' 			}, -- 16
	{ version = '1.21', build = 1604, blacklist = false, hash = -82626025, 		cat = 'helicopters', 				brand = 'unknown', 		model = 'savage', 			name = 'Savage' 						}, -- 17

	-- GTAV 1.27 | Game Build 1604 |   6 vehicles | Ill-Gotten Gains Part 1
	{ version = '1.27', build = 1604, blacklist = false, hash = 1987142870, 	cat = 'super', 						brand = 'pegassi', 		model = 'osiris', 			name = 'Osiris' 						}, -- 1
	{ version = '1.27', build = 1604, blacklist = false, hash = -1566741232, 	cat = 'sportsclassics', 			brand = 'benefactor', 	model = 'feltzer3', 		name = 'Stirling GT' 					}, -- 2
	{ version = '1.27', build = 1604, blacklist = false, hash = -1214293858, 	cat = 'planes', 					brand = 'buckingham', 	model = 'luxor2', 			name = 'Luxor Deluxe' 					}, -- 3
	{ version = '1.27', build = 1604, blacklist = false, hash = -498054846, 	cat = 'muscle', 					brand = 'albany', 		model = 'virgo', 			name = 'Virgo' 							}, -- 4
	{ version = '1.27', build = 1604, blacklist = false, hash = 1075432268, 	cat = 'helicopters', 				brand = 'buckingham', 	model = 'swift2', 			name = 'Swift Deluxe' 					}, -- 5
	{ version = '1.27', build = 1604, blacklist = false, hash = 1581459400, 	cat = 'coupes', 					brand = 'enus', 		model = 'windsor', 			name = 'Windsor' 						}, -- 6

	-- GTAV 1.28 | Game Build 1604 |   6 vehicles | Ill-Gotten Gains Part 2
	{ version = '1.28', build = 1604, blacklist = false, hash = 1663218586, 	cat = 'super', 						brand = 'progen', 		model = 't20', 				name = 'T20' 							}, -- 1
	{ version = '1.28', build = 1604, blacklist = false, hash = -1479664699, 	cat = 'offroad', 					brand = 'annis', 		model = 'brawler', 			name = 'Brawler' 						}, -- 2
	{ version = '1.28', build = 1604, blacklist = false, hash = 784565758, 		cat = 'muscle', 					brand = 'invetero', 	model = 'coquette3', 		name = 'Coquette BlackFin' 				}, -- 3
	{ version = '1.28', build = 1604, blacklist = false, hash = 349605904, 		cat = 'muscle', 					brand = 'vapid', 		model = 'chino', 			name = 'Chino' 							}, -- 4
	{ version = '1.28', build = 1604, blacklist = false, hash = -1353081087, 	cat = 'motorcycles', 				brand = 'dinka', 		model = 'vindicator', 		name = 'Vindicator' 					}, -- 5
	{ version = '1.28', build = 1604, blacklist = false, hash = 1070967343, 	cat = 'boats', 						brand = 'lampadati', 	model = 'toro', 			name = 'Toro' 							}, -- 6

	-- GTAV 1.30 | Game Build 1604 |   2 vehicles | Halloween Surprise
	{ version = '1.30', build = 1604, blacklist = false, hash = -831834716, 	cat = 'sportsclassics', 			brand = 'albany', 		model = 'btype2', 			name = 'Fränken Stange' 				}, -- 1
	{ version = '1.30', build = 1604, blacklist = false, hash = 2068293287, 	cat = 'muscle', 					brand = 'albany', 		model = 'lurcher', 			name = 'Lurcher' 						}, -- 2

	-- GTAV 1.30 | Game Build 1604 |   8 vehicles | Lowriders
	{ version = '1.30', build = 1604, blacklist = false, hash = -2040426790, 	cat = 'sedans', 					brand = 'albany', 		model = 'primo2', 			name = 'Primo Custom' 					}, -- 1
	{ version = '1.30', build = 1604, blacklist = false, hash = 2006667053, 	cat = 'muscle', 					brand = 'declasse', 	model = 'voodoo', 			name = 'Voodoo Custom' 					}, -- 2
	{ version = '1.30', build = 1604, blacklist = false, hash = 1896491931, 	cat = 'muscle', 					brand = 'declasse', 	model = 'moonbeam2', 		name = 'Moonbeam Custom' 				}, -- 3
	{ version = '1.30', build = 1604, blacklist = false, hash = 525509695, 		cat = 'muscle', 					brand = 'declasse', 	model = 'moonbeam', 		name = 'Moonbeam' 						}, -- 4
	{ version = '1.30', build = 1604, blacklist = false, hash = -1790546981, 	cat = 'muscle', 					brand = 'willard', 		model = 'faction2', 		name = 'Faction Custom' 				}, -- 5
	{ version = '1.30', build = 1604, blacklist = false, hash = -2119578145, 	cat = 'muscle', 					brand = 'willard', 		model = 'faction', 			name = 'Faction' 						}, -- 6
	{ version = '1.30', build = 1604, blacklist = false, hash = -1361687965, 	cat = 'muscle', 					brand = 'vapid', 		model = 'chino2', 			name = 'Chino Custom' 					}, -- 7
	{ version = '1.30', build = 1604, blacklist = false, hash = -1013450936, 	cat = 'muscle', 					brand = 'albany', 		model = 'buccaneer2', 		name = 'Buccaneer Custom' 				}, -- 8

	-- GTAV 1.31 | Game Build 1604 |  18 vehicles | Executives and Other Criminals
	{ version = '1.31', build = 1604, blacklist = false, hash = 666166960, 		cat = 'suvs', 						brand = 'gallivanter', 	model = 'baller6', 			name = 'Baller LE LWB (Armored)' 		}, -- 1
	{ version = '1.31', build = 1604, blacklist = false, hash = 634118882, 		cat = 'suvs', 						brand = 'gallivanter', 	model = 'baller4', 			name = 'Baller LE LWB' 					}, -- 2
	{ version = '1.31', build = 1604, blacklist = false, hash = 470404958, 		cat = 'suvs', 						brand = 'gallivanter', 	model = 'baller5', 			name = 'Baller LE (Armored)' 			}, -- 3
	{ version = '1.31', build = 1604, blacklist = false, hash = 1878062887, 	cat = 'suvs', 						brand = 'gallivanter', 	model = 'baller3', 			name = 'Baller LE' 						}, -- 4
	{ version = '1.31', build = 1604, blacklist = false, hash = -1660945322, 	cat = 'sportsclassics', 			brand = 'declasse', 	model = 'mamba', 			name = 'Mamba' 							}, -- 5
	{ version = '1.31', build = 1604, blacklist = false, hash = 1102544804, 	cat = 'sports', 					brand = 'bravado', 		model = 'verlierer2', 		name = 'Verlierer' 						}, -- 6
	{ version = '1.31', build = 1604, blacklist = false, hash = -1485523546, 	cat = 'sedans', 					brand = 'benefactor', 	model = 'schafter3', 		name = 'Schafter V12' 					}, -- 7
	{ version = '1.31', build = 1604, blacklist = false, hash = 1489967196, 	cat = 'sedans', 					brand = 'benefactor', 	model = 'schafter4', 		name = 'Schafter LWB' 					}, -- 8
	{ version = '1.31', build = 1604, blacklist = false, hash = -114627507, 	cat = 'sedans', 					brand = 'benefactor', 	model = 'limo2', 			name = 'Turreted Limo' 					}, -- 9
	{ version = '1.31', build = 1604, blacklist = false, hash = -888242983, 	cat = 'sedans', 					brand = 'benefactor', 	model = 'schafter5', 		name = 'Schafter V12 (Armored)' 		}, -- 10
	{ version = '1.31', build = 1604, blacklist = false, hash = 1922255844, 	cat = 'sedans', 					brand = 'benefactor', 	model = 'schafter6', 		name = 'Schafter LWB (Armored)' 		}, -- 11
	{ version = '1.31', build = 1604, blacklist = false, hash = 704435172, 		cat = 'sedans', 					brand = 'enus', 		model = 'cog552', 			name = 'Cognoscenti 55 (Armored)' 		}, -- 12
	{ version = '1.31', build = 1604, blacklist = false, hash = 906642318, 		cat = 'sedans', 					brand = 'enus', 		model = 'cog55', 			name = 'Cognoscenti 55' 				}, -- 13
	{ version = '1.31', build = 1604, blacklist = false, hash = -604842630, 	cat = 'sedans', 					brand = 'enus', 		model = 'cognoscenti2', 	name = 'Cognoscenti (Armored)' 			}, -- 14
	{ version = '1.31', build = 1604, blacklist = false, hash = -2030171296, 	cat = 'sedans', 					brand = 'enus', 		model = 'cognoscenti', 		name = 'Cognoscenti' 					}, -- 15
	{ version = '1.31', build = 1604, blacklist = false, hash = -1943285540, 	cat = 'muscle', 					brand = 'imponte', 		model = 'nightshade', 		name = 'Nightshade' 					}, -- 16
	{ version = '1.31', build = 1604, blacklist = false, hash = -1671539132, 	cat = 'helicopters', 				brand = 'buckingham', 	model = 'supervolito2', 	name = 'SuperVolito Carbon' 			}, -- 17
	{ version = '1.31', build = 1604, blacklist = false, hash = 710198397, 		cat = 'helicopters', 				brand = 'buckingham', 	model = 'supervolito', 		name = 'SuperVolito' 					}, -- 18

	-- GTAV 1.31 | Game Build 1604 |   1 vehicles | Festive Surprise 2015
	{ version = '1.31', build = 1604, blacklist = false, hash = 972671128, 		cat = 'muscle', 					brand = 'declasse', 	model = 'tampa', 			name = 'Tampa' 							}, -- 1

	-- GTAV 1.32 | Game Build 1604 |   1 vehicles | Be My Valentine
	{ version = '1.32', build = 1604, blacklist = false, hash = -602287871, 	cat = 'sportsclassics', 			brand = 'albany', 		model = 'btype3', 			name = 'Roosevelt Valor' 				}, -- 1

	-- GTAV 1.32 | Game Build 1604 |   2 vehicles | January 2016
	{ version = '1.32', build = 1604, blacklist = false, hash = -295689028, 	cat = 'super', 						brand = 'karin', 		model = 'sultanrs', 		name = 'Sultan RS' 						}, -- 1
	{ version = '1.32', build = 1604, blacklist = false, hash = 633712403, 		cat = 'super', 						brand = 'bravado', 		model = 'banshee2', 		name = 'Banshee 900R' 					}, -- 2

	-- GTAV 1.33 | Game Build 1604 |   7 vehicles | Lowriders: Custom Classics
	{ version = '1.33', build = 1604, blacklist = false, hash = 223258115, 		cat = 'muscle', 					brand = 'declasse', 	model = 'sabregt2', 		name = 'Sabre Turbo Custom' 			}, -- 1
	{ version = '1.33', build = 1604, blacklist = false, hash = -1126264336, 	cat = 'vans', 						brand = 'vapid', 		model = 'minivan2', 		name = 'Minivan Custom' 				}, -- 2
	{ version = '1.33', build = 1604, blacklist = false, hash = -1797613329, 	cat = 'sportsclassics', 			brand = 'declasse', 	model = 'tornado5', 		name = 'Tornado Custom' 				}, -- 3
	{ version = '1.33', build = 1604, blacklist = false, hash = -899509638, 	cat = 'muscle', 					brand = 'dundreary', 	model = 'virgo2', 			name = 'Virgo Classic Custom' 			}, -- 4
	{ version = '1.33', build = 1604, blacklist = false, hash = 16646064, 		cat = 'muscle', 					brand = 'dundreary', 	model = 'virgo3', 			name = 'Virgo Classic' 					}, -- 5
	{ version = '1.33', build = 1604, blacklist = false, hash = 1119641113, 	cat = 'muscle', 					brand = 'vapid', 		model = 'slamvan3', 		name = 'Slamvan Custom' 				}, -- 6
	{ version = '1.33', build = 1604, blacklist = false, hash = -2039755226, 	cat = 'muscle', 					brand = 'willard', 		model = 'faction3', 		name = 'Faction Custom Donk' 			}, -- 7

	-- GTAV 1.34 | Game Build 1604 |  14 vehicles | Further Adventures in Finance and Felony
	{ version = '1.34', build = 1604, blacklist = false, hash = -1757836725, 	cat = 'sports', 					brand = 'dewbauchee', 	model = 'seven70', 			name = 'Seven-70' 						}, -- 1
	{ version = '1.34', build = 1604, blacklist = false, hash = -1829802492, 	cat = 'super', 						brand = 'pfister', 		model = 'pfister811', 		name = '811' 							}, -- 2
	{ version = '1.34', build = 1604, blacklist = false, hash = 2123327359, 	cat = 'super', 						brand = 'grotti', 		model = 'prototipo', 		name = 'X80 Proto' 						}, -- 3
	{ version = '1.34', build = 1604, blacklist = false, hash = 1475773103, 	cat = 'vans', 						brand = 'bravado', 		model = 'rumpo3', 			name = 'Rumpo Custom' 					}, -- 4
	{ version = '1.34', build = 1604, blacklist = false, hash = 3862958888, 	cat = 'suvs', 						brand = 'benefactor', 	model = 'xls2', 			name = 'XLS (Armored)' 					}, -- 5
	{ version = '1.34', build = 1604, blacklist = false, hash = 1203490606, 	cat = 'suvs', 						brand = 'benefactor', 	model = 'xls', 				name = 'XLS' 							}, -- 6
	{ version = '1.34', build = 1604, blacklist = false, hash = 234062309, 		cat = 'super', 						brand = 'pegassi', 		model = 'reaper', 			name = 'Reaper' 						}, -- 7
	{ version = '1.34', build = 1604, blacklist = false, hash = 1426219628, 	cat = 'super', 						brand = 'vapid', 		model = 'fmj', 				name = 'FMJ' 							}, -- 8
	{ version = '1.34', build = 1604, blacklist = false, hash = 1274868363, 	cat = 'sports', 					brand = 'grotti', 		model = 'bestiagts', 		name = 'Bestia GTS' 					}, -- 9
	{ version = '1.34', build = 1604, blacklist = false, hash = -305727417, 	cat = 'service', 					brand = 'btl', 			model = 'brickade', 		name = 'Brickade' 						}, -- 10
	{ version = '1.34', build = 1604, blacklist = false, hash = -1295027632, 	cat = 'planes', 					brand = 'buckingham', 	model = 'nimbus', 			name = 'Nimbus' 						}, -- 11
	{ version = '1.34', build = 1604, blacklist = false, hash = -1845487887, 	cat = 'helicopters', 				brand = 'buckingham', 	model = 'volatus', 			name = 'Volatus' 						}, -- 12
	{ version = '1.34', build = 1604, blacklist = false, hash = -1930048799, 	cat = 'coupes', 					brand = 'enus', 		model = 'windsor2', 		name = 'Windsor Drop' 					}, -- 13
	{ version = '1.34', build = 1604, blacklist = false, hash = -2100640717, 	cat = 'boats', 						brand = 'buckingham', 	model = 'tug', 				name = 'Tug' 							}, -- 14

	-- GTAV 1.35 | Game Build 1604 |  15 vehicles | Cunning Stunts
	{ version = '1.35', build = 1604, blacklist = false, hash = 683047626, 		cat = 'suvs', 						brand = 'vapid', 		model = 'contender', 		name = 'Contender' 						}, -- 1
	{ version = '1.35', build = 1604, blacklist = false, hash = -2103821244, 	cat = {'offroad', 'service'}, 		brand = 'mtl', 			model = 'rallytruck', 		name = 'Dune' 							}, -- 2
	{ version = '1.35', build = 1604, blacklist = false, hash = -1071380347, 	cat = 'muscle', 					brand = 'declasse', 	model = 'tampa2', 			name = 'Drift Tampa' 					}, -- 3
	{ version = '1.35', build = 1604, blacklist = false, hash = 482197771, 		cat = 'sports', 					brand = 'ocelot', 		model = 'lynx', 			name = 'Lynx' 							}, -- 4
	{ version = '1.35', build = 1604, blacklist = false, hash = 390201602, 		cat = 'motorcycles', 				brand = 'western', 		model = 'cliffhanger', 		name = 'Cliffhanger' 					}, -- 5
	{ version = '1.35', build = 1604, blacklist = false, hash = 2067820283, 	cat = 'super', 						brand = 'progen', 		model = 'tyrus', 			name = 'Tyrus' 							}, -- 6
	{ version = '1.35', build = 1604, blacklist = false, hash = -1232836011, 	cat = 'super', 						brand = 'annis', 		model = 'le7b', 			name = 'RE-7B' 							}, -- 7
	{ version = '1.35', build = 1604, blacklist = false, hash = 819197656, 		cat = 'super', 						brand = 'emperor', 		model = 'sheava', 			name = 'ETR1' 							}, -- 8
	{ version = '1.35', build = 1604, blacklist = false, hash = 1887331236, 	cat = 'sports', 					brand = 'lampadati', 	model = 'tropos', 			name = 'Tropos Rallye' 					}, -- 9
	{ version = '1.35', build = 1604, blacklist = false, hash = -777172681, 	cat = 'sports', 					brand = 'obey', 		model = 'omnis', 			name = 'Omnis' 							}, -- 10
	{ version = '1.35', build = 1604, blacklist = false, hash = 101905590, 		cat = 'offroad', 					brand = 'annis', 		model = 'trophytruck', 		name = 'Trophy Truck' 					}, -- 11
	{ version = '1.35', build = 1604, blacklist = false, hash = -663299102, 	cat = 'offroad', 					brand = 'annis', 		model = 'trophytruck2', 	name = 'Trophy Truck, Desert Raid' 		}, -- 12
	{ version = '1.35', build = 1604, blacklist = false, hash = 741090084, 		cat = 'motorcycles', 				brand = 'western', 		model = 'gargoyle', 		name = 'Gargoyle' 						}, -- 13
	{ version = '1.35', build = 1604, blacklist = false, hash = 86520421, 		cat = 'motorcycles', 				brand = 'nagasaki', 	model = 'bf400', 			name = 'bf400' 							}, -- 14
	{ version = '1.35', build = 1604, blacklist = false, hash = 1549126457, 	cat = 'compacts', 					brand = 'frotti', 		model = 'brioso', 			name = 'Brioso R/A' 					}, -- 15

	-- GTAV 1.36 | Game Build 1604 |  21 vehicles | bikers
	{ version = '1.36', build = 1604, blacklist = false, hash = 1026149675, 	cat = 'vans', 						brand = 'bravado', 		model = 'youga2', 			name = 'Youga Classic' 					}, -- 1
	{ version = '1.36', build = 1604, blacklist = false, hash = 2035069708, 	cat = 'motorcycles', 				brand = 'pegassi', 		model = 'esskey', 			name = 'Esskey' 						}, -- 2
	{ version = '1.36', build = 1604, blacklist = false, hash = -405626514, 	cat = 'motorcycles', 				brand = 'nagasaki', 	model = 'shotaro', 			name = 'Shotaro' 						}, -- 3
	{ version = '1.36', build = 1604, blacklist = false, hash = -1558399629, 	cat = 'sportsclassics', 			brand = 'declasse', 	model = 'tornado6', 		name = 'Tornado Rat Rod' 				}, -- 4
	{ version = '1.36', build = 1604, blacklist = false, hash = 1491277511, 	cat = 'motorcycles', 				brand = 'lcc', 			model = 'sanctus', 			name = 'Sanctus' 						}, -- 5
	{ version = '1.36', build = 1604, blacklist = false, hash = -609625092, 	cat = 'motorcycles', 				brand = 'pegassi', 		model = 'vortex', 			name = 'Vortex' 						}, -- 6
	{ version = '1.36', build = 1604, blacklist = false, hash = -674927303, 	cat = 'sports', 					brand = 'bf', 			model = 'raptor', 			name = 'Raptor' 						}, -- 7
	{ version = '1.36', build = 1604, blacklist = false, hash = -1404136503, 	cat = 'motorcycles', 				brand = 'western', 		model = 'daemon2', 			name = 'Daemon Custom' 					}, -- 8
	{ version = '1.36', build = 1604, blacklist = false, hash = -570033273, 	cat = 'motorcycles', 				brand = 'western', 		model = 'zombieb', 			name = 'Zombie Chopper' 				}, -- 10
	{ version = '1.36', build = 1604, blacklist = false, hash = -1009268949, 	cat = 'motorcycles', 				brand = 'western', 		model = 'zombiea', 			name = 'Zombie Bobber' 					}, -- 11
	{ version = '1.36', build = 1604, blacklist = false, hash = -618617997, 	cat = 'motorcycles', 				brand = 'western', 		model = 'wolfsbane', 		name = 'Wolfsbane' 						}, -- 12
	{ version = '1.36', build = 1604, blacklist = false, hash = 1873600305, 	cat = 'motorcycles', 				brand = 'western', 		model = 'ratbike', 			name = 'Rat bike' 						}, -- 13
	{ version = '1.36', build = 1604, blacklist = false, hash = -1606187161, 	cat = 'motorcycles', 				brand = 'western', 		model = 'nightblade', 		name = 'Nightblade' 					}, -- 14
	{ version = '1.36', build = 1604, blacklist = false, hash = -1523428744, 	cat = 'motorcycles', 				brand = 'maibatsu', 	model = 'manchez', 			name = 'Manchez' 						}, -- 15
	{ version = '1.36', build = 1604, blacklist = false, hash = -255678177, 	cat = 'motorcycles', 				brand = 'shitzu', 		model = 'hakuchou2', 		name = 'Hakuchou Drag' 					}, -- 16
	{ version = '1.36', build = 1604, blacklist = false, hash = -1842748181, 	cat = 'motorcycles', 				brand = 'pegassi', 		model = 'faggio', 			name = 'Faggio Sport' 					}, -- 17
	{ version = '1.36', build = 1604, blacklist = false, hash = -1289178744, 	cat = 'motorcycles', 				brand = 'pegassi', 		model = 'faggio3', 			name = 'Faggio Mod' 					}, -- 18
	{ version = '1.36', build = 1604, blacklist = false, hash = 822018448, 		cat = 'motorcycles', 				brand = 'shitzu', 		model = 'defiler', 			name = 'Defiler' 						}, -- 19
	{ version = '1.36', build = 1604, blacklist = false, hash = 6774487, 		cat = 'motorcycles', 				brand = 'nagasaki', 	model = 'chimera', 			name = 'Chimera' 						}, -- 20
	{ version = '1.36', build = 1604, blacklist = false, hash = -2115793025, 	cat = 'motorcycles', 				brand = 'lcc', 			model = 'avarus', 			name = 'Avarus' 						}, -- 21

	-- GTAV 1.37 | Game Build 1604 |  22 vehicles | Import/Export
	{ version = '1.37', build = 1604, blacklist = false, hash = 1074745671, 	cat = 'sports', 					brand = 'dewbauchee', 	model = 'specter2', 		name = 'Specter Custom' 				}, -- 1
	{ version = '1.37', build = 1604, blacklist = false, hash = 1886268224, 	cat = 'sports', 					brand = 'dewbauchee', 	model = 'specter', 			name = 'Specter' 						}, -- 2
	{ version = '1.37', build = 1604, blacklist = false, hash = -482719877, 	cat = 'super', 						brand = 'progen', 		model = 'italigtb2', 		name = 'Itali GTB Custom' 				}, -- 3
	{ version = '1.37', build = 1604, blacklist = false, hash = -2048333973, 	cat = 'super', 						brand = 'progen', 		model = 'italigtb', 		name = 'Itali GTB' 						}, -- 4
	{ version = '1.37', build = 1604, blacklist = false, hash = -757735410, 	cat = 'motorcycles', 				brand = 'pegassi', 		model = 'fcr2', 			name = 'FCR 1000 Custom' 				}, -- 5
	{ version = '1.37', build = 1604, blacklist = false, hash = 627535535, 		cat = 'motorcycles', 				brand = 'pegassi', 		model = 'fcr', 				name = 'FCR 1000' 						}, -- 6
	{ version = '1.37', build = 1604, blacklist = false, hash = -2022483795, 	cat = 'sports', 					brand = 'pfister', 		model = 'comet3', 			name = 'Comet Retro Custom' 			}, -- 7
	{ version = '1.37', build = 1604, blacklist = false, hash = 1093792632, 	cat = 'super', 						brand = 'truffade', 	model = 'nero2', 			name = 'Nero Custom' 					}, -- 8
	{ version = '1.37', build = 1604, blacklist = false, hash = 1034187331, 	cat = 'super', 						brand = 'truffade', 	model = 'nero', 			name = 'Nero' 							}, -- 9
	{ version = '1.37', build = 1604, blacklist = false, hash = 1475773103, 	cat = 'vans', 						brand = 'brute', 		model = 'boxville5', 		name = 'Armored Boxville' 				}, -- 10
	{ version = '1.37', build = 1604, blacklist = false, hash = 272929391, 		cat = 'super', 						brand = 'pegassi', 		model = 'tempesta', 		name = 'Tempesta' 						}, -- 11
	{ version = '1.37', build = 1604, blacklist = false, hash = 989294410, 		cat = 'super', 						brand = 'coil', 		model = 'voltic2', 			name = 'Rocket Voltic' 					}, -- 12
	{ version = '1.37', build = 1604, blacklist = false, hash = -1758137366, 	cat = 'super', 						brand = 'ocelot', 		model = 'penetrator', 		name = 'Penetrator' 					}, -- 13
	{ version = '1.37', build = 1604, blacklist = false, hash = 196747873, 		cat = 'sports', 					brand = 'annis', 		model = 'elegy', 			name = 'Elegy Retro Custom' 			}, -- 14
	{ version = '1.37', build = 1604, blacklist = false, hash = -1912017790, 	cat = 'service', 					brand = 'mtl', 			model = 'wastelander', 		name = 'Wastelander' 					}, -- 15
	{ version = '1.37', build = 1604, blacklist = false, hash = 1180875963, 	cat = 'offroad', 					brand = 'karin', 		model = 'technical2', 		name = 'Technical Aqua' 				}, -- 16
	{ version = '1.37', build = 1604, blacklist = false, hash = -827162039, 	cat = 'offroad', 					brand = 'bf', 			model = 'dune4', 			name = 'Ramp Buggy (+spoiler)' 			}, -- 17.1
	{ version = '1.37', build = 1604, blacklist = false, hash = -312295511, 	cat = 'offroad', 					brand = 'bf', 			model = 'dune5', 			name = 'Ramp Buggy' 					}, -- 17.2
	{ version = '1.37', build = 1604, blacklist = false, hash = -1590337689, 	cat = 'offroad', 					brand = 'nagasaki', 	model = 'blazer5', 			name = 'Blazer Aqua' 					}, -- 18
	{ version = '1.37', build = 1604, blacklist = false, hash = 941494461, 		cat = 'muscle', 					brand = 'imponte', 		model = 'ruiner2', 			name = 'Ruiner 2000' 					}, -- 19
	{ version = '1.37', build = 1604, blacklist = false, hash = 1790834270, 	cat = 'motorcycles', 				brand = 'principe', 	model = 'diablous2', 		name = 'Diablous Custom' 				}, -- 20
	{ version = '1.37', build = 1604, blacklist = false, hash = -239841468, 	cat = 'motorcycles', 				brand = 'principe', 	model = 'diablous', 		name = 'Diablous' 						}, -- 21
	{ version = '1.37', build = 1604, blacklist = false, hash = -1649536104, 	cat = 'commercial', 				brand = 'jobuilt', 		model = 'phantom2', 		name = 'Phantom Wedge' 					}, -- 22

	-- GTAV 1.38 | Game Build 1604 |   4 vehicles | Special Vehicle Circuit
	{ version = '1.38', build = 1604, blacklist = false, hash = 719660200, 		cat = 'sports', 					brand = 'hijak', 		model = 'ruston', 			name = 'Ruston' 						}, -- 1
	{ version = '1.38', build = 1604, blacklist = false, hash = 1234311532, 	cat = 'super', 						brand = 'progen', 		model = 'gp1', 				name = 'GP1' 							}, -- 2
	{ version = '1.38', build = 1604, blacklist = false, hash = -1405937764, 	cat = 'sportsclassics', 			brand = 'pegassi', 		model = 'infernus2', 		name = 'Infernus Classic' 				}, -- 3
	{ version = '1.38', build = 1604, blacklist = false, hash = -982130927, 	cat = 'sportsclassics', 			brand = 'grotti', 		model = 'turismo2', 		name = 'Turismo Classic' 				}, -- 4

	-- GTAV 1.40 | Game Build 1604 |  18 vehicles | Gunrunning Pack
	{ version = '1.40', build = 1604, blacklist = false, hash = 159274291, 		cat = 'sportsclassics', 			brand = 'ocelot', 		model = 'ardent', 			name = 'Ardent' 						}, -- 1
	{ version = '1.40', build = 1604, blacklist = false, hash = 917809321, 		cat = 'super', 						brand = 'ocelot', 		model = 'xa21', 			name = 'XA-21' 							}, -- 2
	{ version = '1.40', build = 1604, blacklist = false, hash = 433954513, 		cat = 'offroad', 					brand = 'hvy', 			model = 'nightshark', 		name = 'Nightshark' 					}, -- 3
	{ version = '1.40', build = 1604, blacklist = false, hash = -1924433270, 	cat = 'offroad', 					brand = 'hvy', 			model = 'insurgent3', 		name = 'Insurgent Pick-up Custom' 		}, -- 4
	{ version = '1.40', build = 1604, blacklist = false, hash = 1504306544, 	cat = 'sportsclassics', 			brand = 'pegassi', 		model = 'torero', 			name = 'Torero' 						}, -- 5
	{ version = '1.40', build = 1604, blacklist = false, hash = 1356124575, 	cat = 'offroad', 					brand = 'karin', 		model = 'technical3', 		name = 'Technical Custom' 				}, -- 6
	{ version = '1.40', build = 1604, blacklist = false, hash = 223240013, 		cat = 'sports', 					brand = 'grotti', 		model = 'cheetah2', 		name = 'Cheetah Classic' 				}, -- 7
	{ version = '1.40', build = 1604, blacklist = false, hash = 1939284556, 	cat = 'super', 						brand = 'dewbauchee', 	model = 'vagner', 			name = 'Vagner' 						}, -- 8
	{ version = '1.40', build = 1604, blacklist = false, hash = 1502869817, 	cat = {'military', 'utility'}, 		brand = 'unknown', 		model = 'trailerlarge', 	name = 'Mobile Operations Center Trailer'},-- 9
	{ version = '1.40', build = 1604, blacklist = false, hash = 3525819835, 	cat = 'utility', 					brand = 'nagasaki', 	model = 'caddy3', 			name = 'Caddy (Bunker)' 				}, -- 10
	{ version = '1.40', build = 1604, blacklist = false, hash = 1897744184, 	cat = 'offroad', 					brand = 'bf', 			model = 'dune3', 			name = 'Duna FAV' 						}, -- 11
	{ version = '1.40', build = 1604, blacklist = false, hash = -1210451983, 	cat = 'muscle', 					brand = 'declasse', 	model = 'tampa3', 			name = 'Weaponized Tampa' 				}, -- 12
	{ version = '1.40', build = 1604, blacklist = false, hash = 884483972, 		cat = 'motorcycles', 				brand = 'pegassi', 		model = 'oppressor', 		name = 'Oppressor' 						}, -- 13
	{ version = '1.40', build = 1604, blacklist = false, hash = -32236122, 		cat = 'military', 					brand = 'bravado', 		model = 'halftrack', 		name = 'Half-track' 					}, -- 14
	{ version = '1.40', build = 1604, blacklist = false, hash = 562680400, 		cat = 'military', 					brand = 'hvy', 			model = 'apc', 				name = 'APC Tank' 						}, -- 15
	{ version = '1.40', build = 1604, blacklist = false, hash = -1881846085, 	cat = 'military', 					brand = 'vom', 			model = 'trailersmall2',	name = 'Anti-Aircraft (trailer)' 		}, -- 16
	{ version = '1.40', build = 1604, blacklist = false, hash = 177270108, 		cat = 'commercial', 				brand = 'jobuilt', 		model = 'phantom3', 		name = 'Phantom Custom' 				}, -- 17
	{ version = '1.40', build = 1604, blacklist = false, hash = 387748548, 		cat = 'commercial', 				brand = 'jobuilt', 		model = 'hauler2', 			name = 'Hauler Custom' 					}, -- 18

	-- GTAV 1.41 | Game Build 1604 |  19 vehicles | Smuggler's Run
	{ version = '1.41', build = 1604, blacklist = false, hash = -42959138, 		cat = 'helicopters', 				brand = 'unknown', 		model = 'hunter', 			name = 'Hunter' 						}, -- 1
	{ version = '1.41', build = 1604, blacklist = false, hash = 1392481335, 	cat = 'super', 						brand = 'coil', 		model = 'cyclone', 			name = 'Cyclone' 						}, -- 2
	{ version = '1.41', build = 1604, blacklist = false, hash = 1036591958, 	cat = 'planes', 					brand = 'unknown', 		model = 'nokota', 			name = 'P-45 Nokota' 					}, -- 3
	{ version = '1.41', build = 1604, blacklist = false, hash = -392675425, 	cat = 'planes', 					brand = 'western', 		model = 'seabreeze', 		name = 'Seabreeze' 						}, -- 4
	{ version = '1.41', build = 1604, blacklist = false, hash = -1242608589, 	cat = 'super', 						brand = 'grotti', 		model = 'vigilante', 		name = 'Vigilante' 						}, -- 5
	{ version = '1.41', build = 1604, blacklist = false, hash = -1386191424, 	cat = 'planes', 					brand = 'buckingham', 	model = 'pyro', 			name = 'Pyro' 							}, -- 6
	{ version = '1.41', build = 1604, blacklist = false, hash = -749299473, 	cat = 'planes', 					brand = 'mammoth', 		model = 'mogul', 			name = 'Mogul' 							}, -- 7
	{ version = '1.41', build = 1604, blacklist = false, hash = -1007528109, 	cat = 'planes', 					brand = 'buckingham', 	model = 'howard', 			name = 'Howard NX-25' 					}, -- 8
	{ version = '1.41', build = 1604, blacklist = false, hash = -32878452, 		cat = 'planes', 					brand = 'unknown', 		model = 'bombushka', 		name = 'RM-10 Bombushka' 				}, -- 9
	{ version = '1.41', build = 1604, blacklist = false, hash = 2049897956, 	cat = 'sportsclassics', 			brand = 'dewbauchee', 	model = 'rapidgt3', 		name = 'Rapid GT Classic' 				}, -- 10
	{ version = '1.41', build = 1604, blacklist = false, hash = -998177792, 	cat = 'sports', 					brand = 'grotti', 		model = 'visione', 			name = 'Visione' 						}, -- 11
	{ version = '1.41', build = 1604, blacklist = false, hash = 1841130506, 	cat = 'sportsclassics', 			brand = 'vapid', 		model = 'retinue', 			name = 'Retinue' 						}, -- 12
	{ version = '1.41', build = 1604, blacklist = false, hash = 1565978651, 	cat = 'planes', 					brand = 'unknown', 		model = 'molotok', 			name = 'V-65 Molotok' 					}, -- 13
	{ version = '1.41', build = 1604, blacklist = false, hash = -1763555241, 	cat = 'planes', 					brand = 'nagasaki', 	model = 'microlight', 		name = 'Ultralight' 					}, -- 14
	{ version = '1.41', build = 1604, blacklist = false, hash = 1043222410, 	cat = 'planes', 					brand = 'mammoth', 		model = 'tula', 			name = 'Tula' 							}, -- 15
	{ version = '1.41', build = 1604, blacklist = false, hash = -975345305, 	cat = 'planes', 					brand = 'western', 		model = 'rogue', 			name = 'Rogue' 							}, -- 16
	{ version = '1.41', build = 1604, blacklist = false, hash = -1700874274, 	cat = 'planes', 					brand = 'unknown', 		model = 'starling', 		name = 'LF-22 Starling' 				}, -- 17
	{ version = '1.41', build = 1604, blacklist = false, hash = -1523619738, 	cat = 'planes', 					brand = 'buckingham', 	model = 'alphaz1', 			name = 'Alpha-Z1' 						}, -- 18
	{ version = '1.41', build = 1604, blacklist = false, hash = -1984275979, 	cat = 'helicopters', 				brand = 'nagasaki', 	model = 'havok', 			name = 'Havok' 							}, -- 19

	-- GTAV 1.42 | Game Build 1604 |  29 vehicles | The Doomsday Heist
	{ version = '1.42', build = 1604, blacklist = false, hash = 661493923, 		cat = 'sports', 					brand = 'pfister', 		model = 'comet5', 			name = 'Comet SR' 						}, -- 1
	{ version = '1.42', build = 1604, blacklist = false, hash = 838982985, 		cat = 'sportsclassics', 			brand = 'karin', 		model = 'z190', 			name = '190Z' 							}, -- 2
	{ version = '1.42', build = 1604, blacklist = false, hash = 600450546, 		cat = 'muscle', 					brand = 'vapid', 		model = 'hustler', 			name = 'Hustler' 						}, -- 3
	{ version = '1.42', build = 1604, blacklist = false, hash = -121446169, 	cat = 'offroad', 					brand = 'canis', 		model = 'kamacho', 			name = 'Kamacho' 						}, -- 4
	{ version = '1.42', build = 1604, blacklist = false, hash = -1848994066, 	cat = 'sports', 					brand = 'pfister', 		model = 'neon', 			name = 'Neon' 							}, -- 5
	{ version = '1.42', build = 1604, blacklist = false, hash = -410205223, 	cat = 'sports', 					brand = 'ubermacht', 	model = 'revolter', 		name = 'Revolter' 						}, -- 6
	{ version = '1.42', build = 1604, blacklist = false, hash = -2079788230, 	cat = 'sportsclassics', 			brand = 'grotti', 		model = 'gt500', 			name = 'GT500' 							}, -- 7
	{ version = '1.42', build = 1604, blacklist = false, hash = -391595372, 	cat = 'sportsclassics', 			brand = 'lampadati', 	model = 'viseris', 			name = 'Viseris' 						}, -- 8
	{ version = '1.42', build = 1604, blacklist = false, hash = 903794909, 		cat = 'sportsclassics', 			brand = 'annis', 		model = 'savestra', 		name = 'Savestra' 						}, -- 9
	{ version = '1.42', build = 1604, blacklist = false, hash = -313185164, 	cat = 'super', 						brand = 'overflod', 	model = 'autarch', 			name = 'Autarch' 						}, -- 10
	{ version = '1.42', build = 1604, blacklist = false, hash = 15219735, 		cat = 'muscle', 					brand = 'albany', 		model = 'hermes', 			name = 'Hermes' 						}, -- 11
	{ version = '1.42', build = 1604, blacklist = false, hash = 1741861769, 	cat = 'sports', 					brand = 'benefactor', 	model = 'streiter', 		name = 'Streiter' 						}, -- 12
	{ version = '1.42', build = 1604, blacklist = false, hash = 1104234922, 	cat = 'coupes', 					brand = 'ubermacht', 	model = 'sentinel3', 		name = 'Sentinel Classic' 				}, -- 13
	{ version = '1.42', build = 1604, blacklist = false, hash = -2118308144, 	cat = 'planes', 					brand = 'mammoth', 		model = 'avenger', 			name = 'Avenger (Model 1)' 				}, -- 14.1
	{ version = '1.42', build = 1604, blacklist = false, hash = 408970549, 		cat = 'planes', 					brand = 'mammoth', 		model = 'avenger2', 		name = 'Avenger (Model 2)' 				}, -- 14.2
	{ version = '1.42', build = 1604, blacklist = false, hash = 1489874736, 	cat = 'military', 					brand = 'mammoth', 		model = 'thruster', 		name = 'Thruster Jetpack' 				}, -- 15
	{ version = '1.42', build = 1604, blacklist = false, hash = 1483171323, 	cat = 'sportsclassics', 			brand = 'imponte', 		model = 'deluxo', 			name = 'Deluxo' 						}, -- 16
	{ version = '1.42', build = 1604, blacklist = false, hash = 886810209, 		cat = 'sportsclassics', 			brand = 'ocelot', 		model = 'stromberg', 		name = 'Stromberg' 						}, -- 17
	{ version = '1.42', build = 1604, blacklist = false, hash = -1435527158, 	cat = 'military', 					brand = 'unknown', 		model = 'khanjali', 		name = 'TM-02 Khanjali Tank' 			}, -- 18
	{ version = '1.42', build = 1604, blacklist = false, hash = 0, 				cat = {'emergency', 'vans'}, 		brand = 'unknown', 		model = 'riot2', 			name = 'RCV (Riot Control Vehicle)' 	}, -- 19
	{ version = '1.42', build = 1604, blacklist = false, hash = -692292317, 	cat = 'military', 					brand = 'hvy', 			model = 'chernobog', 		name = 'Chernobog' 						}, -- 20
	{ version = '1.42', build = 1604, blacklist = false, hash = -212993243, 	cat = 'military', 					brand = 'hvy', 			model = 'barrage', 			name = 'Barrage' 						}, -- 21
	{ version = '1.42', build = 1604, blacklist = false, hash = 447548909, 		cat = 'planes', 					brand = 'unknown', 		model = 'volatol', 			name = 'Volatol' 						}, -- 22
	{ version = '1.42', build = 1604, blacklist = false, hash = 1181327175, 	cat = 'helicopters', 				brand = 'unknown', 		model = 'akula', 			name = 'Akula' 							}, -- 23
	{ version = '1.42', build = 1604, blacklist = false, hash = 1352136073, 	cat = 'super', 						brand = 'ubermacht', 	model = 'sc1', 				name = 'SC1' 							}, -- 24
	{ version = '1.42', build = 1604, blacklist = false, hash = -1529242755, 	cat = 'sports', 					brand = 'coil', 		model = 'raiden', 			name = 'Raiden' 						}, -- 25
	{ version = '1.42', build = 1604, blacklist = false, hash = 867799010, 		cat = 'sports', 					brand = 'ocelot', 		model = 'pariah', 			name = 'Pariah' 						}, -- 26
	{ version = '1.42', build = 1604, blacklist = false, hash = 1561920505, 	cat = 'sports', 					brand = 'pfister', 		model = 'comet4', 			name = 'Comet Safari' 					}, -- 27
	{ version = '1.42', build = 1604, blacklist = false, hash = 1871995513, 	cat = 'muscle', 					brand = 'declasse', 	model = 'yosemite', 		name = 'Yosemite' 						}, -- 28
	{ version = '1.42', build = 1604, blacklist = false, hash = -1532697517, 	cat = 'offroad', 					brand = 'vapid', 		model = 'riata', 			name = 'Riata' 							}, -- 29

	-- GTAV 1.43 | Game Build 1604 |  15 vehicles | Southern SA Super Sport Series
	{ version = '1.43', build = 1604, blacklist = false, hash = 1046206681, 	cat = 'sportsclassics', 			brand = 'lampadati', 	model = 'michelli', 		name = 'Michelli GT' 					}, -- 1
	{ version = '1.43', build = 1604, blacklist = false, hash = -988501280, 	cat = 'sportsclassics', 			brand = 'rune', 		model = 'cheburek', 		name = 'Cheburek' 						}, -- 2
	{ version = '1.43', build = 1604, blacklist = false, hash = -376434238, 	cat = 'super', 						brand = 'overflod', 	model = 'tyrant', 			name = 'Tyrant' 						}, -- 3
	{ version = '1.43', build = 1604, blacklist = false, hash = -986944621, 	cat = 'muscle', 					brand = 'vapid', 		model = 'dominator3', 		name = 'Dominator GTX' 					}, -- 4
	{ version = '1.43', build = 1604, blacklist = false, hash = -726768679, 	cat = 'helicopters', 				brand = 'unknown', 		model = 'seasparrow', 		name = 'Sea Sparrow' 					}, -- 5
	{ version = '1.43', build = 1604, blacklist = false, hash = 931280609, 		cat = 'compacts', 					brand = 'weeny', 		model = 'issi3', 			name = 'Issi Classic' 					}, -- 6
	{ version = '1.43', build = 1604, blacklist = false, hash = -1259134696, 	cat = 'sports', 					brand = 'vapid', 		model = 'flashgt', 			name = 'Flash GT' 						}, -- 7
	{ version = '1.43', build = 1604, blacklist = false, hash = 1254014755, 	cat = 'offroad', 					brand = 'vapid', 		model = 'caracara', 		name = 'Caracara' 						}, -- 8
	{ version = '1.43', build = 1604, blacklist = false, hash = 1031562256, 	cat = 'super', 						brand = 'pegassi', 		model = 'tezeract', 		name = 'Tezeract' 						}, -- 9
	{ version = '1.43', build = 1604, blacklist = false, hash = -1267543371, 	cat = 'muscle', 					brand = 'vapid', 		model = 'ellie', 			name = 'Ellie' 							}, -- 10
	{ version = '1.43', build = 1604, blacklist = false, hash = 1909189272, 	cat = 'sports',						brand = 'vapid', 		model = 'gb200', 			name = 'GB 200' 						}, -- 11
	{ version = '1.43', build = 1604, blacklist = false, hash = -1134706562, 	cat = 'super', 						brand = 'cheval', 		model = 'taipan', 			name = 'Taipan' 						}, -- 12
	{ version = '1.43', build = 1604, blacklist = false, hash = -2120700196, 	cat = 'super', 						brand = 'overflod', 	model = 'entity2', 			name = 'Entity XXR' 					}, -- 13
	{ version = '1.43', build = 1604, blacklist = false, hash = 1617472902, 	cat = 'sportsclassics', 			brand = 'vulcar', 		model = 'fagaloa', 			name = 'Fagaloa' 						}, -- 14
	{ version = '1.43', build = 1604, blacklist = false, hash = 1115909093, 	cat = 'sports', 					brand = 'declasse', 	model = 'hotring', 			name = 'Hotring Sabre' 					}, -- 15

	-- GTAV 1.44 | Game Build 1604 |  15 vehicles | After Hours
	{ version = '1.44', build = 1604, blacklist = false, hash = -54332285, 		cat = 'offroad', 					brand = 'canis', 		model = 'freecrawler', 		name = 'Freecrawler' 					}, -- 1
	{ version = '1.44', build = 1604, blacklist = false, hash = 2044532910, 	cat = 'offroad', 					brand = 'hvy', 			model = 'menacer', 			name = 'Menacer' 						}, -- 2
	{ version = '1.44', build = 1604, blacklist = false, hash = -638562243, 	cat = 'super', 						brand = 'declasse', 	model = 'scramjet', 		name = 'Scramjet' 						}, -- 3
	{ version = '1.44', build = 1604, blacklist = false, hash = 2069146067, 	cat = 'motorcycles', 				brand = 'pegassi', 		model = 'oppressor2', 		name = 'Oppressor Mk II' 				}, -- 4
	{ version = '1.44', build = 1604, blacklist = false, hash = -1988428699, 	cat = {'commercial', 'military'}, 	brand = 'benefactor', 	model = 'terbyte', 			name = 'Terrorbyte' 					}, -- 5
	{ version = '1.44', build = 1604, blacklist = false, hash = 1692272545, 	cat = 'planes', 					brand = 'unknown', 		model = 'strikeforce', 		name = 'B-11 Strikeforce' 				}, -- 6
	{ version = '1.44', build = 1604, blacklist = false, hash = 321186144, 		cat = 'sedans', 					brand = 'enus', 		model = 'stafford', 		name = 'Stafford' 						}, -- 7
	{ version = '1.44', build = 1604, blacklist = false, hash = -307958377, 	cat = 'planes', 					brand = 'unknown', 		model = 'blimp3', 			name = 'Blimp' 							}, -- 8
	{ version = '1.44', build = 1604, blacklist = false, hash = 219613597, 		cat = 'vans', 						brand = 'vapid', 		model = 'speedo4', 			name = 'Speedo Custom' 					}, -- 9
	{ version = '1.44', build = 1604, blacklist = false, hash = 345756458, 		cat = 'service', 					brand = 'unknown', 		model = 'pbus2', 			name = 'Festival Bus' 					}, -- 10
	{ version = '1.44', build = 1604, blacklist = false, hash = -420911112, 	cat = 'suvs', 						brand = 'mammoth', 		model = 'patriot2', 		name = 'Patriot Stretch' 				}, -- 11
	{ version = '1.44', build = 1604, blacklist = false, hash = 1653666139, 	cat = 'commercial', 				brand = 'mtl', 			model = 'pounder2', 		name = 'Pounder Custom' 				}, -- 12
	{ version = '1.44', build = 1604, blacklist = false, hash = 1343932732, 	cat = 'commercial', 				brand = 'maibatsu', 	model = 'mule4', 			name = 'Mule Custom' 					}, -- 13
	{ version = '1.44', build = 1604, blacklist = false, hash = 500482303, 		cat = 'sportsclassics', 			brand = 'ocelot', 		model = 'swinger', 			name = 'Swinger' 						}, -- 14
	{ version = '1.44', build = 1604, blacklist = false, hash = -214906006, 	cat = 'sports', 					brand = 'dinka', 		model = 'jester3', 			name = 'Jester Classic' 				}, -- 15

	-- GTAV 1.46 | Game Build 1604 |  22 vehicles | Arena War
	{ version = '1.46', build = 1604, blacklist = false, hash = 1591739866, 	cat = 'super', 						brand = 'principe', 	model = 'deveste', 			name = 'Deveste' 						}, -- 1
	{ version = '1.46', build = 1604, blacklist = false, hash = -49115651, 		cat = 'muscle', 					brand = 'declasse', 	model = 'vamos', 			name = 'Vamos' 							}, -- 2
	{ version = '1.46', build = 1604, blacklist = false, hash = 1279262537, 	cat = 'muscle', 					brand = 'schyster', 	model = 'deviant', 			name = 'Deviant' 						}, -- 3
	{ version = '1.46', build = 1604, blacklist = false, hash = -286046740, 	cat = {'rc', 'offroad'}, 			brand = 'unknown', 		model = 'rcbandito', 		name = 'Remote Control Bandito' 		}, -- 4
	{ version = '1.46', build = 1604, blacklist = false, hash = -507495760, 	cat = 'sports', 					brand = 'benefactor', 	model = 'schlagen', 		name = 'Schlagen GT' 					}, -- 5
	{ version = '1.46', build = 1604, blacklist = false, hash = 1456744817, 	cat = 'muscle', 					brand = 'declasse', 	model = 'tulip', 			name = 'Tulip' 							}, -- 6
	{ version = '1.46', build = 1604, blacklist = false, hash = -331467772, 	cat = 'sports', 					brand = 'progen', 		model = 'italigto', 		name = 'Itali GTO' 						}, -- 7
	{ version = '1.46', build = 1604, blacklist = false, hash = -1566607184, 	cat = 'muscle', 					brand = 'vapid', 		model = 'clique', 			name = 'Clique' 						}, -- 8
	{ version = '1.46', build = 1604, blacklist = false, hash = -1168952148, 	cat = 'suvs', 						brand = 'pegassi', 		model = 'toros', 			name = 'Toros' 							}, -- 9
	{ version = '1.46', build = 1604, blacklist = false, hash = 540101442, 		cat = 'sports', 					brand = 'annis', 		model = 'zr380', 			name = 'ZR380 Arena 1' 					}, -- 11.1
	{ version = '1.46', build = 1604, blacklist = false, hash = -1106120762, 	cat = 'sports', 					brand = 'annis', 		model = 'zr3802', 			name = 'ZR380 Arena 2' 					}, -- 11.2
	{ version = '1.46', build = 1604, blacklist = false, hash = -1478704292, 	cat = 'sports', 					brand = 'annis', 		model = 'zr3803', 			name = 'ZR380 Arena 3' 					}, -- 11.3
	{ version = '1.46', build = 1604, blacklist = false, hash = 444994115, 		cat = 'muscle', 					brand = 'vapid', 		model = 'imperator', 		name = 'Imperator Arena 1' 				}, -- 11.1
	{ version = '1.46', build = 1604, blacklist = false, hash = 1637620610, 	cat = 'muscle', 					brand = 'vapid', 		model = 'imperator2', 		name = 'Imperator Arena 2' 				}, -- 11.2
	{ version = '1.46', build = 1604, blacklist = false, hash = -755532233, 	cat = 'muscle', 					brand = 'vapid', 		model = 'imperator3', 		name = 'Imperator Arena 3' 				}, -- 11.3
	{ version = '1.46', build = 1604, blacklist = false, hash = -1146969353, 	cat = 'military', 					brand = 'vapid', 		model = 'scarab', 			name = 'Scarab Arena 1' 				}, -- 12.1
	{ version = '1.46', build = 1604, blacklist = false, hash = 1542143200, 	cat = 'military', 					brand = 'vapid', 		model = 'scarab2', 			name = 'Scarab Arena 2' 				}, -- 12.2
	{ version = '1.46', build = 1604, blacklist = false, hash = -579747861, 	cat = 'military', 					brand = 'vapid', 		model = 'scarab3', 			name = 'Scarab Arena 3' 				}, -- 12.3
	{ version = '1.46', build = 1604, blacklist = false, hash = 2139203625, 	cat = 'offroad', 					brand = 'declasse', 	model = 'brutus', 			name = 'Brutus Arena 1' 				}, -- 13.1
	{ version = '1.46', build = 1604, blacklist = false, hash = -1890996696, 	cat = 'offroad', 					brand = 'declasse', 	model = 'brutus2', 			name = 'Brutus Arena 2' 				}, -- 13.2
	{ version = '1.46', build = 1604, blacklist = false, hash = 2038858402, 	cat = 'offroad', 					brand = 'declasse', 	model = 'brutus3', 			name = 'Brutus Arena 3' 				}, -- 13.3
	{ version = '1.46', build = 1604, blacklist = false, hash = -801550069, 	cat = 'commercial', 				brand = 'mtl', 			model = 'cerberus', 		name = 'Cerberus Arena 1' 				}, -- 14.1
	{ version = '1.46', build = 1604, blacklist = false, hash = 679453769, 		cat = 'commercial', 				brand = 'mtl', 			model = 'cerberus2', 		name = 'Cerberus Arena 2' 				}, -- 14.2
	{ version = '1.46', build = 1604, blacklist = false, hash = 1909700336, 	cat = 'commercial', 				brand = 'mtl', 			model = 'cerberus3', 		name = 'Cerberus Arena 3' 				}, -- 14.3
	{ version = '1.46', build = 1604, blacklist = false, hash = 628003514, 		cat = 'compacts', 					brand = 'weeny', 		model = 'issi4', 			name = 'Issi Arena 1' 					}, -- 15.1
	{ version = '1.46', build = 1604, blacklist = false, hash = 1537277726, 	cat = 'compacts', 					brand = 'weeny', 		model = 'issi5', 			name = 'Issi Arena 2' 					}, -- 15.2
	{ version = '1.46', build = 1604, blacklist = false, hash = 1239571361, 	cat = 'compacts', 					brand = 'weeny', 		model = 'issi6', 			name = 'Issi Arena 3' 					}, -- 15.3
	{ version = '1.46', build = 1604, blacklist = false, hash = -27326686, 		cat = 'motorcycles', 				brand = 'western', 		model = 'deathbike', 		name = 'Deathbike Arena 1' 				}, -- 16.1
	{ version = '1.46', build = 1604, blacklist = false, hash = -1812949672, 	cat = 'motorcycles', 				brand = 'western', 		model = 'deathbike2', 		name = 'Deathbike Arena 2' 				}, -- 16.2
	{ version = '1.46', build = 1604, blacklist = false, hash = -1374500452, 	cat = 'motorcycles', 				brand = 'western', 		model = 'deathbike3', 		name = 'Deathbike Arena 3' 				}, -- 16.3
	{ version = '1.46', build = 1604, blacklist = false, hash = -2061049099, 	cat = 'muscle', 					brand = 'vapid', 		model = 'slamvan4', 		name = 'Slamvan Arena 1' 				}, -- 17.1
	{ version = '1.46', build = 1604, blacklist = false, hash = 373261600, 		cat = 'muscle', 					brand = 'vapid', 		model = 'slamvan5', 		name = 'Slamvan Arena 2' 				}, -- 17.2
	{ version = '1.46', build = 1604, blacklist = false, hash = 1742022738, 	cat = 'muscle', 					brand = 'vapid', 		model = 'slamvan6', 		name = 'Slamvan Arena 3' 				}, -- 17.3
	{ version = '1.46', build = 1604, blacklist = false, hash = 1721676810, 	cat = 'offroad', 					brand = 'bravado', 		model = 'monster3', 		name = 'Sasquatch Arena 1' 				}, -- 18.1
	{ version = '1.46', build = 1604, blacklist = false, hash = 840387324, 		cat = 'offroad', 					brand = 'bravado', 		model = 'monster4', 		name = 'Sasquatch Arena 2' 				}, -- 18.2
	{ version = '1.46', build = 1604, blacklist = false, hash = -715746948, 	cat = 'offroad', 					brand = 'bravado', 		model = 'monster5', 		name = 'Sasquatch Arena 3' 				}, -- 18.3
	{ version = '1.46', build = 1604, blacklist = false, hash = 668439077, 		cat = 'offroad', 					brand = 'benefactor', 	model = 'bruiser', 			name = 'Bruiser Arena 1' 				}, -- 19.1
	{ version = '1.46', build = 1604, blacklist = false, hash = -1694081890, 	cat = 'offroad', 					brand = 'benefactor', 	model = 'bruiser2', 		name = 'Bruiser Arena 2' 				}, -- 19.2
	{ version = '1.46', build = 1604, blacklist = false, hash = -2042350822, 	cat = 'offroad', 					brand = 'benefactor', 	model = 'bruiser3', 		name = 'Bruiser Arena 3' 				}, -- 19.3
	{ version = '1.46', build = 1604, blacklist = false, hash = -688189648, 	cat = 'muscle', 					brand = 'vapid', 		model = 'dominator4', 		name = 'Dominator Arena 1' 				}, -- 21.1
	{ version = '1.46', build = 1604, blacklist = false, hash = -1375060657, 	cat = 'muscle', 					brand = 'vapid', 		model = 'dominator5', 		name = 'Dominator Arena 2' 				}, -- 21.2
	{ version = '1.46', build = 1604, blacklist = false, hash = -1293924613, 	cat = 'muscle', 					brand = 'vapid', 		model = 'dominator6', 		name = 'Dominator Arena 3' 				}, -- 21.3
	{ version = '1.46', build = 1604, blacklist = false, hash = -2096690334, 	cat = 'muscle', 					brand = 'declasse', 	model = 'impaler', 			name = 'Impaler' 						}, -- 21
	{ version = '1.46', build = 1604, blacklist = false, hash = 1009171724, 	cat = 'muscle', 					brand = 'declasse', 	model = 'impaler2', 		name = 'Impaler Arena 1' 				}, -- 22.1
	{ version = '1.46', build = 1604, blacklist = false, hash = -1924800695, 	cat = 'muscle', 					brand = 'declasse', 	model = 'impaler3', 		name = 'Impaler Arena 2' 				}, -- 22.2
	{ version = '1.46', build = 1604, blacklist = false, hash = -1744505657, 	cat = 'muscle', 					brand = 'declasse', 	model = 'impaler4', 		name = 'Impaler Arena 3' 				}, -- 22.3

	-- GTAV 1.48 | Game Build 2060 |  22 vehicles | Diamond Casino & Resort
	{ version = '1.48', build = 2060, blacklist = false, hash = -1804415708, 	cat = 'sportsclassics', 			brand = 'vapid', 		model = 'peyote2', 			name = 'Peyote Gasser' 					}, -- 1
	{ version = '1.48', build = 2060, blacklist = false, hash = -1829436850, 	cat = 'suvs', 						brand = 'lampadati', 	model = 'novak', 			name = 'Novak' 							}, -- 2
	{ version = '1.48', build = 2060, blacklist = false, hash = 916547552, 		cat = 'motorcycles', 				brand = 'western', 		model = 'rrocket', 			name = 'Rampant Rocket Tricycle' 		}, -- 3
	{ version = '1.48', build = 2060, blacklist = false, hash = -682108547, 	cat = 'super', 						brand = 'pegassi', 		model = 'zorrusso', 		name = 'Zorrusso' 						}, -- 4
	{ version = '1.48', build = 2060, blacklist = false, hash = 310284501, 		cat = 'sportsclassics', 			brand = 'weeny', 		model = 'dynasty', 			name = 'Dynasty' 						}, -- 5
	{ version = '1.48', build = 2060, blacklist = false, hash = -208911803, 	cat = 'sports', 					brand = 'ocelot', 		model = 'jugular', 			name = 'Jugular' 						}, -- 6
	{ version = '1.48', build = 2060, blacklist = false, hash = -362150785, 	cat = 'offroad', 					brand = 'annis', 		model = 'hellion', 			name = 'Hellion' 						}, -- 7
	{ version = '1.48', build = 2060, blacklist = false, hash = 1862507111, 	cat = 'sportsclassics', 			brand = 'ubermacht', 	model = 'zion3', 			name = 'Zion Classic' 					}, -- 8
	{ version = '1.48', build = 2060, blacklist = false, hash = -664141241, 	cat = 'super', 						brand = 'benefactor', 	model = 'krieger', 			name = 'Krieger' 						}, -- 9
	{ version = '1.48', build = 2060, blacklist = false, hash = 1934384720, 	cat = 'muscle', 					brand = 'bravado', 		model = 'gauntlet4', 		name = 'Gauntlet Hellfire' 				}, -- 10
	{ version = '1.48', build = 2060, blacklist = false, hash = -941272559, 	cat = 'sports', 					brand = 'ocelot', 		model = 'locust', 			name = 'Locust' 						}, -- 11
	{ version = '1.48', build = 2060, blacklist = false, hash = -882629065, 	cat = 'sportsclassics', 			brand = 'vulcar', 		model = 'nebula', 			name = 'Nebula Turbo' 					}, -- 12
	{ version = '1.48', build = 2060, blacklist = false, hash = 1323778901, 	cat = 'super', 						brand = 'progen', 		model = 'emerus', 			name = 'Emerus' 						}, -- 13
	{ version = '1.48', build = 2060, blacklist = false, hash = 722226637, 		cat = 'muscle', 					brand = 'bravado', 		model = 'gauntlet3', 		name = 'Gauntlet Classic' 				}, -- 14
	{ version = '1.48', build = 2060, blacklist = false, hash = -1620126302, 	cat = 'sports', 					brand = 'vysser', 		model = 'neo', 				name = 'Neo' 							}, -- 15
	{ version = '1.48', build = 2060, blacklist = false, hash = -1349095620, 	cat = 'offroad', 					brand = 'vapid', 		model = 'caracara2', 		name = 'Caracara 4x4' 					}, -- 16
	{ version = '1.48', build = 2060, blacklist = false, hash = 1854776567, 	cat = 'compacts', 					brand = 'weeny', 		model = 'issi7', 			name = 'Issi Sport' 					}, -- 17
	{ version = '1.48', build = 2060, blacklist = false, hash = 686471183, 		cat = 'sports', 					brand = 'obey', 		model = 'drafter', 			name = '8F Drafter' 					}, -- 18
	{ version = '1.48', build = 2060, blacklist = false, hash = -447711397, 	cat = 'sports', 					brand = 'enus', 		model = 'paragon', 			name = 'Paragon' 						}, -- 19
	{ version = '1.48', build = 2060, blacklist = false, hash = 1416466158, 	cat = 'sports', 					brand = 'enus', 		model = 'paragon2', 		name = 'Paragon (Armored)' 				}, -- 20
	{ version = '1.48', build = 2060, blacklist = false, hash = -324618589, 	cat = 'super', 						brand = 'annis', 		model = 's80', 				name = 'S80RR' 							}, -- 21
	{ version = '1.48', build = 2060, blacklist = false, hash = 1044193113, 	cat = 'super', 						brand = 'truffade', 	model = 'thrax', 			name = 'Thrax' 							}, -- 22

	-- GTAV 1.49 | Game Build 2060 |  20 vehicles | Diamond Casino Heist
	{ version = '1.49', build = 2060, blacklist = false, hash = 301304410, 		cat = 'motorcycles', 				brand = 'nagasaki', 	model = 'stryder', 			name = 'Stryder' 						}, -- 1
	{ version = '1.49', build = 2060, blacklist = false, hash = 0, 				cat = 'openwheel', 					brand = 'ocelot', 		model = '', 				name = 'R88 (Formula 1 Car)' 			}, -- 2
	{ version = '1.49', build = 2060, blacklist = false, hash = 409049982, 		cat = 'compacts', 					brand = 'dinka', 		model = 'kanjo', 			name = 'Blista Kanjo' 					}, -- 3
	{ version = '1.49', build = 2060, blacklist = false, hash = 0, 				cat = 'openwheel', 					brand = 'progen', 		model = '', 				name = 'PR4 (Formula 1 Car)' 			}, -- 4
	{ version = '1.49', build = 2060, blacklist = false, hash = 987469656, 		cat = 'sports', 					brand = 'dinka', 		model = 'sugoi', 			name = 'Sugoi' 							}, -- 5
	{ version = '1.49', build = 2060, blacklist = false, hash = 1693751655, 	cat = 'muscle', 					brand = 'declasse', 	model = 'yosemite2', 		name = 'Drift Yosemite' 				}, -- 6
	{ version = '1.49', build = 2060, blacklist = false, hash = 1456336509, 	cat = 'sports', 					brand = 'albany', 		model = 'vstr', 			name = 'V-STR' 							}, -- 7
	{ version = '1.49', build = 2060, blacklist = false, hash = 408825843, 		cat = 'offroad', 					brand = 'nagasaki', 	model = 'outlaw', 			name = 'Outlaw' 						}, -- 8
	{ version = '1.49', build = 2060, blacklist = false, hash = 0, 				cat = 'sports', 					brand = 'karin', 		model = '', 				name = 'Sultan Classic' 				}, -- 9
	{ version = '1.49', build = 2060, blacklist = false, hash = -1132721664, 	cat = 'sports', 					brand = 'overflod', 	model = 'imorgon', 			name = 'Imorgon' 						}, -- 10
	{ version = '1.49', build = 2060, blacklist = false, hash = 0, 				cat = 'offroad', 					brand = 'rune', 		model = '', 				name = 'Zhaba' 							}, -- 11
	{ version = '1.49', build = 2060, blacklist = false, hash = 394110044, 		cat = 'sportsclassics', 			brand = 'dewbauchee', 	model = 'jb7002', 			name = 'JB 700W' 						}, -- 12
	{ version = '1.49', build = 2060, blacklist = false, hash = 0, 				cat = {'rc', 'military'}, 			brand = 'unknown', 		model = '', 				name = 'Invade And Persuade RC Tank' 	}, -- 13
	{ version = '1.49', build = 2060, blacklist = false, hash = 960812448, 		cat = 'super', 						brand = 'grotti', 		model = 'furia', 			name = 'Furia' 							}, -- 14
	{ version = '1.49', build = 2060, blacklist = false, hash = 83136452, 		cat = 'suvs', 						brand = 'ubermacht', 	model = 'rebla', 			name = 'Rebla GTS' 						}, -- 15
	{ version = '1.49', build = 2060, blacklist = false, hash = -834353991, 	cat = 'sports', 					brand = 'lampadati', 	model = 'komoda', 			name = 'Komoda' 						}, -- 16
	{ version = '1.49', build = 2060, blacklist = false, hash = 1118611807, 	cat = 'compacts', 					brand = 'maxwell', 		model = 'asbo', 			name = 'Asbo' 							}, -- 17
	{ version = '1.49', build = 2060, blacklist = false, hash = 2031587082, 	cat = 'sportsclassics', 			brand = 'vapid', 		model = 'retinue2', 		name = 'Retinue MKII' 					}, -- 18
	{ version = '1.49', build = 2060, blacklist = false, hash = -1756021720, 	cat = 'offroad', 					brand = 'karin', 		model = 'everon', 			name = 'Everon' 						}, -- 19
	{ version = '1.49', build = 2060, blacklist = false, hash = 740289177, 		cat = 'offroad', 					brand = 'maxwell', 		model = 'vagrant', 			name = 'Vagrant' 						}, -- 20

	-- GTAV 1.51 | Game Build 2060 |  15 vehicles | Los Santos Summer Special
	{ version = '1.51', build = 1604, blacklist = false, hash = -2122646867, 	cat = 'muscle', 					brand = 'bravado', 		model = 'gauntlet5', 		name = 'Gauntlet Classic Custom' 		}, -- 1
	{ version = '1.51', build = 2060, blacklist = false, hash = 67753863, 		cat = 'offroad', 					brand = 'declasse', 	model = 'yosemite3', 		name = 'Yosemite Rancher' 				}, -- 2
	{ version = '1.51', build = 2060, blacklist = false, hash = 1802742206, 	cat = 'vans', 						brand = 'bravado', 		model = 'youga3', 			name = 'Youga Classic 4x4' 				}, -- 3
	{ version = '1.51', build = 2060, blacklist = false, hash = -913589546, 	cat = 'sedans', 					brand = 'benefactor', 	model = 'glendale2', 		name = 'Glendale Custom' 				}, -- 4
	{ version = '1.51', build = 2060, blacklist = false, hash = 1107404867, 	cat = 'sportsclassics', 			brand = 'vapid', 		model = 'peyote3', 			name = 'Peyote Custom' 					}, -- 5
	{ version = '1.51', build = 2060, blacklist = false, hash = 1717532765, 	cat = 'muscle', 					brand = 'albany', 		model = 'manana2', 			name = 'Manana Custom' 					}, -- 6
	{ version = '1.51', build = 2060, blacklist = false, hash = 2134119907, 	cat = 'muscle', 					brand = 'imponte', 		model = 'dukes3', 			name = 'Beater Dukes' 					}, -- 7
	{ version = '1.51', build = 2060, blacklist = false, hash = -1810806490, 	cat = 'suvs', 						brand = 'canis', 		model = 'seminole2', 		name = 'Seminole Frontier' 				}, -- 8
	{ version = '1.51', build = 2060, blacklist = false, hash = -838099166, 	cat = 'suvs', 						brand = 'dundreary', 	model = 'landstalker2', 	name = 'Landstalker XL' 				}, -- 9
	{ version = '1.51', build = 2060, blacklist = false, hash = -631322662, 	cat = 'sports', 					brand = 'maibatsu', 	model = 'penumbra2', 		name = 'Penumbra FF' 					}, -- 10
	{ version = '1.51', build = 2060, blacklist = false, hash = -2098954619, 	cat = 'compacts', 					brand = 'bf', 			model = 'club', 			name = 'Club' 							}, -- 11
	{ version = '1.51', build = 2060, blacklist = false, hash = -1728685474, 	cat = 'sports', 					brand = 'invetero', 	model = 'coquette4', 		name = 'Coquette D10' 					}, -- 12
	{ version = '1.51', build = 2060, blacklist = false, hash = -1358197432, 	cat = 'super', 						brand = 'lampadati', 	model = 'tigon', 			name = 'Tigon' 							}, -- 13
	{ version = '1.51', build = 2060, blacklist = false, hash = 0, 				cat = 'openwheel', 					brand = 'declasse', 	model = '', 				name = 'DR1 (IndyCar)' 					}, -- 14
	{ version = '1.51', build = 2060, blacklist = false, hash = 0, 				cat = 'openwheel', 					brand = 'benefactor', 	model = '', 				name = 'BR8 (Formula 1 Car)' 			}, -- 15

	-- GTAV 1.52 | Game Build 2189 |  20 vehicles | Cayo Perico Heist
	{ version = '1.52', build = 2189, blacklist = false, hash = 0, 				cat = 'boats', 						brand = 'nagasaki', 	model = '', 				name = 'Weaponized Dinghy' 				}, -- 1
	{ version = '1.52', build = 2189, blacklist = false, hash = 298565713, 		cat = 'offroad', 					brand = 'dinka', 		model = 'verus', 			name = 'Verus' 							}, -- 2
	{ version = '1.52', build = 2189, blacklist = false, hash = 0, 				cat = 'suvs', 						brand = 'mammoth', 		model = '', 				name = 'Squaddie' 						}, -- 3
	{ version = '1.52', build = 2189, blacklist = false, hash = 0, 				cat = 'military', 					brand = 'unknown', 		model = '', 				name = 'Vetir' 							}, -- 4
	{ version = '1.52', build = 2189, blacklist = false, hash = -1045911276, 	cat = 'utility', 					brand = 'vapid', 		model = 'slamtruck', 		name = 'Slamtruck' 						}, -- 5
	{ version = '1.52', build = 2189, blacklist = false, hash = 0, 				cat = {'motorcycles', 'offroad'}, 	brand = 'maibatsu', 	model = '', 				name = 'Manchez Scout' 					}, -- 6
	{ version = '1.52', build = 2189, blacklist = false, hash = 1429622905, 	cat = 'compacts', 					brand = 'grotti', 		model = 'brioso2', 			name = 'Brioso 300' 					}, -- 7
	{ version = '1.52', build = 2189, blacklist = false, hash = 1644055914, 	cat = 'compacts', 					brand = 'bf', 			model = 'weevil', 			name = 'Weevil' 						}, -- 8
	{ version = '1.52', build = 2189, blacklist = false, hash = -1149725334, 	cat = 'sports', 					brand = 'progen', 		model = 'italirsx', 		name = 'Itali RSX' 						}, -- 9
	{ version = '1.52', build = 2189, blacklist = false, hash = 0, 				cat = 'sports', 					brand = 'dinka', 		model = '', 				name = 'Veto Modern (Go-Kart)' 			}, -- 10
	{ version = '1.52', build = 2189, blacklist = false, hash = 0, 				cat = 'sports', 					brand = 'dinka', 		model = '', 				name = 'Veto Classic (Go-Kart)' 		}, -- 11
	{ version = '1.52', build = 2189, blacklist = false, hash = 0, 				cat = {'boats', 'military'}, 		brand = 'rune', 		model = '', 				name = 'Kosatka (Submarine HQ)'			}, -- 12
	{ version = '1.52', build = 2189, blacklist = false, hash = 1455990255, 	cat = 'sportsclassics', 			brand = 'pegassi', 		model = 'toreador', 		name = 'Toreador' 						}, -- 13
	{ version = '1.52', build = 2189, blacklist = false, hash = 0, 				cat = 'helicopters', 				brand = 'unknown', 		model = '', 				name = 'Sparrow' 						}, -- 14
	{ version = '1.52', build = 2189, blacklist = false, hash = 0, 				cat = 'boats', 						brand = 'kraken', 		model = '', 				name = 'Avisa' 							}, -- 15
	{ version = '1.52', build = 2189, blacklist = false, hash = 0, 				cat = 'boats', 						brand = 'unknown', 		model = '', 				name = 'Kurtz 31 Patrol Boat' 			}, -- 16
	{ version = '1.52', build = 2189, blacklist = false, hash = 1861786828, 	cat = 'boats', 						brand = 'shitzu', 		model = 'longfin', 			name = 'Longfin' 						}, -- 17
	{ version = '1.52', build = 2189, blacklist = false, hash = 0, 				cat = 'helicopters', 				brand = 'western', 		model = '', 				name = 'Annihilator Stealth' 			}, -- 18
	{ version = '1.52', build = 2189, blacklist = false, hash = 0, 				cat = 'planes', 					brand = 'unknown', 		model = '', 				name = 'RO-86 Alkonost' 				}, -- 19
	{ version = '1.52', build = 2189, blacklist = false, hash = -210308634, 	cat = 'offroad', 					brand = 'vapid', 		model = 'winky', 			name = 'Winky' 							}, -- 20

	-- GTAV 1.57 | Game Build 2372 |  17 vehicles | Los Santos Tuners
	{ version = '1.57', build = 2372, blacklist = false, hash = 1416471345, 	cat = {'coupes', 'tuners'}, 		brand = 'karin', 		model = 'previon', 			name = 'Previon' 						}, -- 1
	{ version = '1.57', build = 2372, blacklist = false, hash = 1755697647, 	cat = {'sports', 'tuners'}, 		brand = 'ubermacht', 	model = 'cypher', 			name = 'Cypher' 						}, -- 2
	{ version = '1.57', build = 2372, blacklist = false, hash = -291021213, 	cat = {'sports', 'tuners'}, 		brand = 'karin', 		model = 'sultan3', 			name = 'Sultan RS Classic' 				}, -- 3
	{ version = '1.57', build = 2372, blacklist = false, hash = 1304459735, 	cat = {'sports', 'tuners'}, 		brand = 'pfister', 		model = 'growler', 			name = 'Growler' 						}, -- 4
	{ version = '1.57', build = 2372, blacklist = false, hash = -1540373595, 	cat = {'sports', 'tuners'}, 		brand = 'emperor', 		model = 'vectre', 			name = 'Vectre' 						}, -- 5
	{ version = '1.57', build = 2372, blacklist = false, hash = 426742808, 		cat = {'muscle', 'tuners'}, 		brand = 'vapid', 		model = 'dominator7', 		name = 'Dominator ASP' 					}, -- 6
	{ version = '1.57', build = 2372, blacklist = false, hash = 1141395928, 	cat = {'sports', 'tuners'}, 		brand = 'pfister', 		model = 'comet6', 			name = 'Comet S2' 						}, -- 7
	{ version = '1.57', build = 2372, blacklist = false, hash = 1377217886, 	cat = {'sports', 'tuners'}, 		brand = 'annis', 		model = 'remus', 			name = 'Remus' 							}, -- 8
	{ version = '1.57', build = 2372, blacklist = false, hash = -1582061455, 	cat = {'sports', 'tuners'}, 		brand = 'dinka', 		model = 'jester4', 			name = 'Jester RR' 						}, -- 9
	{ version = '1.57', build = 2372, blacklist = false, hash = -1244461404, 	cat = {'sedans', 'tuners'}, 		brand = 'obey', 		model = 'tailgater2', 		name = 'Tailgater S' 					}, -- 10
	{ version = '1.57', build = 2372, blacklist = false, hash = 579912970, 		cat = {'sedans', 'tuners'}, 		brand = 'vulcar', 		model = 'warrener2', 		name = 'Warrener HKR' 					}, -- 11
	{ version = '1.57', build = 2372, blacklist = false, hash = -452604007, 	cat = {'sports', 'tuners'}, 		brand = 'dinka', 		model = 'rt3000', 			name = 'RT3000' 						}, -- 12
	{ version = '1.57', build = 2372, blacklist = false, hash = -1858654120, 	cat = {'sports', 'tuners'}, 		brand = 'annis', 		model = 'zr350', 			name = 'ZR350' 							}, -- 13
	{ version = '1.57', build = 2372, blacklist = false, hash = 736672010, 		cat = {'muscle', 'tuners'}, 		brand = 'vapid', 		model = 'dominator8', 		name = 'Dominator GTT' 					}, -- 14
	{ version = '1.57', build = 2372, blacklist = false, hash = 2038480341, 	cat = {'sports', 'tuners'}, 		brand = 'annis', 		model = 'euros', 			name = 'Euros' 							}, -- 15
	{ version = '1.57', build = 2372, blacklist = false, hash = -1507230520, 	cat = {'sports', 'tuners'}, 		brand = 'karin', 		model = 'futo2', 			name = 'Futo GTX' 						}, -- 16
	{ version = '1.57', build = 2372, blacklist = false, hash = -1193912403, 	cat = {'sports', 'tuners'}, 		brand = 'karin', 		model = 'calico', 			name = 'Calico GTF' 					}, -- 17

	-- GTAV 1.58 | Game Build 2545 |  16 vehicles | The Contract
	{ version = '1.58', build = 2545, blacklist = false, hash = 1993851908, 	cat = 'motorcycles', 				brand = 'western', 		model = 'reever', 			name = 'Reever' 						}, -- 1
	{ version = '1.58', build = 2545, blacklist = false, hash = -261346873, 	cat = 'suvs', 						brand = 'declasse', 	model = 'granger2', 		name = 'Granger 3600LX' 				}, -- 2
	{ version = '1.58', build = 2545, blacklist = false, hash = 662793086, 		cat = 'suvs', 						brand = 'obey', 		model = 'iwagen', 			name = 'I-Wagen' 						}, -- 3
	{ version = '1.58', build = 2545, blacklist = false, hash = 1353120668, 	cat = 'motorcycles', 				brand = 'nagasaki', 	model = 'shinobi', 			name = 'Shinobi' 						}, -- 4
	{ version = '1.58', build = 2545, blacklist = false, hash = -1726022652, 	cat = 'sports', 					brand = 'pfister', 		model = 'comet7', 			name = 'Comet S2 Cabrio' 				}, -- 5
	{ version = '1.58', build = 2545, blacklist = false, hash = -670086588, 	cat = 'offroad', 					brand = 'mammoth', 		model = 'patriot3', 		name = 'Patriot Mil-Spec' 				}, -- 6
	{ version = '1.58', build = 2545, blacklist = false, hash = 359875117, 		cat = 'suvs', 						brand = 'gallivanter', 	model = 'baller7', 			name = 'Baller ST' 						}, -- 7
	{ version = '1.58', build = 2545, blacklist = false, hash = 655665811, 		cat = 'super', 						brand = 'overflod', 	model = 'zeno', 			name = 'Zeno' 							}, -- 8
	{ version = '1.58', build = 2545, blacklist = false, hash = 1486521356, 	cat = 'vans', 						brand = 'bravado', 		model = 'youga4', 			name = 'Youga Custom' 					}, -- 9
	{ version = '1.58', build = 2545, blacklist = false, hash = -619930876, 	cat = 'muscle', 					brand = 'bravado', 		model = 'buffalo4', 		name = 'Buffalo STX' 					}, -- 10
	{ version = '1.58', build = 2545, blacklist = false, hash = -1444114309, 	cat = 'super', 						brand = 'pegassi', 		model = 'ignus', 			name = 'Ignus' 							}, -- 11
	{ version = '1.58', build = 2545, blacklist = false, hash = 1532171089, 	cat = 'sedans', 					brand = 'enus', 		model = 'deity', 			name = 'Deity' 							}, -- 12
	{ version = '1.58', build = 2545, blacklist = false, hash = -1527436269, 	cat = 'sedans', 					brand = 'lampadati', 	model = 'cinquemila', 		name = 'Cinquemila' 					}, -- 13
	{ version = '1.58', build = 2545, blacklist = false, hash = 629969764, 		cat = 'suvs', 						brand = 'pfister', 		model = 'astron', 			name = 'Astron' 						}, -- 14
	{ version = '1.58', build = 2545, blacklist = false, hash = -915234475, 	cat = 'super', 						brand = 'dewbauchee', 	model = 'champion', 		name = 'Champion' 						}, -- 15
	{ version = '1.58', build = 2545, blacklist = false, hash = 461465043, 		cat = 'suvs', 						brand = 'enus', 		model = 'jubilee', 			name = 'Jubilee' 						}, -- 16

	-- GTAV 1.** | Game Build **** |   5 vehicles | PS5 & Xbox Series X/S Release
}