Fsx = Fsx or {}
Fsx.config = Fsx.config or {}

-- vehicle data and other info comes from
-- https://www.gtabase.com/grand-theft-auto-v/vehicles/
-- https://gtahash.ru/car/
-- https://gta.fandom.com/wiki/Vehicles_in_GTA_Online

-- contains all gta vehicles
Fsx.config.vehicles = {
	{ req_g_build = 1604, hash = 2072687711, 	blacklist = false, category = 'sports', 		brand = 'Grotti', 		model = 'carbonizzare', name = 'Carbonizzare' },
	{ req_g_build = 1604, hash = 1349725314, 	blacklist = false, category = 'coupes', 		brand = 'Übermacht', 	model = 'sentinel', name = 'Sentinel' },
	{ req_g_build = 1604, hash = -1696146015, 	blacklist = false, category = 'super', 			brand = 'Vapid', 		model = 'bullet', name = 'Bullet' },
	{ req_g_build = 1604, hash = -1130810103, 	blacklist = false, category = 'compacts', 		brand = 'Karin', 		model = 'dilettante', name = 'Dilettante' },
	{ req_g_build = 1604, hash = -89291282, 	blacklist = false, category = 'coupes', 		brand = 'Lampadati', 	model = 'felon2', name = 'Felon GT' },
	{ req_g_build = 1604, hash = -1122289213, 	blacklist = false, category = 'coupes', 		brand = 'Übermacht', 	model = 'zion', name = 'Zion' },
	{ req_g_build = 1604, hash = -2128233223, 	blacklist = false, category = 'offroad', 		brand = 'Annis', 		model = 'blazer', name = 'Blazer' },
	{ req_g_build = 1604, hash = -16948145, 	blacklist = false, category = 'vans', 			brand = 'Bravado', 		model = 'bison', name = 'Bison' },
	{ req_g_build = 1604, hash = 1348744438, 	blacklist = false, category = 'sedans', 		brand = 'Ubermacht', 	model = 'oracle', name = 'Oracle' },
	{ req_g_build = 1604, hash = -1660661558, 	blacklist = false, category = 'helicopters', 	brand = 'Unknown', 		model = 'maverick', name = 'Maverick' },
	{ req_g_build = 1604, hash = -599568815, 	blacklist = false, category = 'offroad', 		brand = 'Vapid', 		model = 'sadler', name = 'Sadler' },
	{ req_g_build = 1604, hash = -1746576111, 	blacklist = false, category = 'planes', 		brand = 'Unknown', 		model = 'mammatus', name = 'Mammatus' },
	{ req_g_build = 1604, hash = -2064372143, 	blacklist = false, category = 'offroad', 		brand = 'Canis', 		model = 'mesa3', name = 'Mesa Merryweather' },
	{ req_g_build = 1604, hash = -48031959, 	blacklist = false, category = 'offroad', 		brand = 'Nagasaki', 	model = 'blazer2', name = 'Blazer Lifeguard' },
	{ req_g_build = 1604, hash = -1214505995, 	blacklist = false, category = 'planes', 		brand = 'Buckingham', 	model = 'shamal', name = 'Shamal' },
	{ req_g_build = 1604, hash = -1685021548, 	blacklist = false, category = 'muscle', 		brand = 'Declasse', 	model = 'sabregt', name = 'Sabre Turbo' },
	{ req_g_build = 1604, hash = 745926877, 	blacklist = false, category = 'helicopters', 	brand = 'Unknown', 		model = 'buzzard2', name = 'Buzzard' },
	{ req_g_build = 1604, hash = -810318068, 	blacklist = false, category = 'vans', 			brand = 'Vapid', 		model = 'speedo', name = 'Speedo' },
	{ req_g_build = 1604, hash = -227741703, 	blacklist = false, category = 'muscle', 		brand = 'Imponte', 		model = 'ruiner', name = 'Ruiner' },
	{ req_g_build = 1604, hash = 1229411063, 	blacklist = false, category = 'helicopters', 	brand = 'Unknown', 		model = 'seasparrow2', name = 'Sparrow' },
	{ req_g_build = 1604, hash = 11251904, 	blacklist = false, category = 'motorcycles', 	brand = 'Nagasaki', 	model = 'carbonrs', name = 'Carbon RS' },
	{ req_g_build = 1604, hash = 1131912276, 	blacklist = false, category = 'cycles', 		brand = 'Bike', 		model = 'bmx', name = 'BMX' },
	{ req_g_build = 1604, hash = 1337041428, 	blacklist = false, category = 'suvs', 			brand = 'Benefactor', 	model = 'serrano', name = 'Serrano' },
	{ req_g_build = 1604, hash = -1995326987, 	blacklist = false, category = 'sports', 		brand = 'Benefactor', 	model = 'feltzer2', name = 'Feltzer' },
	{ req_g_build = 1604, hash = -789894171, 	blacklist = false, category = 'suvs', 			brand = 'Albany', 		model = 'cavalcade2', name = 'Cavalcade' },
	{ req_g_build = 1604, hash = 884422927, 	blacklist = false, category = 'suvs', 			brand = 'Emperor', 		model = 'habanero', name = 'Habanero' },
	{ req_g_build = 1604, hash = 621481054, 	blacklist = false, category = 'planes', 		brand = 'Buckingham', 	model = 'luxor', name = 'Luxor' },
	{ req_g_build = 1604, hash = -1894894188, 	blacklist = false, category = 'sedans', 		brand = 'Cheval', 		model = 'surge', name = 'Surge' },
	{ req_g_build = 1604, hash = -120287622, 	blacklist = false, category = 'vans', 			brand = 'Zirconium', 	model = 'journey', name = 'Journey' },
	{ req_g_build = 1604, hash = -2095439403, 	blacklist = false, category = 'muscle', 		brand = 'Imponte', 		model = 'phoenix', name = 'Phoenix' },
	{ req_g_build = 1604, hash = -1543762099, 	blacklist = false, category = 'suvs', 			brand = 'Bravado', 		model = 'gresley', name = 'Gresley' },
	{ req_g_build = 1604, hash = -825837129, 	blacklist = false, category = 'muscle', 		brand = 'Declasse', 	model = 'vigero', name = 'Vigero' },
	{ req_g_build = 1604, hash = -1934452204, 	blacklist = false, category = 'sports', 		brand = 'Dewbauchee', 	model = 'rapidgt', name = 'Rapid GT' },
	{ req_g_build = 1604, hash = -1453280962, 	blacklist = false, category = 'motorcycles', 	brand = 'Maibatsu', 	model = 'sanchez2', name = 'Sanchez' },
	{ req_g_build = 1604, hash = 1086534307, 	blacklist = false, category = 'motorcycles', 	brand = 'Maibatsu', 	model = 'manchez2', name = 'Manchez' },
	{ req_g_build = 1604, hash = -2098947590, 	blacklist = false, category = 'sportsclassics', brand = 'Grotti', 		model = 'stingergt', name = 'Stinger GT' },
	{ req_g_build = 1604, hash = 1269098716, 	blacklist = false, category = 'suvs', 			brand = 'Dundreary', 	model = 'landstalker', name = 'Landstalker' },
	{ req_g_build = 1604, hash = 908897389, 	blacklist = false, category = 'boats', 			brand = 'Lampadati', 	model = 'toro2', name = 'Toro' },
	{ req_g_build = 1604, hash = 437538602, 	blacklist = false, category = 'boats', 			brand = 'Pegassi', 		model = 'speeder2', name = 'Speeder' },
	{ req_g_build = 1604, hash = -282946103, 	blacklist = false, category = 'boats', 			brand = 'Suntrap', 		model = 'suntrap', name = 'Shitzu' },
	{ req_g_build = 1604, hash = -511601230, 	blacklist = false, category = 'coupes', 		brand = 'Übermacht', 	model = 'oracle2', name = 'Oracle XS' },
	{ req_g_build = 1604, hash = 1507916787, 	blacklist = false, category = 'muscle', 		brand = 'Cheval', 		model = 'picador', name = 'Picador' },
	{ req_g_build = 1604, hash = 867467158, 	blacklist = false, category = 'boats', 			brand = 'Dinghy', 		model = 'dinghy4', name = 'Nagasaki' },
	{ req_g_build = 1604, hash = 509498602, 	blacklist = false, category = 'boats', 			brand = 'Dinghy', 		model = 'dinghy3', name = 'Nagasaki' },
	{ req_g_build = 1604, hash = 276773164, 	blacklist = false, category = 'boats', 			brand = 'Dinghy', 		model = 'dinghy2', name = 'Nagasaki' },
	{ req_g_build = 1604, hash = 1033245328, 	blacklist = false, category = 'boats', 			brand = 'Dinghy', 		model = 'dinghy', name = 'Nagasaki' },
	{ req_g_build = 1604, hash = 1123216662, 	blacklist = false, category = 'sedans', 		brand = 'Enus', 		model = 'superd', name = 'Super Diamond' },
	{ req_g_build = 1604, hash = 1448677353, 	blacklist = false, category = 'boats', 			brand = 'Tropic', 		model = 'tropic2', name = 'Shitzu' },
	{ req_g_build = 1604, hash = -114291515, 	blacklist = false, category = 'motorcycles', 	brand = 'Pegassi', 		model = 'bati', name = 'Bati 801' },
	{ req_g_build = 1604, hash = -1450650718, 	blacklist = false, category = 'compacts', 		brand = 'Bollokan', 	model = 'prairie', name = 'Prairie' },
	{ req_g_build = 1604, hash = -1661854193, 	blacklist = false, category = 'offroad', 		brand = 'Annis', 		model = 'dune', name = 'Dune Buggy' },
	{ req_g_build = 1604, hash = -326143852, 	blacklist = false, category = 'muscle', 		brand = 'Imponte', 		model = 'dukes2', name = 'Dukes O\'Death' },
	{ req_g_build = 1604, hash = -311022263, 	blacklist = false, category = 'boats', 			brand = 'Speedophile', 	model = 'seashark3', name = 'Seashark' },
	{ req_g_build = 1604, hash = -808831384, 	blacklist = false, category = 'suvs', 			brand = 'Gallivanter', 	model = 'baller', name = 'Baller' },
	{ req_g_build = 1604, hash = 1032823388, 	blacklist = false, category = 'sports', 		brand = 'Obey', 		model = 'ninef', name = '9F' },
	{ req_g_build = 1604, hash = -616331036, 	blacklist = false, category = 'boats', 			brand = 'Speedophile', 	model = 'seashark2', name = 'Seashark' },
	{ req_g_build = 1604, hash = 400514754, 	blacklist = false, category = 'boats', 			brand = 'Shitzu', 		model = 'squalo', name = 'Squalo' },
	{ req_g_build = 1604, hash = -1622444098, 	blacklist = false, category = 'super', 			brand = 'Coil', 		model = 'voltic', name = 'Voltic' },
	{ req_g_build = 1604, hash = 1009171724, 	blacklist = false, category = 'muscle', 		brand = 'Vapid', 		model = 'impaler2', name = 'impaler2' },
	{ req_g_build = 1604, hash = 1737773231, 	blacklist = false, category = 'sports', 		brand = 'Dewbauchee', 	model = 'rapidgt2', name = 'Rapid GT Convertible' },
	{ req_g_build = 1604, hash = 65402552, 	blacklist = false, category = 'vans', 			brand = 'Bravado', 		model = 'youga', name = 'Youga' },
	{ req_g_build = 1604, hash = 290013743, 	blacklist = false, category = 'boats', 			brand = 'Tropic', 		model = 'tropic', name = 'Shitzu' },
	{ req_g_build = 1604, hash = 699456151, 	blacklist = false, category = 'vans', 			brand = 'BF', 			model = 'surfer', name = 'Surfer' },
	{ req_g_build = 1604, hash = -310465116, 	blacklist = false, category = 'vans', 			brand = 'Vapid', 		model = 'minivan', name = 'Minivan' },
	{ req_g_build = 1604, hash = 1177543287, 	blacklist = false, category = 'suvs', 			brand = 'Benefactor', 	model = 'dubsta', name = 'Dubsta' },
	{ req_g_build = 1604, hash = -1269889662, 	blacklist = false, category = 'offroad', 		brand = 'Nagasaki', 	model = 'blazer3', name = 'Blazer Hot Rod' },
	{ req_g_build = 1604, hash = -1809822327, 	blacklist = false, category = 'sedans', 		brand = 'Declasse', 	model = 'asea', name = 'Asea' },
	{ req_g_build = 1604, hash = 1069929536, 	blacklist = false, category = 'vans', 			brand = 'Vapid', 		model = 'bobcatxl', name = 'Bobcat XL Open' },
	{ req_g_build = 1604, hash = 861409633, 	blacklist = false, category = 'boats', 			brand = 'Jetmax', 		model = 'jetmax', name = 'Shitzu' },
	{ req_g_build = 1604, hash = -1216765807, 	blacklist = false, category = 'super', 			brand = 'Truffade', 	model = 'adder', name = 'Adder' },
	{ req_g_build = 1604, hash = -746882698, 	blacklist = false, category = 'sports', 		brand = 'Benefactor', 	model = 'schwarzer', name = 'Schwartzer' },
	{ req_g_build = 1604, hash = -836512833, 	blacklist = false, category = 'cycles', 		brand = 'Bike', 		model = 'fixter', name = 'Fixter' },
	{ req_g_build = 1604, hash = -400295096, 	blacklist = false, category = 'cycles', 		brand = 'Bike', 		model = 'tribike3', name = 'Tri Bike 3' },
	{ req_g_build = 1604, hash = -1041692462, 	blacklist = false, category = 'sports', 		brand = 'Bravado', 		model = 'banshee', name = 'Banshee' },
	{ req_g_build = 1604, hash = -1150599089, 	blacklist = false, category = 'sedans', 		brand = 'Albany', 		model = 'primo', name = 'Primo' },
	{ req_g_build = 1604, hash = 850565707, 	blacklist = false, category = 'suvs', 			brand = 'Karin', 		model = 'bjxl', name = 'BeeJay XL' },
	{ req_g_build = 1604, hash = -1045541610, 	blacklist = false, category = 'sports', 		brand = 'Pfister', 		model = 'comet2', name = 'Comet' },
	{ req_g_build = 1604, hash = -2140431165, 	blacklist = false, category = 'motorcycles', 	brand = 'WMC', 			model = 'bagger', name = 'Bagger' },
	{ req_g_build = 1604, hash = -1883869285, 	blacklist = false, category = 'sedans', 		brand = 'Declasse', 	model = 'premier', name = 'Premier' },
	{ req_g_build = 1604, hash = -1291952903, 	blacklist = false, category = 'super', 			brand = 'Överflöd', 	model = 'entityxf', name = 'Entity XF' },
	{ req_g_build = 1604, hash = 886934177, 	blacklist = false, category = 'sedans', 		brand = 'Karin', 		model = 'intruder', name = 'Intruder' },
	{ req_g_build = 1604, hash = -570033273, 	blacklist = false, category = 'motorcycles', 	brand = 'Western', 		model = 'zombieb', name = 'Zombie Chopper' },
	{ req_g_build = 1604, hash = -1311154784, 	blacklist = false, category = 'super', 			brand = 'Grotti', 		model = 'cheetah', name = 'Cheetah' },
	{ req_g_build = 1604, hash = -1775728740, 	blacklist = false, category = 'suvs', 			brand = 'Declasse', 	model = 'granger', name = 'Granger' },
	{ req_g_build = 1604, hash = 744705981, 	blacklist = false, category = 'helicopters', 	brand = 'Unknown', 		model = 'frogger', name = 'Frogger' },
	{ req_g_build = 1604, hash = 1127861609, 	blacklist = false, category = 'cycles', 		brand = 'Bike', 		model = 'tribike', name = 'Tri Bike' },
	{ req_g_build = 1604, hash = 2006142190, 	blacklist = false, category = 'motorcycles', 	brand = 'WMC', 			model = 'daemon', name = 'Daemon' },
	{ req_g_build = 1604, hash = 1949211328, 	blacklist = false, category = 'helicopters', 	brand = 'Unknown', 		model = 'frogger2', name = 'Frogger' },
	{ req_g_build = 1604, hash = 788045382, 	blacklist = false, category = 'motorcycles', 	brand = 'Maibatsu', 	model = 'sanchez', name = 'Sanchez Livery' },
	{ req_g_build = 1604, hash = 758895617, 	blacklist = false, category = 'sportsclassics', brand = 'Truffade', 	model = 'ztype', name = 'Z-Type' },
	{ req_g_build = 1604, hash = 1531094468, 	blacklist = false, category = 'sportsclassics', brand = 'Declasse', 	model = 'tornado2', name = 'Tornado Gang' },
	{ req_g_build = 1604, hash = 464687292, 	blacklist = false, category = 'sportsclassics', brand = 'Declasse', 	model = 'tornado', name = 'Tornado' },
	{ req_g_build = 1604, hash = 1545842587, 	blacklist = false, category = 'sportsclassics', brand = 'Grotti', 		model = 'stinger', name = 'Stinger' },
	{ req_g_build = 1604, hash = 1777363799, 	blacklist = false, category = 'sedans', 		brand = 'Albany', 		model = 'washington', name = 'Washington' },
	{ req_g_build = 1604, hash = -394074634, 	blacklist = false, category = 'suvs', 			brand = 'Benefactor', 	model = 'dubsta2', name = 'Dubsta Luxuary' },
	{ req_g_build = 1604, hash = 1830407356, 	blacklist = false, category = 'sportsclassics', brand = 'Vapid', 		model = 'peyote', name = 'Peyote' },
	{ req_g_build = 1604, hash = -433375717, 	blacklist = false, category = 'sportsclassics', brand = 'Pegassi', 		model = 'monroe', name = 'Monroe' },
	{ req_g_build = 1604, hash = 418536135, 	blacklist = false, category = 'super', 			brand = 'Pegassi', 		model = 'infernus', name = 'Infernus' },
	{ req_g_build = 1604, hash = -2124201592, 	blacklist = false, category = 'muscle', 		brand = 'Albany', 		model = 'manana', name = 'Manana' },
	{ req_g_build = 1604, hash = 872704284, 	blacklist = false, category = 'sports', 		brand = 'Karin', 		model = 'sultan2', name = 'Sultan Custom' },
	{ req_g_build = 1604, hash = 1051415893, 	blacklist = false, category = 'sportsclassics', brand = 'Dewbauchee', 	model = 'jb700', name = 'JB 700' },
	{ req_g_build = 1604, hash = -1477580979, 	blacklist = false, category = 'sedans', 		brand = 'Vapid', 		model = 'stanier', name = 'Stanier' },
	{ req_g_build = 1604, hash = -1743316013, 	blacklist = false, category = 'vans', 			brand = 'Declasse', 	model = 'burrito3', name = 'Burrito' },
	{ req_g_build = 1604, hash = -1289722222, 	blacklist = false, category = 'sedans', 		brand = 'Vulcar', 		model = 'ingot', name = 'Ingot' },
	{ req_g_build = 1604, hash = -1961627517, 	blacklist = false, category = 'sedans', 		brand = 'Dundreary', 	model = 'stretch', name = 'Stretch' },
	{ req_g_build = 1604, hash = -1461482751, 	blacklist = false, category = 'sports', 		brand = 'Obey', 		model = 'ninef2', name = '9F Cabrio' },
	{ req_g_build = 1604, hash = -624529134, 	blacklist = false, category = 'coupes', 		brand = 'Ocelot', 		model = 'jackal', name = 'Jackal' },
	{ req_g_build = 1604, hash = -2096690334, 	blacklist = false, category = 'muscle', 		brand = 'Vapid', 		model = 'impaler', name = 'impaler' },
	{ req_g_build = 1604, hash = -566387422, 	blacklist = false, category = 'sports', 		brand = 'Annis', 		model = 'elegy2', name = 'Elegy RH8' },
	{ req_g_build = 1604, hash = 1593933419, 	blacklist = false, category = 'helicopters', 	brand = 'Unknown', 		model = 'seasparrow3', name = 'Sparrow' },
	{ req_g_build = 1604, hash = -1177863319, 	blacklist = false, category = 'compacts', 		brand = 'Weeny', 		model = 'issi2', name = 'Issi' },
	{ req_g_build = 1604, hash = -685276541, 	blacklist = false, category = 'sedans', 		brand = 'Albany', 		model = 'emperor', name = 'Emperor' },
	{ req_g_build = 1604, hash = 1221512915, 	blacklist = false, category = 'suvs', 			brand = 'Canis', 		model = 'seminole', name = 'Seminole' },
	{ req_g_build = 1604, hash = -186537451, 	blacklist = false, category = 'cycles', 		brand = 'Bike', 		model = 'scorcher', name = 'Scorcher' },
	{ req_g_build = 1604, hash = -1255452397, 	blacklist = false, category = 'sedans', 		brand = 'Benefactor', 	model = 'schafter2', name = 'Schafter' },
	{ req_g_build = 1604, hash = 448402357, 	blacklist = false, category = 'cycles', 		brand = 'Bike', 		model = 'cruiser', name = 'Cruiser' },
	{ req_g_build = 1604, hash = 914654722, 	blacklist = false, category = 'offroad', 		brand = 'Canis', 		model = 'mesa', name = 'Mesa' },
	{ req_g_build = 1604, hash = -1137532101, 	blacklist = false, category = 'suvs', 			brand = 'Fathom', 		model = 'fq2', name = 'FQ2' },
	{ req_g_build = 1604, hash = -1924800695, 	blacklist = false, category = 'muscle', 		brand = 'Vapid', 		model = 'impaler3', name = 'impaler3' },
	{ req_g_build = 1604, hash = -2045594037, 	blacklist = false, category = 'offroad', 		brand = 'Annis', 		model = 'rebel2', name = 'Rebel' },
	{ req_g_build = 1604, hash = -891462355, 	blacklist = false, category = 'motorcycles', 	brand = 'Pegassi', 		model = 'bati2', name = 'Bati 801RR' },
	{ req_g_build = 1604, hash = 1723137093, 	blacklist = false, category = 'sedans', 		brand = 'Zirconium', 	model = 'stratum', name = 'Stratum' },
	{ req_g_build = 1604, hash = -14495224, 	blacklist = false, category = 'sedans', 		brand = 'Dundreary', 	model = 'regina', name = 'Regina' },
	{ req_g_build = 1604, hash = 55628203, 	blacklist = false, category = 'motorcycles', 	brand = 'Pegassi', 		model = 'faggio2', name = 'Faggio' },
	{ req_g_build = 1604, hash = -1744505657, 	blacklist = false, category = 'muscle', 		brand = 'Vapid', 		model = 'impaler4', name = 'impaler4' },
	{ req_g_build = 1604, hash = -1673356438, 	blacklist = false, category = 'planes', 		brand = 'Unknown', 		model = 'velum', name = 'Velum' },
	{ req_g_build = 1604, hash = 108773431, 	blacklist = false, category = 'sports', 		brand = 'Invetero', 	model = 'coquette', name = 'Coquette' },
	{ req_g_build = 1604, hash = 384071873, 	blacklist = false, category = 'sports', 		brand = 'Benefactor', 	model = 'surano', name = 'Surano' },
	{ req_g_build = 1604, hash = -909201658, 	blacklist = false, category = 'motorcycles', 	brand = 'Shitzu', 		model = 'pcj', name = 'PCJ-600' },
	{ req_g_build = 1604, hash = 736902334, 	blacklist = false, category = 'sports', 		brand = 'Bravado', 		model = 'buffalo2', name = 'Buffalo S' },
	{ req_g_build = 1604, hash = -304802106, 	blacklist = false, category = 'sports', 		brand = 'Bravado', 		model = 'buffalo', name = 'Buffalo' },
	{ req_g_build = 1604, hash = 80636076, 	blacklist = false, category = 'muscle', 		brand = 'Vapid', 		model = 'dominator', name = 'Dominator' },
	{ req_g_build = 1604, hash = 1645267888, 	blacklist = false, category = 'offroad', 		brand = 'Declasse', 	model = 'rancherxl', name = 'Rancher XL' },
	{ req_g_build = 1604, hash = -1043459709, 	blacklist = false, category = 'boats', 			brand = 'Dinka', 		model = 'marquis', name = 'Marquis' },
	{ req_g_build = 1604, hash = 1682114128, 	blacklist = false, category = 'compacts', 		brand = 'Karin', 		model = 'dilettante2', name = 'Dilettante Patrol' },
	{ req_g_build = 1604, hash = -893578776, 	blacklist = false, category = 'motorcycles', 	brand = 'Pegassi', 		model = 'ruffian', name = 'Ruffian' },
	{ req_g_build = 1604, hash = 2136773105, 	blacklist = false, category = 'suvs', 			brand = 'Obey', 		model = 'rocoto', name = 'Rocoto' },
	{ req_g_build = 1604, hash = 544021352, 	blacklist = false, category = 'sports', 		brand = 'Hijak', 		model = 'khamelion', name = 'Khamelion' },
	{ req_g_build = 1604, hash = -377465520, 	blacklist = false, category = 'sports', 		brand = 'Maibatsu', 	model = 'penumbra', name = 'Penumbra' },
	{ req_g_build = 1604, hash = -1008861746, 	blacklist = false, category = 'sedans', 		brand = 'Obey', 		model = 'tailgater', name = 'Tailgater' },
	{ req_g_build = 1604, hash = -1651067813, 	blacklist = false, category = 'suvs', 			brand = 'Vapid', 		model = 'radi', name = 'Radius' },
	{ req_g_build = 1604, hash = 1126868326, 	blacklist = false, category = 'offroad', 		brand = 'Annis', 		model = 'bfinjection', name = 'Bf Injection' },
	{ req_g_build = 1604, hash = -5153954, 	blacklist = false, category = 'coupes', 		brand = 'Dewbauchee', 	model = 'exemplar', name = 'Exemplar' },
	{ req_g_build = 1604, hash = -1233807380, 	blacklist = false, category = 'cycles', 		brand = 'Bike', 		model = 'tribike2', name = 'Tri Bike 2' },
	{ req_g_build = 1604, hash = -591610296, 	blacklist = false, category = 'coupes', 		brand = 'Ocelot', 		model = 'f620', name = 'F620' },
	{ req_g_build = 1604, hash = -1903012613, 	blacklist = false, category = 'sedans', 		brand = 'Karin', 		model = 'asterope', name = 'Asterope' },
	{ req_g_build = 1604, hash = 1909141499, 	blacklist = false, category = 'sedans', 		brand = 'Cheval', 		model = 'fugitive', name = 'Fugitive' },
	{ req_g_build = 1604, hash = -1189015600, 	blacklist = false, category = 'offroad', 		brand = 'Annis', 		model = 'sandking', name = 'Sandking' },
	{ req_g_build = 1604, hash = 142944341, 	blacklist = false, category = 'suvs', 			brand = 'Gallivanter', 	model = 'baller2', name = 'Baller' },
	{ req_g_build = 1604, hash = -1670998136, 	blacklist = false, category = 'motorcycles', 	brand = 'Dinka', 		model = 'double', name = 'Double-T' },
	{ req_g_build = 1604, hash = -1193103848, 	blacklist = false, category = 'coupes', 		brand = 'Übermacht', 	model = 'zion2', name = 'Zion Cabrio' },
	{ req_g_build = 1604, hash = -808457413, 	blacklist = false, category = 'suvs', 			brand = 'Mammoth', 		model = 'patriot', name = 'Patriot' },
	{ req_g_build = 1604, hash = 970356638, 	blacklist = false, category = 'planes', 		brand = 'Unknown', 		model = 'duster', name = 'Duster' },
	{ req_g_build = 1604, hash = -2122757008, 	blacklist = false, category = 'planes', 		brand = 'Unknown', 		model = 'stunt', name = 'Mallard' },
	{ req_g_build = 1604, hash = -344943009, 	blacklist = false, category = 'compacts', 		brand = 'Dinka', 		model = 'blista', name = 'Blista' },
	{ req_g_build = 1604, hash = 989381445, 	blacklist = false, category = 'offroad', 		brand = 'Annis', 		model = 'sandking2', name = 'Sandking SWB' },
	{ req_g_build = 1604, hash = 301427732, 	blacklist = false, category = 'motorcycles', 	brand = 'LCC', 			model = 'hexer', name = 'Hexer' },
	{ req_g_build = 1604, hash = 330661258, 	blacklist = false, category = 'coupes', 		brand = 'Enus', 		model = 'cogcabrio', name = 'Cognoscenti Cabrio' },
	{ req_g_build = 1604, hash = 1162065741, 	blacklist = false, category = 'vans', 			brand = 'Bravado', 		model = 'rumpo', name = 'Rumpo' },
	{ req_g_build = 1604, hash = 2016857647, 	blacklist = false, category = 'coupes', 		brand = 'Karin', 		model = 'futo', name = 'Futo' },
	{ req_g_build = 1604, hash = 2006667053, 	blacklist = false, category = 'muscle', 		brand = 'Declasse', 	model = 'voodoo', name = 'Voodoo' },
	{ req_g_build = 1604, hash = 2006918058, 	blacklist = false, category = 'suvs', 			brand = 'Albany', 		model = 'cavalcade', name = 'Cavalcade' },
	{ req_g_build = 1604, hash = 338562499, 	blacklist = false, category = 'super', 			brand = 'Pegassi', 		model = 'vacca', name = 'Vacca' },
	{ req_g_build = 1604, hash = 970598228, 	blacklist = false, category = 'sports', 		brand = 'Karin', 		model = 'sultan', name = 'Sultan' },
	{ req_g_build = 1604, hash = -1800170043, 	blacklist = false, category = 'muscle', 		brand = 'Bravado', 		model = 'gauntlet', name = 'Gauntlet' },
	{ req_g_build = 1604, hash = -682211828, 	blacklist = false, category = 'muscle', 		brand = 'Albany', 		model = 'buccaneer', name = 'Buccaneer' },
	{ req_g_build = 1604, hash = 37348240, 		blacklist = false, category = 'muscle', 		brand = 'Vapid', 		model = 'hotknife', name = 'Hotknife' },
	{ req_g_build = 1604, hash = -1030275036, 	blacklist = false, category = 'boats', 			brand = 'Speedophile', 	model = 'seashark', name = 'Seashark' },
	{ req_g_build = 1604, hash = 873639469, 	blacklist = false, category = 'coupes', 		brand = 'Übermacht', 	model = 'sentinel2', name = 'Sentinel XS' },
	{ req_g_build = 1604, hash = -140902153, 	blacklist = false, category = 'motorcycles', 	brand = 'Shitzu', 		model = 'vader', name = 'Vader' },
	{ req_g_build = 1604, hash = -634879114, 	blacklist = false, category = 'motorcycles', 	brand = 'Principe', 	model = 'nemesis', name = 'Nemesis' },
	{ req_g_build = 1604, hash = 1672195559, 	blacklist = false, category = 'motorcycles', 	brand = 'Dinka', 		model = 'akuma', name = 'Akuma' },
	{ req_g_build = 1604, hash = -391594584, 	blacklist = false, category = 'coupes', 		brand = 'Lampadati', 	model = 'felon', name = 'Felon' },
	{ req_g_build = 1604, hash = 1343932732, 	blacklist = false, category = 'commercial', 	brand = 'maibatsu', 	model = 'mule', 		name = 'Mule' 					},
	{ req_g_build = 1604, hash = 1343932732, 	blacklist = false, category = 'commercial', 	brand = 'maibatsu', 	model = 'mule2', 		name = 'Mule' 					},
	{ req_g_build = 1604, hash = -1987130134, 	blacklist = false, category = 'vans', 			brand = 'brute', 		model = 'boxville', 	name = 'Boxville 1' 			},
	{ req_g_build = 1604, hash = -233098306, 	blacklist = false, category = 'vans', 			brand = 'brute', 		model = 'boxville2', 	name = 'Boxville 2' 			},
	{ req_g_build = 1604, hash = 121658888, 	blacklist = false, category = 'vans', 			brand = 'brute', 		model = 'boxville3', 	name = 'Boxville 3' 			},
	{ req_g_build = 1604, hash = 444171386, 	blacklist = false, category = 'vans', 			brand = 'brute', 		model = 'boxville4', 	name = 'Boxville 4' 			},



	-- GTAV 1.01 | Game Build 1604 | 251 vehicles | Game Launch
	{ req_g_build = 1604, hash = 0, blacklist = false, category = '', brand = '', model = '', name = '' },

	-- GTAV 1.06 | Game Build 1604 |   4 vehicles | Beach Bum
	{ req_g_build = 1604, hash = 1488164764, 	blacklist = false, category = 'vans', 			brand = 'Bravado', 		model = 'paradise', name = 'Paradise' },
	{ req_g_build = 1604, hash = 231083307, 	blacklist = false, category = 'boats', 			brand = 'Pegassi', 		model = 'speeder', name = 'Speeder' },
	{ req_g_build = 1604, hash = -349601129, 	blacklist = false, category = 'offroad', 		brand = 'Annis', 		model = 'bifta', name = 'Bifta' },
	{ req_g_build = 1604, hash = 92612664, 	blacklist = false, category = 'offroad', 		brand = 'Canis', 		model = 'kalahari', name = 'Kalahari' },

	-- GTAV 1.10 | Game Build 1604 |   1 vehicles | Valentine's Day Massacre
	{ req_g_build = 1604, hash = 117401876, 	blacklist = false, category = 'sportsclassics', brand = 'Albany', 		model = 'btype', name = 'Roosevelt' },

	-- GTAV 1.11 | Game Build 1604 |   4 vehicles | Business
	{ req_g_build = 1604, hash = 1341619767, 	blacklist = false, category = 'planes', 		brand = 'Buckingham', 	model = 'vestra', name = 'Vestra' },
	{ req_g_build = 1604, hash = 408192225, 	blacklist = false, category = 'super', 			brand = 'Grotti', 		model = 'turismor', name = 'Turismo R' },
	{ req_g_build = 1604, hash = 767087018, 	blacklist = false, category = 'sports', 		brand = 'Albany', 		model = 'alpha', name = 'Alpha' },
	{ req_g_build = 1604, hash = -1297672541, 	blacklist = false, category = 'sports', 		brand = 'Dinka', 		model = 'jester', name = 'Jester' },

	-- GTAV 1.13 | Game Build 1604 |   4 vehicles | High Life
	{ req_g_build = 1604, hash = -142942670, 	blacklist = false, category = 'sports', 		brand = 'Dewbauchee', 	model = 'massacro', name = 'Massacro' },
	{ req_g_build = 1604, hash = -1403128555, 	blacklist = false, category = 'super', 			brand = 'Pegassi', 		model = 'zentorno', name = 'Zentorno' },
	{ req_g_build = 1604, hash = 486987393, 	blacklist = false, category = 'suvs', 			brand = 'Enus', 		model = 'huntley', name = 'Huntley S' },
	{ req_g_build = 1604, hash = 1836027715, 	blacklist = false, category = 'motorcycles', 	brand = 'Dinka', 		model = 'thrust', name = 'Thrust' },

	-- GTAV 1.14 | Game Build 1604 |   7 vehicles | I'm Not a Hipster
	{ req_g_build = 1604, hash = 75131841, 	blacklist = false, category = 'sedans', 		brand = 'Benefactor', 	model = 'glendale', name = 'Glendale' },
	{ req_g_build = 1604, hash = -431692672, 	blacklist = false, category = 'compacts', 		brand = 'Benefactor', 	model = 'panto', name = 'Panto' },
	{ req_g_build = 1604, hash = 1078682497, 	blacklist = false, category = 'sportsclassics', brand = 'Lampadati', 	model = 'pigalle', name = 'Pigalle' },
	{ req_g_build = 1604, hash = -1205801634, 	blacklist = false, category = 'muscle', 		brand = 'Vapid', 		model = 'blade', name = 'Blade' },
	{ req_g_build = 1604, hash = 1373123368, 	blacklist = false, category = 'sedans', 		brand = 'Vulcar', 		model = 'warrener', name = 'Warrener' },
	{ req_g_build = 1604, hash = -1237253773, 	blacklist = false, category = 'offroad', 		brand = 'Annis', 		model = 'dubsta3', name = 'Dubsta 6x6' },
	{ req_g_build = 1604, hash = 841808271, 	blacklist = false, category = 'compacts', 		brand = 'Declasse', 	model = 'rhapsody', name = 'Rhapsody' },

	-- GTAV 1.15 | Game Build 1604 |   2 vehicles | Independence Day
	{ req_g_build = 1604, hash = 743478836, 	blacklist = false, category = 'motorcycles', 	brand = 'western', 		model = 'sovereign', name = 'Sovereign' },
	{ req_g_build = 1604, hash = 0, blacklist = false, category = '', brand = '', model = '', name = '' },

	-- GTAV 1.16 | Game Build 1604 |   4 vehicles | SA Flight School
	{ req_g_build = 1604, hash = 1011753235, 	blacklist = false, category = 'sportsclassics', brand = 'Invetero', 	model = 'coquette2', name = 'Coquette Classic' },
	{ req_g_build = 1604, hash = -339587598, 	blacklist = false, category = 'helicopters', 	brand = 'Buckingham', 	model = 'swift', name = 'Swift' },
	{ req_g_build = 1604, hash = 0, blacklist = false, category = '', brand = '', model = '', name = '' },
	{ req_g_build = 1604, hash = 0, blacklist = false, category = '', brand = '', model = '', name = '' },

	-- GTAV 1.17 | Game Build 1604 |   3 vehicles | Last Team Standing
	{ req_g_build = 1604, hash = -159126838, 	blacklist = false, category = 'motorcycles', 	brand = 'LLC', 			model = 'innovation', name = 'Innovation' },
	{ req_g_build = 1604, hash = -1089039904, 	blacklist = false, category = 'sports', 		brand = 'Lampadati', 	model = 'furoregt', name = 'Furore GT' },
	{ req_g_build = 1604, hash = 1265391242, 	blacklist = false, category = 'motorcycles', 	brand = 'Shitzu', 		model = 'hakuchou', name = 'Hakuchou' },

	-- GTAV 1.18 | Game Build 1604 |  13 vehicles | PS4 & Xbox One Release
	{ req_g_build = 1604, hash = -915704871, 	blacklist = false, category = 'muscle', 		brand = 'Vapid', 		model = 'dominator2', name = 'Pißwasser Dominator' },
	{ req_g_build = 1604, hash = -901163259, 	blacklist = false, category = 'planes', 		brand = 'Mammoth', 		model = 'dodo', name = 'Dodo' },
	{ req_g_build = 1604, hash = -401643538, 	blacklist = false, category = 'muscle', 		brand = 'Declasse', 	model = 'stalion2', name = 'Stallion Burgershot' },
	{ req_g_build = 1604, hash = -591651781, 	blacklist = false, category = 'compacts', 		brand = 'Dinka', 		model = 'blista3', name = 'Blista Go Go Monkey' },
	{ req_g_build = 1604, hash = 1923400478, 	blacklist = false, category = 'muscle', 		brand = 'Declasse', 	model = 'stalion', name = 'Stallion' },
	{ req_g_build = 1604, hash = 1039032026, 	blacklist = false, category = 'compacts', 		brand = 'Dinka', 		model = 'blista2', name = 'Blista Compact' },
	{ req_g_build = 1604, hash = 723973206, 	blacklist = false, category = 'muscle', 		brand = 'Imponte', 		model = 'dukes', name = 'Dukes' },
	{ req_g_build = 1604, hash = 349315417, 	blacklist = false, category = 'muscle', 		brand = 'Bravado', 		model = 'gauntlet2', name = 'Redwood Gauntlet' },
	{ req_g_build = 1604, hash = 0, blacklist = false, category = '', brand = '', model = '', name = '' },
	{ req_g_build = 1604, hash = 0, blacklist = false, category = '', brand = '', model = '', name = '' },
	{ req_g_build = 1604, hash = 0, blacklist = false, category = '', brand = '', model = '', name = '' },
	{ req_g_build = 1604, hash = 0, blacklist = false, category = '', brand = '', model = '', name = '' },
	{ req_g_build = 1604, hash = 0, blacklist = false, category = '', brand = '', model = '', name = '' },

	-- GTAV 1.19 | Game Build 1604 |   4 vehicles | Festive Surprise 2014
	{ req_g_build = 1604, hash = -1106353882, 	blacklist = false, category = 'sports', 		brand = 'Dinka', 		model = 'jester2', name = 'Jester (Racecar)' },
	{ req_g_build = 1604, hash = -589178377, 	blacklist = false, category = 'muscle', 		brand = 'bravado', 		model = 'ratloader2', name = 'Rat-Truck' },
	{ req_g_build = 1604, hash = -631760477, 	blacklist = false, category = 'sports', 		brand = 'Dewbauchee', 	model = 'massacro2', name = 'Massacro (Racecar)' },
	{ req_g_build = 1604, hash = 729783779, 	blacklist = false, category = 'muscle', 		brand = 'Vapid', 		model = 'slamvan', name = 'Slamvan' },

	-- GTAV 1.21 | Game Build 1604 |  17 vehicles | Heists
	{ req_g_build = 1604, hash = 941800958, 	blacklist = false, category = 'sportsclassics', brand = 'Lampadati', 	model = 'casco', name = 'Casco' },
	{ req_g_build = 1604, hash = 833469436, 	blacklist = false, category = 'muscle', 		brand = 'Vapid', 		model = 'slamvan2', name = 'Lost Slamvan' },
	{ req_g_build = 1604, hash = -2107990196, 	blacklist = false, category = 'offroad', 		brand = 'Annis', 		model = 'guardian', name = 'Guardian' },
	{ req_g_build = 1604, hash = 296357396, 	blacklist = false, category = 'vans', 			brand = 'Declasse', 	model = 'gburrito2', name = 'Gang Burrito' },
	{ req_g_build = 1604, hash = 1753414259, 	blacklist = false, category = 'motorcycles', 	brand = 'Dinka', 		model = 'enduro', name = 'Enduro' },
	{ req_g_build = 1604, hash = 640818791, 	blacklist = false, category = 'motorcycles', 	brand = 'Principe', 	model = 'lectro', name = 'Lectro' },
	{ req_g_build = 1604, hash = 410882957, 	blacklist = false, category = 'sports', 		brand = 'Karin', 		model = 'kuruma2', name = 'Kuruma (Armored)' },
	{ req_g_build = 1604, hash = 1077420264, 	blacklist = false, category = 'planes', 		brand = 'Unknown', 		model = 'velum2', name = 'Velum' },
	{ req_g_build = 1604, hash = -1372848492, 	blacklist = false, category = 'sports', 		brand = 'Karin', 		model = 'kuruma', name = 'Kuruma' },
	{ req_g_build = 1604, hash = 1343932732, 	blacklist = false, category = {'commercial', 'vans'}, 		brand = 'maibatsu', 	model = 'mule3', 		name = 'Mule (heist)' 					},
	{ req_g_build = 1604, hash = 0, blacklist = false, category = '', brand = '', model = '', name = '' },
	{ req_g_build = 1604, hash = 0, blacklist = false, category = '', brand = '', model = '', name = '' },
	{ req_g_build = 1604, hash = 0, blacklist = false, category = '', brand = '', model = '', name = '' },
	{ req_g_build = 1604, hash = 0, blacklist = false, category = '', brand = '', model = '', name = '' },
	{ req_g_build = 1604, hash = 0, blacklist = false, category = '', brand = '', model = '', name = '' },
	{ req_g_build = 1604, hash = 0, blacklist = false, category = '', brand = '', model = '', name = '' },
	{ req_g_build = 1604, hash = 0, blacklist = false, category = '', brand = '', model = '', name = '' },

	-- GTAV 1.27 | Game Build 1604 |   6 vehicles | Ill-Gotten Gains Part 1
	{ req_g_build = 1604, hash = 1987142870, 	blacklist = false, category = 'super', 			brand = 'Pegassi', 		model = 'osiris', name = 'Osiris' },
	{ req_g_build = 1604, hash = -1214293858, 	blacklist = false, category = 'planes', 		brand = 'Buckingham', 	model = 'luxor2', name = 'Luxor Deluxe' },
	{ req_g_build = 1604, hash = 1075432268, 	blacklist = false, category = 'helicopters', 	brand = 'Buckingham', 	model = 'swift2', name = 'Swift Deluxe' },
	{ req_g_build = 1604, hash = -1566741232, 	blacklist = false, category = 'sportsclassics', brand = 'Benefactor', 	model = 'feltzer3', name = 'Stirling GT' },
	{ req_g_build = 1604, hash = -498054846, 	blacklist = false, category = 'muscle', 		brand = 'Albany', 		model = 'virgo', name = 'Virgo' },
	{ req_g_build = 1604, hash = 1581459400, 	blacklist = false, category = 'coupes', 		brand = 'Enus', 		model = 'windsor', name = 'Windsor' },

	-- GTAV 1.28 | Game Build 1604 |   6 vehicles | Ill-Gotten Gains Part 2
	{ req_g_build = 1604, hash = 1663218586, 	blacklist = false, category = 'super', 			brand = 'Progen', 		model = 't20', name = 'T20' },
	{ req_g_build = 1604, hash = 1070967343, 	blacklist = false, category = 'boats', 			brand = 'Lampadati', 	model = 'toro', name = 'Toro' },
	{ req_g_build = 1604, hash = 349605904, 	blacklist = false, category = 'muscle', 		brand = 'Vapid', 		model = 'chino', name = 'Chino' },
	{ req_g_build = 1604, hash = -1479664699, 	blacklist = false, category = 'offroad', 		brand = 'Annis', 		model = 'brawler', name = 'Brawler' },
	{ req_g_build = 1604, hash = 784565758, 	blacklist = false, category = 'muscle', 		brand = 'Invetero', 	model = 'coquette3', name = 'Coquette BlackFin' },
	{ req_g_build = 1604, hash = -1353081087, 	blacklist = false, category = 'motorcycles', 	brand = 'Dinka', 		model = 'vindicator', name = 'Vindicator' },

	-- GTAV 1.30 | Game Build 1604 |   2 vehicles | Halloween Surprise
	{ req_g_build = 1604, hash = -831834716, 	blacklist = false, category = 'sportsclassics', brand = 'albany', 		model = 'btype2', name = 'Franken Stange' },
	{ req_g_build = 1604, hash = 2068293287, 	blacklist = false, category = 'muscle', 		brand = 'albany', 		model = 'lurcher', 		name = 'Lurcher' 		},

	-- GTAV 1.30 | Game Build 1604 |   8 vehicles | Lowriders
	{ req_g_build = 1604, hash = 1896491931, 	blacklist = false, category = 'vans', 			brand = 'Declasse', 	model = 'moonbeam2', name = 'Moonbeam Custom' },
	{ req_g_build = 1604, hash = -1013450936, 	blacklist = false, category = 'muscle', 		brand = 'Albany', 		model = 'buccaneer2', name = 'Buccaneer Custom' },
	{ req_g_build = 1604, hash = -1361687965, 	blacklist = false, category = 'muscle', 		brand = 'Vapid', 		model = 'chino2', name = 'Chino Custom' },
	{ req_g_build = 1604, hash = -2040426790, 	blacklist = false, category = 'sedans', 		brand = 'Albany', 		model = 'primo2', name = 'Primo Custom' },
	{ req_g_build = 1604, hash = 525509695, 	blacklist = false, category = 'vans', 			brand = 'Declasse', 	model = 'moonbeam', name = 'Moonbeam' },
	{ req_g_build = 1604, hash = -1790546981, 	blacklist = false, category = 'muscle', 		brand = 'Willard', 		model = 'faction2', name = 'Faction Custom' },
	{ req_g_build = 1604, hash = -2119578145, 	blacklist = false, category = 'muscle', 		brand = 'Willard', 		model = 'faction', name = 'Faction' },
	{ req_g_build = 1604, hash = 0, blacklist = false, category = '', brand = '', model = '', name = '' },

	-- GTAV 1.31 | Game Build 1604 |  18 vehicles | Executives and Other Criminals
	{ req_g_build = 1604, hash = 1102544804, 	blacklist = false, category = 'sports', 		brand = 'Bravado', 		model = 'verlierer2', name = 'Verlierer' },
	{ req_g_build = 1604, hash = -1485523546, 	blacklist = false, category = 'sports', 		brand = 'Benefactor', 	model = 'schafter3', name = 'Schafter V12' },
	{ req_g_build = 1604, hash = -1671539132, 	blacklist = false, category = 'helicopters', 	brand = 'Buckingham', 	model = 'supervolito2', name = 'SuperVolito Carbon' },
	{ req_g_build = 1604, hash = -1660945322, 	blacklist = false, category = 'sportsclassics', brand = 'Declasse', 	model = 'mamba', name = 'Mamba' },
	{ req_g_build = 1604, hash = -1943285540, 	blacklist = false, category = 'muscle', 		brand = 'Imponte', 		model = 'nightshade', name = 'Nightshade' },
	{ req_g_build = 1604, hash = 906642318, 	blacklist = false, category = 'sedans', 		brand = 'Enus', 		model = 'cog55', name = 'Cognoscenti 55' },
	{ req_g_build = 1604, hash = 1489967196, 	blacklist = false, category = 'sports', 		brand = 'Benefactor', 	model = 'schafter4', name = 'Schafter LWB' },
	{ req_g_build = 1604, hash = 666166960, 	blacklist = false, category = 'suvs', 			brand = 'Gallivanter', 	model = 'baller6', name = 'Baller LE LWB (Armored)' },
	{ req_g_build = 1604, hash = 710198397, 	blacklist = false, category = 'helicopters', 	brand = 'Buckingham', 	model = 'supervolito', name = 'SuperVolito' },
	{ req_g_build = 1604, hash = -2030171296, 	blacklist = false, category = 'sedans', 		brand = 'Enus', 		model = 'cognoscenti', name = 'Cognoscenti' },
	{ req_g_build = 1604, hash = 470404958, 	blacklist = false, category = 'suvs', 			brand = 'Gallivanter', 	model = 'baller5', name = 'Baller LE (Armored)' },
	{ req_g_build = 1604, hash = 634118882, 	blacklist = false, category = 'suvs', 			brand = 'Gallivanter', 	model = 'baller4', name = 'Baller LE LWB' },
	{ req_g_build = 1604, hash = 1878062887, 	blacklist = false, category = 'suvs', 			brand = 'Gallivanter', 	model = 'baller3', name = 'Baller LE' },
	{ req_g_build = 1604, hash = 0, blacklist = false, category = '', brand = '', model = '', name = '' },
	{ req_g_build = 1604, hash = 0, blacklist = false, category = '', brand = '', model = '', name = '' },
	{ req_g_build = 1604, hash = 0, blacklist = false, category = '', brand = '', model = '', name = '' },
	{ req_g_build = 1604, hash = 0, blacklist = false, category = '', brand = '', model = '', name = '' },
	{ req_g_build = 1604, hash = 0, blacklist = false, category = '', brand = '', model = '', name = '' },

	-- GTAV 1.31 | Game Build 1604 |   1 vehicles | Festive Surprise 2015
	{ req_g_build = 1604, hash = 972671128, 	blacklist = false, category = 'muscle', 		brand = 'Declasse', 	model = 'tampa', name = 'Tampa' },

	-- GTAV 1.32 | Game Build 1604 |   1 vehicles | Be My Valentine
	{ req_g_build = 1604, hash = -602287871, 	blacklist = false, category = 'sportsclassics', brand = 'Albany', 		model = 'btype3', name = 'Roosevelt Valor' },

	-- GTAV 1.32 | Game Build 1604 |   2 vehicles | January 2016
	{ req_g_build = 1604, hash = -295689028, 	blacklist = false, category = 'sports', 		brand = 'Karin', 		model = 'sultanrs', name = 'Sultan RS' },
	{ req_g_build = 1604, hash = 633712403, 	blacklist = false, category = 'super', 			brand = 'Bravado', 		model = 'banshee2', name = 'Banshee 900R' },

	-- GTAV 1.33 | Game Build 1604 |   7 vehicles | Lowriders: Custom Classics
	{ req_g_build = 1604, hash = -1797613329, 	blacklist = false, category = 'sportsclassics', brand = 'Declasse', 	model = 'tornado5', name = 'Tornado Custom' },
	{ req_g_build = 1604, hash = -1126264336, 	blacklist = false, category = 'vans', 			brand = 'Vapid', 		model = 'minivan2', name = 'Minivan Custom' },
	{ req_g_build = 1604, hash = 223258115, 	blacklist = false, category = 'muscle', 		brand = 'Declasse', 	model = 'sabregt2', name = 'Sabre Turbo Custom' },
	{ req_g_build = 1604, hash = -899509638, 	blacklist = false, category = 'muscle', 		brand = 'Dundreary', 	model = 'virgo2', name = 'Virgo Classic Custom' },
	{ req_g_build = 1604, hash = 1119641113, 	blacklist = false, category = 'muscle', 		brand = 'Vapid', 		model = 'slamvan3', name = 'Slamvan Custom' },
	{ req_g_build = 1604, hash = -2039755226, 	blacklist = false, category = 'muscle', 		brand = 'Willard', 		model = 'faction3', name = 'Faction Custom Donk' },
	{ req_g_build = 1604, hash = 16646064, 	blacklist = false, category = 'muscle', 		brand = 'Dundreary', 	model = 'virgo3', name = 'Virgo Classic' },

	-- GTAV 1.34 | Game Build 1604 |  14 vehicles | Further Adventures in Finance and Felony
	{ req_g_build = 1604, hash = 1426219628, 	blacklist = false, category = 'super', 			brand = 'Vapid', 		model = 'fmj', name = 'FMJ' },
	{ req_g_build = 1604, hash = 234062309, 	blacklist = false, category = 'super', 			brand = 'Pegassi', 		model = 'reaper', name = 'Reaper' },
	{ req_g_build = 1604, hash = 1274868363, 	blacklist = false, category = 'sports', 		brand = 'Grotti', 		model = 'bestiagts', name = 'Bestia GTS' },
	{ req_g_build = 1604, hash = -1295027632, 	blacklist = false, category = 'planes', 		brand = 'Buckingham', 	model = 'nimbus', name = 'Nimbus' },
	{ req_g_build = 1604, hash = 2123327359, 	blacklist = false, category = 'super', 			brand = 'Grotti', 		model = 'prototipo', name = 'X80 Proto' },
	{ req_g_build = 1604, hash = 1475773103, 	blacklist = false, category = 'vans', 			brand = 'Bravado', 		model = 'rumpo3', name = 'Rumpo Custom' },
	{ req_g_build = 1604, hash = -1930048799, 	blacklist = false, category = 'coupes', 		brand = 'Enus', 		model = 'windsor2', name = 'Windsor Drop' },
	{ req_g_build = 1604, hash = -1829802492, 	blacklist = false, category = 'super', 			brand = 'Pfister', 		model = 'pfister811', name = '811' },
	{ req_g_build = 1604, hash = -1757836725, 	blacklist = false, category = 'sports', 		brand = 'Dewbauchee', 	model = 'seven70', name = 'Seven-70' },
	{ req_g_build = 1604, hash = -1845487887, 	blacklist = false, category = 'helicopters', 	brand = 'Buckingham', 	model = 'volatus', name = 'Volatus' },
	{ req_g_build = 1604, hash = 1203490606, 	blacklist = false, category = 'suvs', 			brand = 'Benefactor', 	model = 'xls', name = 'XLS' },
	{ req_g_build = 1604, hash = 0, blacklist = false, category = '', brand = '', model = '', name = '' },
	{ req_g_build = 1604, hash = 0, blacklist = false, category = '', brand = '', model = '', name = '' },
	{ req_g_build = 1604, hash = 0, blacklist = false, category = '', brand = '', model = '', name = '' },

	-- GTAV 1.35 | Game Build 1604 |  15 vehicles | Cunning Stunts
	{ req_g_build = 1604, hash = 390201602, 	blacklist = false, category = 'motorcycles', 	brand = 'Western', 		model = 'cliffhanger', name = 'Cliffhanger' },
	{ req_g_build = 1604, hash = 741090084, 	blacklist = false, category = 'motorcycles', 	brand = 'Western', 		model = 'gargoyle', name = 'Gargoyle' },
	{ req_g_build = 1604, hash = 86520421, 		blacklist = false, category = 'motorcycles', 	brand = 'Nagasaki', 	model = 'bf400', name = 'BF400' },
	{ req_g_build = 1604, hash = 101905590, 	blacklist = false, category = 'offroad', 		brand = 'Annis', 		model = 'trophytruck', name = 'Trophy Truck' },
	{ req_g_build = 1604, hash = 2067820283, 	blacklist = false, category = 'super', 			brand = 'Progen', 		model = 'tyrus', name = 'Tyrus' },
	{ req_g_build = 1604, hash = 819197656, 	blacklist = false, category = 'super', 			brand = 'Emperor', 		model = 'sheava', name = 'ETR1' },
	{ req_g_build = 1604, hash = 1887331236, 	blacklist = false, category = 'sports', 		brand = 'Lampadati', 	model = 'tropos', name = 'Tropos Rallye' },
	{ req_g_build = 1604, hash = -1071380347, 	blacklist = false, category = 'muscle', 		brand = 'Declasse', 	model = 'tampa2', name = 'Drift Tampa' },
	{ req_g_build = 1604, hash = 1549126457, 	blacklist = false, category = 'compacts', 		brand = 'Grotti', 		model = 'brioso', name = 'Brioso R/A' },
	{ req_g_build = 1604, hash = -777172681, 	blacklist = false, category = 'sports', 		brand = 'Wow', 			model = 'omnis', name = 'Omnis' },
	{ req_g_build = 1604, hash = 482197771, 	blacklist = false, category = 'sports', 		brand = 'Ocelot', 		model = 'lynx', name = 'Lynx' },
	{ req_g_build = 1604, hash = -1232836011, 	blacklist = false, category = 'super', 			brand = 'Annis', 		model = 'le7b', name = 'RE-7B' },
	{ req_g_build = 1604, hash = 683047626, 	blacklist = false, category = 'suvs', 			brand = 'Vapid', 		model = 'contender', name = 'Contender' },
	{ req_g_build = 1604, hash = -663299102, 	blacklist = false, category = 'offroad', 		brand = 'Annis', 		model = 'trophytruck2', name = 'Trophy Truck, Desert Raid' },
	{ req_g_build = 1604, hash = 0, blacklist = false, category = '', brand = '', model = '', name = '' },

	-- GTAV 1.36 | Game Build 1604 |  21 vehicles | Bikers
	{ req_g_build = 1604, hash = 1026149675, 	blacklist = false, category = 'vans', 						brand = 'bravado', 		model = 'youga2', 		name = 'Youga Classic' 					}, -- 1
	{ req_g_build = 1604, hash = 2035069708, 	blacklist = false, category = 'motorcycles', 				brand = 'pegassi', 		model = 'esskey', 		name = 'Esskey' 						}, -- 2
	{ req_g_build = 1604, hash = -405626514, 	blacklist = false, category = 'motorcycles', 				brand = 'nagasaki', 	model = 'shotaro', 		name = 'Shotaro' 						}, -- 3
	{ req_g_build = 1604, hash = -1558399629, 	blacklist = false, category = 'sportsclassics', 			brand = 'declasse', 	model = 'tornado6', 	name = 'Tornado Rat Rod' 				}, -- 4
	{ req_g_build = 1604, hash = 1491277511, 	blacklist = false, category = 'motorcycles', 				brand = 'lcc', 			model = 'sanctus', 		name = 'Sanctus' 						}, -- 5
	{ req_g_build = 1604, hash = -609625092, 	blacklist = false, category = 'motorcycles', 				brand = 'pegassi', 		model = 'vortex', 		name = 'Vortex' 						}, -- 6
	{ req_g_build = 1604, hash = -674927303, 	blacklist = false, category = 'sports', 					brand = 'bf', 			model = 'raptor', 		name = 'Raptor' 						}, -- 7
	{ req_g_build = 1604, hash = -1404136503, 	blacklist = false, category = 'motorcycles', 				brand = 'western', 		model = 'daemon2', 		name = 'Daemon Custom' 					}, -- 8
	{ req_g_build = 1604, hash = -440768424, 	blacklist = false, category = 'offroad', 					brand = 'annis', 		model = 'blazer4', 		name = 'Street Blazer' 					}, -- 9
	{ req_g_build = 1604, hash = -570033273, 	blacklist = false, category = 'motorcycles', 				brand = 'western', 		model = 'zombieb', 		name = 'Zombie Chopper' 				}, -- 10
	{ req_g_build = 1604, hash = -1009268949, 	blacklist = false, category = 'motorcycles', 				brand = 'western', 		model = 'zombiea', 		name = 'Zombie Bobber' 					}, -- 11
	{ req_g_build = 1604, hash = -618617997, 	blacklist = false, category = 'motorcycles', 				brand = 'western', 		model = 'wolfsbane', 	name = 'Wolfsbane' 						}, -- 12
	{ req_g_build = 1604, hash = 1873600305, 	blacklist = false, category = 'motorcycles', 				brand = 'western', 		model = 'ratbike', 		name = 'Rat Bike' 						}, -- 13
	{ req_g_build = 1604, hash = -1606187161, 	blacklist = false, category = 'motorcycles', 				brand = 'wmc', 			model = 'nightblade', 	name = 'Nightblade' 					}, -- 14
	{ req_g_build = 1604, hash = -1523428744, 	blacklist = false, category = 'motorcycles', 				brand = 'maibatsu', 	model = 'manchez', 		name = 'Manchez' 						}, -- 15
	{ req_g_build = 1604, hash = -255678177, 	blacklist = false, category = 'motorcycles', 				brand = 'shitzu', 		model = 'hakuchou2', 	name = 'Hakuchou Drag' 					}, -- 16
	{ req_g_build = 1604, hash = -1842748181, 	blacklist = false, category = 'motorcycles', 				brand = 'pegassi', 		model = 'faggio', 		name = 'Faggio Sport' 					}, -- 17
	{ req_g_build = 1604, hash = -1289178744, 	blacklist = false, category = 'motorcycles', 				brand = 'pegassi', 		model = 'faggio3', 		name = 'Faggio Mod' 					}, -- 18
	{ req_g_build = 1604, hash = 822018448, 	blacklist = false, category = 'motorcycles', 				brand = 'shitzu', 		model = 'defiler', 		name = 'Defiler' 						}, -- 19
	{ req_g_build = 1604, hash = 6774487, 		blacklist = false, category = 'motorcycles', 				brand = 'nagasaki', 	model = 'chimera', 		name = 'Chimera' 						}, -- 20
	{ req_g_build = 1604, hash = -2115793025, 	blacklist = false, category = 'motorcycles', 				brand = 'lcc', 			model = 'avarus', 		name = 'Avarus' 						}, -- 21

	-- GTAV 1.37 | Game Build 1604 |  22 vehicles | Import/Export
	{ req_g_build = 1604, hash = 1074745671, 	blacklist = false, category = 'sports', 					brand = 'dewbauchee', 	model = 'specter2', 	name = 'Specter Custom' 				}, -- 1
	{ req_g_build = 1604, hash = 1886268224, 	blacklist = false, category = 'sports', 					brand = 'dewbauchee', 	model = 'specter', 		name = 'Specter' 						}, -- 2
	{ req_g_build = 1604, hash = -482719877, 	blacklist = false, category = 'super', 						brand = 'progen', 		model = 'italigtb2', 	name = 'Itali GTB Custom' 				}, -- 3
	{ req_g_build = 1604, hash = -2048333973, 	blacklist = false, category = 'super', 						brand = 'progen', 		model = 'italigtb', 	name = 'Itali GTB' 						}, -- 4
	{ req_g_build = 1604, hash = -757735410, 	blacklist = false, category = 'motorcycles', 				brand = 'pegassi', 		model = 'fcr2', 		name = 'FCR 1000 Custom' 				}, -- 5
	{ req_g_build = 1604, hash = 627535535, 	blacklist = false, category = 'motorcycles', 				brand = 'pegassi', 		model = 'fcr', 			name = 'FCR 1000' 						}, -- 6
	{ req_g_build = 1604, hash = -2022483795, 	blacklist = false, category = 'sports', 					brand = 'pfister', 		model = 'comet3', 		name = 'Comet Retro Custom' 			}, -- 7
	{ req_g_build = 1604, hash = 1093792632, 	blacklist = false, category = 'super', 						brand = 'truffade', 	model = 'nero2', 		name = 'Nero Custom' 					}, -- 8
	{ req_g_build = 1604, hash = 1034187331, 	blacklist = false, category = 'super', 						brand = 'truffade', 	model = 'nero', 		name = 'Nero' 							}, -- 9
	{ req_g_build = 1604, hash = 1475773103, 	blacklist = false, category = 'vans', 						brand = 'brute', 		model = 'boxville5', 	name = 'Armored Boxville' 				}, -- 10
	{ req_g_build = 1604, hash = 272929391, 	blacklist = false, category = 'super', 						brand = 'pegassi', 		model = 'tempesta', 	name = 'Tempesta' 						}, -- 11
	{ req_g_build = 1604, hash = 989294410, 	blacklist = false, category = 'super', 						brand = 'coil', 		model = 'voltic2', 		name = 'Rocket Voltic' 					}, -- 12
	{ req_g_build = 1604, hash = -1758137366, 	blacklist = false, category = 'super', 						brand = 'ocelot', 		model = 'penetrator', 	name = 'Penetrator' 					}, -- 13
	{ req_g_build = 1604, hash = 196747873, 	blacklist = false, category = 'sports', 					brand = 'annis', 		model = 'elegy', 		name = 'Elegy Retro Custom' 			}, -- 14
	{ req_g_build = 1604, hash = -1912017790, 	blacklist = false, category = 'service', 					brand = 'mtl', 			model = 'wastelander', 	name = 'Wastelander' 					}, -- 15
	{ req_g_build = 1604, hash = 1180875963, 	blacklist = false, category = 'offroad', 					brand = 'karin', 		model = 'technical2', 	name = 'Technical Aqua' 				}, -- 16
	{ req_g_build = 1604, hash = -827162039, 	blacklist = false, category = 'offroad', 					brand = 'bf', 			model = 'dune4', 		name = 'Ramp Buggy (+spoiler)' 			}, -- 17.1
	{ req_g_build = 1604, hash = -312295511, 	blacklist = false, category = 'offroad', 					brand = 'bf', 			model = 'dune5', 		name = 'Ramp Buggy' 					}, -- 17.2
	{ req_g_build = 1604, hash = -1590337689, 	blacklist = false, category = 'offroad', 					brand = 'nagasaki', 	model = 'blazer5', 		name = 'Blazer Aqua' 					}, -- 18
	{ req_g_build = 1604, hash = 941494461, 	blacklist = false, category = 'muscle', 					brand = 'imponte', 		model = 'ruiner2', 		name = 'Ruiner 2000' 					}, -- 19
	{ req_g_build = 1604, hash = 1790834270, 	blacklist = false, category = 'motorcycles', 				brand = 'principe', 	model = 'diablous2', 	name = 'Diablous Custom' 				}, -- 20
	{ req_g_build = 1604, hash = -239841468, 	blacklist = false, category = 'motorcycles', 				brand = 'principe', 	model = 'diablous', 	name = 'Diablous' 						}, -- 21
	{ req_g_build = 1604, hash = -1649536104, 	blacklist = false, category = 'commercial', 				brand = 'jobuilt', 		model = 'phantom2', 	name = 'Phantom Wedge' 					}, -- 22

	-- GTAV 1.38 | Game Build 1604 |   4 vehicles | Special Vehicle Circuit
	{ req_g_build = 1604, hash = 719660200, 	blacklist = false, category = 'sports', 					brand = 'hijak', 		model = 'ruston', 		name = 'Ruston' 						}, -- 1
	{ req_g_build = 1604, hash = 1234311532, 	blacklist = false, category = 'super', 						brand = 'progen', 		model = 'gp1', 			name = 'GP1' 							}, -- 2
	{ req_g_build = 1604, hash = -1405937764, 	blacklist = false, category = 'sportsclassics', 			brand = 'pegassi', 		model = 'infernus2', 	name = 'Infernus Classic' 				}, -- 3
	{ req_g_build = 1604, hash = -982130927, 	blacklist = false, category = 'sportsclassics', 			brand = 'grotti', 		model = 'turismo2', 	name = 'Turismo Classic' 				}, -- 4

	-- GTAV 1.40 | Game Build 1604 |  18 vehicles | Gunrunning Pack
	{ req_g_build = 1604, hash = 159274291, 	blacklist = false, category = 'sportsclassics', 			brand = 'ocelot', 		model = 'ardent', 		name = 'Ardent' 						}, -- 1
	{ req_g_build = 1604, hash = 917809321, 	blacklist = false, category = 'super', 						brand = 'ocelot', 		model = 'xa21', 		name = 'XA-21' 							}, -- 2
	{ req_g_build = 1604, hash = 433954513, 	blacklist = false, category = 'offroad', 					brand = 'hvy', 			model = 'nightshark', 	name = 'Nightshark' 					}, -- 3
	{ req_g_build = 1604, hash = -1924433270, 	blacklist = false, category = 'offroad', 					brand = 'hvy', 			model = 'insurgent3', 	name = 'Insurgent Pick-up Custom' 		}, -- 4
	{ req_g_build = 1604, hash = 1504306544, 	blacklist = false, category = 'sportsclassics', 			brand = 'pegassi', 		model = 'torero', 		name = 'Torero' 						}, -- 5
	{ req_g_build = 1604, hash = 1356124575, 	blacklist = false, category = 'offroad', 					brand = 'karin', 		model = 'technical3', 	name = 'Technical Custom' 				}, -- 6
	{ req_g_build = 1604, hash = 223240013, 	blacklist = false, category = 'sports', 					brand = 'grotti', 		model = 'cheetah2', 	name = 'Cheetah Classic' 				}, -- 7
	{ req_g_build = 1604, hash = 1939284556, 	blacklist = false, category = 'super', 						brand = 'dewbauchee', 	model = 'vagner', 		name = 'Vagner' 						}, -- 8
	{ req_g_build = 1604, hash = 1502869817, 	blacklist = false, category = {'military', 'utility'}, 		brand = 'unknown', 		model = 'trailerlarge', name = 'Mobile Operations Center Trailer'},-- 9
	{ req_g_build = 1604, hash = 3525819835, 	blacklist = false, category = 'utility', 					brand = 'nagasaki', 	model = 'caddy3', 		name = 'Caddy (Bunker)' 				}, -- 10
	{ req_g_build = 1604, hash = 1897744184, 	blacklist = false, category = 'offroad', 					brand = 'bf', 			model = 'dune3', 		name = 'Duna FAV' 						}, -- 11
	{ req_g_build = 1604, hash = -1210451983, 	blacklist = false, category = 'muscle', 					brand = 'declasse', 	model = 'tampa3', 		name = 'Weaponized Tampa' 				}, -- 12
	{ req_g_build = 1604, hash = 884483972, 	blacklist = false, category = 'motorcycles', 				brand = 'Pegassi', 		model = 'oppressor', 	name = 'Oppressor' 						}, -- 13
	{ req_g_build = 1604, hash = -32236122, 	blacklist = false, category = 'military', 					brand = 'bravado', 		model = 'halftrack', 	name = 'Half-track' 					}, -- 14
	{ req_g_build = 1604, hash = 562680400, 	blacklist = false, category = 'military', 					brand = 'hvy', 			model = 'apc', 			name = 'APC Tank' 						}, -- 15
	{ req_g_build = 1604, hash = -1881846085, 	blacklist = false, category = 'military', 					brand = 'vom', 			model = 'trailersmall2',name = 'Anti-Aircraft (trailer)' 		}, -- 16
	{ req_g_build = 1604, hash = 177270108, 	blacklist = false, category = 'commercial', 				brand = 'jobuilt', 		model = 'phantom3', 	name = 'Phantom Custom' 				}, -- 17
	{ req_g_build = 1604, hash = 387748548, 	blacklist = false, category = 'commercial', 				brand = 'jobuilt', 		model = 'hauler2', 		name = 'Hauler Custom' 					}, -- 18

	-- GTAV 1.41 | Game Build 1604 |  19 vehicles | Smuggler's Run
	{ req_g_build = 1604, hash = -42959138, 	blacklist = false, category = 'helicopters', 				brand = 'unknown', 		model = 'hunter', 		name = 'Hunter' 						}, -- 1
	{ req_g_build = 1604, hash = 1392481335, 	blacklist = false, category = 'super', 						brand = 'coil', 		model = 'cyclone', 		name = 'Cyclone' 						}, -- 2
	{ req_g_build = 1604, hash = 1036591958, 	blacklist = false, category = 'planes', 					brand = 'unknown', 		model = 'nokota', 		name = 'P-45 Nokota' 					}, -- 3
	{ req_g_build = 1604, hash = -392675425, 	blacklist = false, category = 'planes', 					brand = 'western', 		model = 'seabreeze', 	name = 'Seabreeze' 						}, -- 4
	{ req_g_build = 1604, hash = -1242608589, 	blacklist = false, category = 'super', 						brand = 'grotti', 		model = 'vigilante', 	name = 'Vigilante' 						}, -- 5
	{ req_g_build = 1604, hash = -1386191424, 	blacklist = false, category = 'planes', 					brand = 'buckingham', 	model = 'pyro', 		name = 'Pyro' 							}, -- 6
	{ req_g_build = 1604, hash = -749299473, 	blacklist = false, category = 'planes', 					brand = 'mammoth', 		model = 'mogul', 		name = 'Mogul' 							}, -- 7
	{ req_g_build = 1604, hash = -1007528109, 	blacklist = false, category = 'planes', 					brand = 'buckingham', 	model = 'howard', 		name = 'Howard NX-25' 					}, -- 8
	{ req_g_build = 1604, hash = -32878452, 	blacklist = false, category = 'planes', 					brand = 'unknown', 		model = 'bombushka', 	name = 'RM-10 Bombushka' 				}, -- 9
	{ req_g_build = 1604, hash = 2049897956, 	blacklist = false, category = 'sportsclassics', 			brand = 'dewbauchee', 	model = 'rapidgt3', 	name = 'Rapid GT Classic' 				}, -- 10
	{ req_g_build = 1604, hash = -998177792, 	blacklist = false, category = 'sports', 					brand = 'grotti', 		model = 'visione', 		name = 'Visione' 						}, -- 11
	{ req_g_build = 1604, hash = 1841130506, 	blacklist = false, category = 'sportsclassics', 			brand = 'vapid', 		model = 'retinue', 		name = 'Retinue' 						}, -- 12
	{ req_g_build = 1604, hash = 1565978651, 	blacklist = false, category = 'planes', 					brand = 'unknown', 		model = 'molotok', 		name = 'V-65 Molotok' 					}, -- 13
	{ req_g_build = 1604, hash = -1763555241, 	blacklist = false, category = 'planes', 					brand = 'nagasaki', 	model = 'microlight', 	name = 'Ultralight' 					}, -- 14
	{ req_g_build = 1604, hash = 1043222410, 	blacklist = false, category = 'planes', 					brand = 'mammoth', 		model = 'tula', 		name = 'Tula' 							}, -- 15
	{ req_g_build = 1604, hash = -975345305, 	blacklist = false, category = 'planes', 					brand = 'western', 		model = 'rogue', 		name = 'Rogue' 							}, -- 16
	{ req_g_build = 1604, hash = -1700874274, 	blacklist = false, category = 'planes', 					brand = 'unknown', 		model = 'starling', 	name = 'LF-22 Starling' 				}, -- 17
	{ req_g_build = 1604, hash = -1523619738, 	blacklist = false, category = 'planes', 					brand = 'buckingham', 	model = 'alphaz1', 		name = 'Alpha-Z1' 						}, -- 18
	{ req_g_build = 1604, hash = -1984275979, 	blacklist = false, category = 'helicopters', 				brand = 'nagasaki', 	model = 'havok', 		name = 'Havok' 							}, -- 19

	-- GTAV 1.42 | Game Build 1604 |  29 vehicles | The Doomsday Heist
	{ req_g_build = 1604, hash = 661493923, 	blacklist = false, category = 'sports', 					brand = 'pfister', 		model = 'comet5', 		name = 'Comet SR' 						}, -- 1
	{ req_g_build = 1604, hash = 838982985, 	blacklist = false, category = 'sportsclassics', 			brand = 'karin', 		model = 'z190', 		name = '190Z' 							}, -- 2
	{ req_g_build = 1604, hash = 600450546, 	blacklist = false, category = 'muscle', 					brand = 'vapid', 		model = 'hustler', 		name = 'Hustler' 						}, -- 3
	{ req_g_build = 1604, hash = -121446169, 	blacklist = false, category = 'offroad', 					brand = 'canis', 		model = 'kamacho', 		name = 'Kamacho' 						}, -- 4
	{ req_g_build = 1604, hash = -1848994066, 	blacklist = false, category = 'sports', 					brand = 'pfister', 		model = 'neon', 		name = 'Neon' 							}, -- 5
	{ req_g_build = 1604, hash = -410205223, 	blacklist = false, category = 'sports', 					brand = 'ubermacht', 	model = 'revolter', 	name = 'Revolter' 						}, -- 6
	{ req_g_build = 1604, hash = -2079788230, 	blacklist = false, category = 'sportsclassics', 			brand = 'grotti', 		model = 'gt500', 		name = 'GT500' 							}, -- 7
	{ req_g_build = 1604, hash = -391595372, 	blacklist = false, category = 'sportsclassics', 			brand = 'lampadati', 	model = 'viseris', 		name = 'Viseris' 						}, -- 8
	{ req_g_build = 1604, hash = 903794909, 	blacklist = false, category = 'sportsclassics', 			brand = 'annis', 		model = 'savestra', 	name = 'Savestra' 						}, -- 9
	{ req_g_build = 1604, hash = -313185164, 	blacklist = false, category = 'super', 						brand = 'overflod', 	model = 'autarch', 		name = 'Autarch' 						}, -- 10
	{ req_g_build = 1604, hash = 15219735, 		blacklist = false, category = 'muscle', 					brand = 'albany', 		model = 'hermes', 		name = 'Hermes' 						}, -- 11
	{ req_g_build = 1604, hash = 1741861769, 	blacklist = false, category = 'sports', 					brand = 'benefactor', 	model = 'streiter', 	name = 'Streiter' 						}, -- 12
	{ req_g_build = 1604, hash = 1104234922, 	blacklist = false, category = 'coupes', 					brand = 'ubermacht', 	model = 'sentinel3', 	name = 'Sentinel Classic' 				}, -- 13
	{ req_g_build = 1604, hash = -2118308144, 	blacklist = false, category = 'planes', 					brand = 'mammoth', 		model = 'avenger', 		name = 'Avenger (Model 1)' 				}, -- 14.1
	{ req_g_build = 1604, hash = 408970549, 	blacklist = false, category = 'planes', 					brand = 'mammoth', 		model = 'avenger2', 	name = 'Avenger (Model 2)' 				}, -- 14.2
	{ req_g_build = 1604, hash = 1489874736, 	blacklist = false, category = 'military', 					brand = 'mammoth', 		model = 'thruster', 	name = 'Thruster Jetpack' 				}, -- 15
	{ req_g_build = 1604, hash = 1483171323, 	blacklist = false, category = 'sportsclassics', 			brand = 'imponte', 		model = 'deluxo', 		name = 'Deluxo' 						}, -- 16
	{ req_g_build = 1604, hash = 886810209, 	blacklist = false, category = 'sportsclassics', 			brand = 'ocelot', 		model = 'stromberg', 	name = 'Stromberg' 						}, -- 17
	{ req_g_build = 1604, hash = -1435527158, 	blacklist = false, category = 'military', 					brand = 'unknown', 		model = 'khanjali', 	name = 'TM-02 Khanjali Tank' 			}, -- 18
	{ req_g_build = 1604, hash = 0, 			blacklist = false, category = {'emergency', 'vans'}, 		brand = 'unknown', 		model = 'riot2', 		name = 'RCV (Riot Control Vehicle)' 	}, -- 19
	{ req_g_build = 1604, hash = -692292317, 	blacklist = false, category = 'military', 					brand = 'hvy', 			model = 'chernobog', 	name = 'Chernobog' 						}, -- 20
	{ req_g_build = 1604, hash = -212993243, 	blacklist = false, category = 'military', 					brand = 'hvy', 			model = 'barrage', 		name = 'Barrage' 						}, -- 21
	{ req_g_build = 1604, hash = 447548909, 	blacklist = false, category = 'planes', 					brand = 'unknown', 		model = 'volatol', 		name = 'Volatol' 						}, -- 22
	{ req_g_build = 1604, hash = 1181327175, 	blacklist = false, category = 'helicopters', 				brand = 'unknown', 		model = 'akula', 		name = 'Akula' 							}, -- 23
	{ req_g_build = 1604, hash = 1352136073, 	blacklist = false, category = 'super', 						brand = 'ubermacht', 	model = 'sc1', 			name = 'SC1' 							}, -- 24
	{ req_g_build = 1604, hash = -1529242755, 	blacklist = false, category = 'sports', 					brand = 'coil', 		model = 'raiden', 		name = 'Raiden' 						}, -- 25
	{ req_g_build = 1604, hash = 867799010, 	blacklist = false, category = 'sports', 					brand = 'ocelot', 		model = 'pariah', 		name = 'Pariah' 						}, -- 26
	{ req_g_build = 1604, hash = 1561920505, 	blacklist = false, category = 'sports', 					brand = 'pfister', 		model = 'comet4', 		name = 'Comet Safari' 					}, -- 27
	{ req_g_build = 1604, hash = 1871995513, 	blacklist = false, category = 'muscle', 					brand = 'declasse', 	model = 'yosemite', 	name = 'Yosemite' 						}, -- 28
	{ req_g_build = 1604, hash = -1532697517, 	blacklist = false, category = 'offroad', 					brand = 'vapid', 		model = 'riata', 		name = 'Riata' 							}, -- 29

	-- GTAV 1.43 | Game Build 1604 |  15 vehicles | Southern SA Super Sport Series
	{ req_g_build = 1604, hash = 1046206681, 	blacklist = false, category = 'sportsclassics', 			brand = 'lampadati', 	model = 'michelli', 	name = 'Michelli GT' 					}, -- 1
	{ req_g_build = 1604, hash = -988501280, 	blacklist = false, category = 'sportsclassics', 			brand = 'rune', 		model = 'cheburek', 	name = 'Cheburek' 						}, -- 2
	{ req_g_build = 1604, hash = -376434238, 	blacklist = false, category = 'super', 						brand = 'overflod', 	model = 'tyrant', 		name = 'Tyrant' 						}, -- 3
	{ req_g_build = 1604, hash = -986944621, 	blacklist = false, category = 'muscle', 					brand = 'vapid', 		model = 'dominator3', 	name = 'Dominator GTX' 					}, -- 4
	{ req_g_build = 1604, hash = -726768679, 	blacklist = false, category = 'helicopters', 				brand = 'unknown', 		model = 'seasparrow', 	name = 'Sea Sparrow' 					}, -- 5
	{ req_g_build = 1604, hash = 931280609, 	blacklist = false, category = 'compacts', 					brand = 'weeny', 		model = 'issi3', 		name = 'Issi Classic' 					}, -- 6
	{ req_g_build = 1604, hash = -1259134696, 	blacklist = false, category = 'sports', 					brand = 'vapid', 		model = 'flashgt', 		name = 'Flash GT' 						}, -- 7
	{ req_g_build = 1604, hash = 1254014755, 	blacklist = false, category = 'offroad', 					brand = 'vapid', 		model = 'caracara', 	name = 'Caracara' 						}, -- 8
	{ req_g_build = 1604, hash = 1031562256, 	blacklist = false, category = 'super', 						brand = 'pegassi', 		model = 'tezeract', 	name = 'Tezeract' 						}, -- 9
	{ req_g_build = 1604, hash = -1267543371, 	blacklist = false, category = 'muscle', 					brand = 'vapid', 		model = 'ellie', 		name = 'Ellie' 							}, -- 10
	{ req_g_build = 1604, hash = 1909189272, 	blacklist = false, category = 'sports',						brand = 'vapid', 		model = 'gb200', 		name = 'GB 200' 						}, -- 11
	{ req_g_build = 1604, hash = -1134706562, 	blacklist = false, category = 'super', 						brand = 'cheval', 		model = 'taipan', 		name = 'Taipan' 						}, -- 12
	{ req_g_build = 1604, hash = -2120700196, 	blacklist = false, category = 'super', 						brand = 'overflod', 	model = 'entity2', 		name = 'Entity XXR' 					}, -- 13
	{ req_g_build = 1604, hash = 1617472902, 	blacklist = false, category = 'sportsclassics', 			brand = 'vulcar', 		model = 'fagaloa', 		name = 'Fagaloa' 						}, -- 14
	{ req_g_build = 1604, hash = 1115909093, 	blacklist = false, category = 'sports', 					brand = 'declasse', 	model = 'hotring', 		name = 'Hotring Sabre' 					}, -- 15

	-- GTAV 1.44 | Game Build 1604 |  15 vehicles | After Hours
	{ req_g_build = 1604, hash = -54332285, 	blacklist = false, category = 'offroad', 					brand = 'canis', 		model = 'freecrawler', 	name = 'Freecrawler' 					}, -- 1
	{ req_g_build = 1604, hash = 2044532910, 	blacklist = false, category = 'offroad', 					brand = 'hvy', 			model = 'menacer', 		name = 'Menacer' 						}, -- 2
	{ req_g_build = 1604, hash = -638562243, 	blacklist = false, category = 'super', 						brand = 'declasse', 	model = 'scramjet', 	name = 'Scramjet' 						}, -- 3
	{ req_g_build = 1604, hash = 2069146067, 	blacklist = false, category = 'motorcycles', 				brand = 'pegassi', 		model = 'oppressor2', 	name = 'Oppressor Mk II' 				}, -- 4
	{ req_g_build = 1604, hash = -1988428699, 	blacklist = false, category = {'commercial', 'military'}, 	brand = 'benefactor', 	model = 'terbyte', 		name = 'Terrorbyte' 					}, -- 5
	{ req_g_build = 1604, hash = 1692272545, 	blacklist = false, category = 'planes', 					brand = 'unknown', 		model = 'strikeforce', 	name = 'B-11 Strikeforce' 				}, -- 6
	{ req_g_build = 1604, hash = 321186144, 	blacklist = false, category = 'sedans', 					brand = 'enus', 		model = 'stafford', 	name = 'Stafford' 						}, -- 7
	{ req_g_build = 1604, hash = -307958377, 	blacklist = false, category = 'planes', 					brand = 'unknown', 		model = 'blimp3', 		name = 'Blimp' 							}, -- 8
	{ req_g_build = 1604, hash = 219613597, 	blacklist = false, category = 'vans', 						brand = 'vapid', 		model = 'speedo4', 		name = 'Speedo Custom' 					}, -- 9
	{ req_g_build = 1604, hash = 345756458, 	blacklist = false, category = 'service', 					brand = 'unknown', 		model = 'pbus2', 		name = 'Festival Bus' 					}, -- 10
	{ req_g_build = 1604, hash = -420911112, 	blacklist = false, category = 'suvs', 						brand = 'mammoth', 		model = 'patriot2', 	name = 'Patriot Stretch' 				}, -- 11
	{ req_g_build = 1604, hash = 1653666139, 	blacklist = false, category = 'commercial', 				brand = 'mtl', 			model = 'pounder2', 	name = 'Pounder Custom' 				}, -- 12
	{ req_g_build = 1604, hash = 1343932732, 	blacklist = false, category = 'commercial', 				brand = 'maibatsu', 	model = 'mule4', 		name = 'Mule Custom' 					}, -- 13
	{ req_g_build = 1604, hash = 500482303, 	blacklist = false, category = 'sportsclassics', 			brand = 'ocelot', 		model = 'swinger', 		name = 'Swinger' 						}, -- 14
	{ req_g_build = 1604, hash = -214906006, 	blacklist = false, category = 'sports', 					brand = 'dinka', 		model = 'jester3', 		name = 'Jester Classic' 				}, -- 15

	-- GTAV 1.46 | Game Build 1604 |  22 vehicles | Arena War
	{ req_g_build = 1604, hash = 1591739866, 	blacklist = false, category = 'super', 						brand = 'principe', 	model = 'deveste', 		name = 'Deveste' 						}, -- 1
	{ req_g_build = 1604, hash = -49115651, 	blacklist = false, category = 'muscle', 					brand = 'declasse', 	model = 'vamos', 		name = 'Vamos' 							}, -- 2
	{ req_g_build = 1604, hash = 1279262537, 	blacklist = false, category = 'muscle', 					brand = 'schyster', 	model = 'deviant', 		name = 'Deviant' 						}, -- 3
	{ req_g_build = 1604, hash = -286046740, 	blacklist = false, category = {'rc', 'offroad'}, 			brand = 'unknown', 		model = 'rcbandito', 	name = 'Remote Control Bandito' 		}, -- 4
	{ req_g_build = 1604, hash = -507495760, 	blacklist = false, category = 'sports', 					brand = 'benefactor', 	model = 'schlagen', 	name = 'Schlagen GT' 					}, -- 5
	{ req_g_build = 1604, hash = 1456744817, 	blacklist = false, category = 'muscle', 					brand = 'declasse', 	model = 'tulip', 		name = 'Tulip' 							}, -- 6
	{ req_g_build = 1604, hash = -331467772, 	blacklist = false, category = 'sports', 					brand = 'progen', 		model = 'italigto', 	name = 'Itali GTO' 						}, -- 7
	{ req_g_build = 1604, hash = -1566607184, 	blacklist = false, category = 'muscle', 					brand = 'vapid', 		model = 'clique', 		name = 'Clique' 						}, -- 8
	{ req_g_build = 1604, hash = -1168952148, 	blacklist = false, category = 'suvs', 						brand = 'pegassi', 		model = 'toros', 		name = 'Toros' 							}, -- 9
	{ req_g_build = 1604, hash = 540101442, 	blacklist = false, category = 'sports', 					brand = 'annis', 		model = 'zr380', 		name = 'ZR380 Arena 1' 					}, -- 10.1
	{ req_g_build = 1604, hash = -1106120762, 	blacklist = false, category = 'sports', 					brand = 'annis', 		model = 'zr3802', 		name = 'ZR380 Arena 2' 					}, -- 10.2
	{ req_g_build = 1604, hash = -1478704292, 	blacklist = false, category = 'sports', 					brand = 'annis', 		model = 'zr3803', 		name = 'ZR380 Arena 3' 					}, -- 10.3
	{ req_g_build = 1604, hash = 444994115, 	blacklist = false, category = 'muscle', 					brand = 'vapid', 		model = 'imperator', 	name = 'Imperator Arena 1' 				}, -- 11.1
	{ req_g_build = 1604, hash = 1637620610, 	blacklist = false, category = 'muscle', 					brand = 'vapid', 		model = 'imperator2', 	name = 'Imperator Arena 2' 				}, -- 11.2
	{ req_g_build = 1604, hash = -755532233, 	blacklist = false, category = 'muscle', 					brand = 'vapid', 		model = 'imperator3', 	name = 'Imperator Arena 3' 				}, -- 11.3
	{ req_g_build = 1604, hash = -1146969353, 	blacklist = false, category = 'military', 					brand = 'vapid', 		model = 'scarab', 		name = 'Scarab Arena 1' 				}, -- 12.1
	{ req_g_build = 1604, hash = 1542143200, 	blacklist = false, category = 'military', 					brand = 'vapid', 		model = 'scarab2', 		name = 'Scarab Arena 2' 				}, -- 12.2
	{ req_g_build = 1604, hash = -579747861, 	blacklist = false, category = 'military', 					brand = 'vapid', 		model = 'scarab3', 		name = 'Scarab Arena 3' 				}, -- 12.3
	{ req_g_build = 1604, hash = 2139203625, 	blacklist = false, category = 'offroad', 					brand = 'declasse', 	model = 'brutus', 		name = 'Brutus Arena 1' 				}, -- 13.1
	{ req_g_build = 1604, hash = -1890996696, 	blacklist = false, category = 'offroad', 					brand = 'declasse', 	model = 'brutus2', 		name = 'Brutus Arena 2' 				}, -- 13.2
	{ req_g_build = 1604, hash = 2038858402, 	blacklist = false, category = 'offroad', 					brand = 'declasse', 	model = 'brutus3', 		name = 'Brutus Arena 3' 				}, -- 13.3
	{ req_g_build = 1604, hash = -801550069, 	blacklist = false, category = 'commercial', 				brand = 'mtl', 			model = 'cerberus', 	name = 'Cerberus Arena 1' 				}, -- 14.1
	{ req_g_build = 1604, hash = 679453769, 	blacklist = false, category = 'commercial', 				brand = 'mtl', 			model = 'cerberus2', 	name = 'Cerberus Arena 2' 				}, -- 14.2
	{ req_g_build = 1604, hash = 1909700336, 	blacklist = false, category = 'commercial', 				brand = 'mtl', 			model = 'cerberus3', 	name = 'Cerberus Arena 3' 				}, -- 14.3
	{ req_g_build = 1604, hash = 628003514, 	blacklist = false, category = 'compacts', 					brand = 'weeny', 		model = 'issi4', 		name = 'Issi Arena 1' 					}, -- 15.1
	{ req_g_build = 1604, hash = 1537277726, 	blacklist = false, category = 'compacts', 					brand = 'weeny', 		model = 'issi5', 		name = 'Issi Arena 2' 					}, -- 15.2
	{ req_g_build = 1604, hash = 1239571361, 	blacklist = false, category = 'compacts', 					brand = 'weeny', 		model = 'issi6', 		name = 'Issi Arena 3' 					}, -- 15.3
	{ req_g_build = 1604, hash = -27326686, 	blacklist = false, category = 'motorcycles', 				brand = 'western', 		model = 'deathbike', 	name = 'Deathbike Arena 1' 				}, -- 16.1
	{ req_g_build = 1604, hash = -1812949672, 	blacklist = false, category = 'motorcycles', 				brand = 'western', 		model = 'deathbike2', 	name = 'Deathbike Arena 2' 				}, -- 16.2
	{ req_g_build = 1604, hash = -1374500452, 	blacklist = false, category = 'motorcycles', 				brand = 'western', 		model = 'deathbike3', 	name = 'Deathbike Arena 3' 				}, -- 16.3
	{ req_g_build = 1604, hash = -2061049099, 	blacklist = false, category = 'muscle', 					brand = 'vapid', 		model = 'slamvan4', 	name = 'Slamvan Arena 1' 				}, -- 17.1
	{ req_g_build = 1604, hash = 373261600, 	blacklist = false, category = 'muscle', 					brand = 'vapid', 		model = 'slamvan5', 	name = 'Slamvan Arena 2' 				}, -- 17.2
	{ req_g_build = 1604, hash = 1742022738, 	blacklist = false, category = 'muscle', 					brand = 'vapid', 		model = 'slamvan6', 	name = 'Slamvan Arena 3' 				}, -- 17.3
	{ req_g_build = 1604, hash = 1721676810, 	blacklist = false, category = 'offroad', 					brand = 'bravado', 		model = 'monster3', 	name = 'Sasquatch Arena 1' 				}, -- 18.1
	{ req_g_build = 1604, hash = 840387324, 	blacklist = false, category = 'offroad', 					brand = 'bravado', 		model = 'monster4', 	name = 'Sasquatch Arena 2' 				}, -- 18.2
	{ req_g_build = 1604, hash = -715746948, 	blacklist = false, category = 'offroad', 					brand = 'bravado', 		model = 'monster5', 	name = 'Sasquatch Arena 3' 				}, -- 18.3
	{ req_g_build = 1604, hash = 668439077, 	blacklist = false, category = 'offroad', 					brand = 'benefactor', 	model = 'bruiser', 		name = 'Bruiser Arena 1' 				}, -- 19.1
	{ req_g_build = 1604, hash = -1694081890, 	blacklist = false, category = 'offroad', 					brand = 'benefactor', 	model = 'bruiser2', 	name = 'Bruiser Arena 2' 				}, -- 19.2
	{ req_g_build = 1604, hash = -2042350822, 	blacklist = false, category = 'offroad', 					brand = 'benefactor', 	model = 'bruiser3', 	name = 'Bruiser Arena 3' 				}, -- 19.3
	{ req_g_build = 1604, hash = -688189648, 	blacklist = false, category = 'muscle', 					brand = 'vapid', 		model = 'dominator4', 	name = 'Dominator Arena 1' 				}, -- 20.1
	{ req_g_build = 1604, hash = -1375060657, 	blacklist = false, category = 'muscle', 					brand = 'vapid', 		model = 'dominator5', 	name = 'Dominator Arena 2' 				}, -- 20.2
	{ req_g_build = 1604, hash = -1293924613, 	blacklist = false, category = 'muscle', 					brand = 'vapid', 		model = 'dominator6', 	name = 'Dominator Arena 3' 				}, -- 20.3
	{ req_g_build = 1604, hash = -2096690334, 	blacklist = false, category = 'muscle', 					brand = 'declasse', 	model = 'impaler', 		name = 'Impaler' 						}, -- 21
	{ req_g_build = 1604, hash = 1009171724, 	blacklist = false, category = 'muscle', 					brand = 'declasse', 	model = 'impaler2', 	name = 'Impaler Arena 1' 				}, -- 22.1
	{ req_g_build = 1604, hash = -1924800695, 	blacklist = false, category = 'muscle', 					brand = 'declasse', 	model = 'impaler3', 	name = 'Impaler Arena 2' 				}, -- 22.2
	{ req_g_build = 1604, hash = -1744505657, 	blacklist = false, category = 'muscle', 					brand = 'declasse', 	model = 'impaler4', 	name = 'Impaler Arena 3' 				}, -- 22.3

	-- GTAV 1.48 | Game Build 2060 |  22 vehicles | Diamond Casino & Resort
	{ req_g_build = 2060, hash = -1804415708, 	blacklist = false, category = 'sportsclassics', 			brand = 'vapid', 		model = 'peyote2', 		name = 'Peyote Gasser' 					}, -- 1
	{ req_g_build = 2060, hash = -1829436850, 	blacklist = false, category = 'suvs', 						brand = 'lampadati', 	model = 'novak', 		name = 'Novak' 							}, -- 2
	{ req_g_build = 2060, hash = 916547552, 	blacklist = false, category = 'motorcycles', 				brand = 'western', 		model = 'rrocket', 		name = 'Rampant Rocket Tricycle' 		}, -- 3
	{ req_g_build = 2060, hash = -682108547, 	blacklist = false, category = 'super', 						brand = 'pegassi', 		model = 'zorrusso', 	name = 'Zorrusso' 						}, -- 4
	{ req_g_build = 2060, hash = 310284501, 	blacklist = false, category = 'sportsclassics', 			brand = 'weeny', 		model = 'dynasty', 		name = 'Dynasty' 						}, -- 5
	{ req_g_build = 2060, hash = -208911803, 	blacklist = false, category = 'sports', 					brand = 'ocelot', 		model = 'jugular', 		name = 'Jugular' 						}, -- 6
	{ req_g_build = 2060, hash = -362150785, 	blacklist = false, category = 'offroad', 					brand = 'annis', 		model = 'hellion', 		name = 'Hellion' 						}, -- 7
	{ req_g_build = 2060, hash = 1862507111, 	blacklist = false, category = 'sportsclassics', 			brand = 'ubermacht', 	model = 'zion3', 		name = 'Zion Classic' 					}, -- 8
	{ req_g_build = 2060, hash = -664141241, 	blacklist = false, category = 'super', 						brand = 'benefactor', 	model = 'krieger', 		name = 'Krieger' 						}, -- 9
	{ req_g_build = 2060, hash = 1934384720, 	blacklist = false, category = 'muscle', 					brand = 'bravado', 		model = 'gauntlet4', 	name = 'Gauntlet Hellfire' 				}, -- 10
	{ req_g_build = 2060, hash = -941272559, 	blacklist = false, category = 'sports', 					brand = 'ocelot', 		model = 'locust', 		name = 'Locust' 						}, -- 11
	{ req_g_build = 2060, hash = -882629065, 	blacklist = false, category = 'sportsclassics', 			brand = 'vulcar', 		model = 'nebula', 		name = 'Nebula Turbo' 					}, -- 12
	{ req_g_build = 2060, hash = 1323778901, 	blacklist = false, category = 'super', 						brand = 'progen', 		model = 'emerus', 		name = 'Emerus' 						}, -- 13
	{ req_g_build = 2060, hash = 722226637, 	blacklist = false, category = 'muscle', 					brand = 'bravado', 		model = 'gauntlet3', 	name = 'Gauntlet Classic' 				}, -- 14
	{ req_g_build = 2060, hash = -1620126302, 	blacklist = false, category = 'sports', 					brand = 'vysser', 		model = 'neo', 			name = 'Neo' 							}, -- 15
	{ req_g_build = 2060, hash = -1349095620, 	blacklist = false, category = 'offroad', 					brand = 'vapid', 		model = 'caracara2', 	name = 'Caracara 4x4' 					}, -- 16
	{ req_g_build = 2060, hash = 1854776567, 	blacklist = false, category = 'compacts', 					brand = 'weeny', 		model = 'issi7', 		name = 'Issi Sport' 					}, -- 17
	{ req_g_build = 2060, hash = 686471183, 	blacklist = false, category = 'sports', 					brand = 'obey', 		model = 'drafter', 		name = '8F Drafter' 					}, -- 18
	{ req_g_build = 2060, hash = -447711397, 	blacklist = false, category = 'sports', 					brand = 'enus', 		model = 'paragon', 		name = 'Paragon' 						}, -- 19
	{ req_g_build = 2060, hash = 1416466158, 	blacklist = false, category = 'sports', 					brand = 'enus', 		model = 'paragon2', 	name = 'Paragon (Armored)' 				}, -- 20
	{ req_g_build = 2060, hash = -324618589, 	blacklist = false, category = 'super', 						brand = 'annis', 		model = 's80', 			name = 'S80RR' 							}, -- 21
	{ req_g_build = 2060, hash = 1044193113, 	blacklist = false, category = 'super', 						brand = 'truffade', 	model = 'thrax', 		name = 'Thrax' 							}, -- 22

	-- GTAV 1.49 | Game Build 2060 |  20 vehicles | Diamond Casino Heist
	{ req_g_build = 2060, hash = 301304410, 	blacklist = false, category = 'motorcycles', 				brand = 'nagasaki', 	model = 'stryder', 		name = 'Stryder' 						}, -- 1
	{ req_g_build = 2060, hash = 0, 			blacklist = false, category = 'openwheel', 					brand = 'ocelot', 		model = '', 			name = 'R88 (Formula 1 Car)' 			}, -- 2
	{ req_g_build = 2060, hash = 409049982, 	blacklist = false, category = 'compacts', 					brand = 'dinka', 		model = 'kanjo', 		name = 'Blista Kanjo' 					}, -- 3
	{ req_g_build = 2060, hash = 0, 			blacklist = false, category = 'openwheel', 					brand = 'progen', 		model = '', 			name = 'PR4 (Formula 1 Car)' 			}, -- 4
	{ req_g_build = 2060, hash = 987469656, 	blacklist = false, category = 'sports', 					brand = 'dinka', 		model = 'sugoi', 		name = 'Sugoi' 							}, -- 5
	{ req_g_build = 2060, hash = 1693751655, 	blacklist = false, category = 'muscle', 					brand = 'declasse', 	model = 'yosemite2', 	name = 'Drift Yosemite' 				}, -- 6
	{ req_g_build = 2060, hash = 1456336509, 	blacklist = false, category = 'sports', 					brand = 'albany', 		model = 'vstr', 		name = 'V-STR' 							}, -- 7
	{ req_g_build = 2060, hash = 408825843, 	blacklist = false, category = 'offroad', 					brand = 'nagasaki', 	model = 'outlaw', 		name = 'Outlaw' 						}, -- 8
	{ req_g_build = 2060, hash = 0, 			blacklist = false, category = 'sports', 					brand = 'karin', 		model = '', 			name = 'Sultan Classic' 				}, -- 9
	{ req_g_build = 2060, hash = -1132721664, 	blacklist = false, category = 'sports', 					brand = 'overflod', 	model = 'imorgon', 		name = 'Imorgon' 						}, -- 10
	{ req_g_build = 2060, hash = 0, 			blacklist = false, category = 'offroad', 					brand = 'rune', 		model = '', 			name = 'Zhaba' 							}, -- 11
	{ req_g_build = 2060, hash = 394110044, 	blacklist = false, category = 'sportsclassics', 			brand = 'dewbauchee', 	model = 'jb7002', 		name = 'JB 700W' 						}, -- 12
	{ req_g_build = 2060, hash = 0, 			blacklist = false, category = {'rc', 'military'}, 			brand = 'unknown', 		model = '', 			name = 'Invade And Persuade RC Tank' 	}, -- 13
	{ req_g_build = 2060, hash = 960812448, 	blacklist = false, category = 'super', 						brand = 'grotti', 		model = 'furia', 		name = 'Furia' 							}, -- 14
	{ req_g_build = 2060, hash = 83136452, 		blacklist = false, category = 'suvs', 						brand = 'ubermacht', 	model = 'rebla', 		name = 'Rebla GTS' 						}, -- 15
	{ req_g_build = 2060, hash = -834353991, 	blacklist = false, category = 'sports', 					brand = 'lampadati', 	model = 'komoda', 		name = 'Komoda' 						}, -- 16
	{ req_g_build = 2060, hash = 1118611807, 	blacklist = false, category = 'compacts', 					brand = 'maxwell', 		model = 'asbo', 		name = 'Asbo' 							}, -- 17
	{ req_g_build = 2060, hash = 2031587082, 	blacklist = false, category = 'sportsclassics', 			brand = 'vapid', 		model = 'retinue2', 	name = 'Retinue MKII' 					}, -- 18
	{ req_g_build = 2060, hash = -1756021720, 	blacklist = false, category = 'offroad', 					brand = 'karin', 		model = 'everon', 		name = 'Everon' 						}, -- 19
	{ req_g_build = 2060, hash = 740289177, 	blacklist = false, category = 'offroad', 					brand = 'maxwell', 		model = 'vagrant', 		name = 'Vagrant' 						}, -- 20

	-- GTAV 1.51 | Game Build 2060 |  15 vehicles | Los Santos Summer Special
	{ req_g_build = 1604, hash = -2122646867, 	blacklist = false, category = 'muscle', 					brand = 'bravado', 		model = 'gauntlet5', 	name = 'Gauntlet Classic Custom' 		}, -- 1
	{ req_g_build = 2060, hash = 67753863, 		blacklist = false, category = 'offroad', 					brand = 'declasse', 	model = 'yosemite3', 	name = 'Yosemite Rancher' 				}, -- 2
	{ req_g_build = 2060, hash = 1802742206, 	blacklist = false, category = 'vans', 						brand = 'bravado', 		model = 'youga3', 		name = 'Youga Classic 4x4' 				}, -- 3
	{ req_g_build = 2060, hash = -913589546, 	blacklist = false, category = 'sedans', 					brand = 'benefactor', 	model = 'glendale2', 	name = 'Glendale Custom' 				}, -- 4
	{ req_g_build = 2060, hash = 1107404867, 	blacklist = false, category = 'sportsclassics', 			brand = 'vapid', 		model = 'peyote3', 		name = 'Peyote Custom' 					}, -- 5
	{ req_g_build = 2060, hash = 1717532765, 	blacklist = false, category = 'muscle', 					brand = 'albany', 		model = 'manana2', 		name = 'Manana Custom' 					}, -- 6
	{ req_g_build = 2060, hash = 2134119907, 	blacklist = false, category = 'muscle', 					brand = 'imponte', 		model = 'dukes3', 		name = 'Beater Dukes' 					}, -- 7
	{ req_g_build = 2060, hash = -1810806490, 	blacklist = false, category = 'suvs', 						brand = 'canis', 		model = 'seminole2', 	name = 'Seminole Frontier' 				}, -- 8
	{ req_g_build = 2060, hash = -838099166, 	blacklist = false, category = 'suvs', 						brand = 'dundreary', 	model = 'landstalker2', name = 'Landstalker XL' 				}, -- 9
	{ req_g_build = 2060, hash = -631322662, 	blacklist = false, category = 'sports', 					brand = 'maibatsu', 	model = 'penumbra2', 	name = 'Penumbra FF' 					}, -- 10
	{ req_g_build = 2060, hash = -2098954619, 	blacklist = false, category = 'compacts', 					brand = 'bf', 			model = 'club', 		name = 'Club' 							}, -- 11
	{ req_g_build = 2060, hash = -1728685474, 	blacklist = false, category = 'sports', 					brand = 'invetero', 	model = 'coquette4', 	name = 'Coquette D10' 					}, -- 12
	{ req_g_build = 2060, hash = -1358197432, 	blacklist = false, category = 'super', 						brand = 'lampadati', 	model = 'tigon', 		name = 'Tigon' 							}, -- 13
	{ req_g_build = 2060, hash = 0, 			blacklist = false, category = 'openwheel', 					brand = 'declasse', 	model = '', 			name = 'DR1 (IndyCar)' 					}, -- 14
	{ req_g_build = 2060, hash = 0, 			blacklist = false, category = 'openwheel', 					brand = 'benefactor', 	model = '', 			name = 'BR8 (Formula 1 Car)' 			}, -- 15

	-- GTAV 1.52 | Game Build 2189 |  20 vehicles | Cayo Perico Heist
	{ req_g_build = 2189, hash = 0, 			blacklist = false, category = 'boats', 						brand = 'nagasaki', 	model = '', 			name = 'Weaponized Dinghy' 				}, -- 1
	{ req_g_build = 2189, hash = 298565713, 	blacklist = false, category = 'offroad', 					brand = 'dinka', 		model = 'verus', 		name = 'Verus' 							}, -- 2
	{ req_g_build = 2189, hash = 0, 			blacklist = false, category = 'suvs', 						brand = 'mammoth', 		model = '', 			name = 'Squaddie' 						}, -- 3
	{ req_g_build = 2189, hash = 0, 			blacklist = false, category = 'military', 					brand = 'unknown', 		model = '', 			name = 'Vetir' 							}, -- 4
	{ req_g_build = 2189, hash = -1045911276, 	blacklist = false, category = 'utility', 					brand = 'vapid', 		model = 'slamtruck', 	name = 'Slamtruck' 						}, -- 5
	{ req_g_build = 2189, hash = 0, 			blacklist = false, category = {'motorcycles', 'offroad'}, 	brand = 'maibatsu', 	model = '', 			name = 'Manchez Scout' 					}, -- 6
	{ req_g_build = 2189, hash = 1429622905, 	blacklist = false, category = 'compacts', 					brand = 'grotti', 		model = 'brioso2', 		name = 'Brioso 300' 					}, -- 7
	{ req_g_build = 2189, hash = 1644055914, 	blacklist = false, category = 'compacts', 					brand = 'bf', 			model = 'weevil', 		name = 'Weevil' 						}, -- 8
	{ req_g_build = 2189, hash = -1149725334, 	blacklist = false, category = 'sports', 					brand = 'progen', 		model = 'italirsx', 	name = 'Itali RSX' 						}, -- 9
	{ req_g_build = 2189, hash = 0, 			blacklist = false, category = 'sports', 					brand = 'dinka', 		model = '', 			name = 'Veto Modern (Go-Kart)' 			}, -- 10
	{ req_g_build = 2189, hash = 0, 			blacklist = false, category = 'sports', 					brand = 'dinka', 		model = '', 			name = 'Veto Classic (Go-Kart)' 		}, -- 11
	{ req_g_build = 2189, hash = 0, 			blacklist = false, category = {'boats', 'military'}, 		brand = 'rune', 		model = '', 			name = 'Kosatka (Submarine HQ)'			}, -- 12
	{ req_g_build = 2189, hash = 1455990255, 	blacklist = false, category = 'sportsclassics', 			brand = 'pegassi', 		model = 'toreador', 	name = 'Toreador' 						}, -- 13
	{ req_g_build = 2189, hash = 0, 			blacklist = false, category = 'helicopters', 				brand = 'unknown', 		model = '', 			name = 'Sparrow' 						}, -- 14
	{ req_g_build = 2189, hash = 0, 			blacklist = false, category = 'boats', 						brand = 'kraken', 		model = '', 			name = 'Avisa' 							}, -- 15
	{ req_g_build = 2189, hash = 0, 			blacklist = false, category = 'boats', 						brand = 'unknown', 		model = '', 			name = 'Kurtz 31 Patrol Boat' 			}, -- 16
	{ req_g_build = 2189, hash = 1861786828, 	blacklist = false, category = 'boats', 						brand = 'shitzu', 		model = 'longfin', 		name = 'Longfin' 						}, -- 17
	{ req_g_build = 2189, hash = 0, 			blacklist = false, category = 'helicopters', 				brand = 'western', 		model = '', 			name = 'Annihilator Stealth' 			}, -- 18
	{ req_g_build = 2189, hash = 0, 			blacklist = false, category = 'planes', 					brand = 'unknown', 		model = '', 			name = 'RO-86 Alkonost' 				}, -- 19
	{ req_g_build = 2189, hash = -210308634, 	blacklist = false, category = 'offroad', 					brand = 'vapid', 		model = 'winky', 		name = 'Winky' 							}, -- 20

	-- GTAV 1.57 | Game Build 2372 |  17 vehicles | Los Santos Tuners
	{ req_g_build = 2372, hash = 1416471345, 	blacklist = false, category = {'coupes', 'tuners'}, 		brand = 'karin', 		model = 'previon', 		name = 'Previon' 						}, -- 1
	{ req_g_build = 2372, hash = 1755697647, 	blacklist = false, category = {'sports', 'tuners'}, 		brand = 'ubermacht', 	model = 'cypher', 		name = 'Cypher' 						}, -- 2
	{ req_g_build = 2372, hash = -291021213, 	blacklist = false, category = {'sports', 'tuners'}, 		brand = 'karin', 		model = 'sultan3', 		name = 'Sultan RS Classic' 				}, -- 3
	{ req_g_build = 2372, hash = 1304459735, 	blacklist = false, category = {'sports', 'tuners'}, 		brand = 'pfister', 		model = 'growler', 		name = 'Growler' 						}, -- 4
	{ req_g_build = 2372, hash = -1540373595, 	blacklist = false, category = {'sports', 'tuners'}, 		brand = 'emperor', 		model = 'vectre', 		name = 'Vectre' 						}, -- 5
	{ req_g_build = 2372, hash = 426742808, 	blacklist = false, category = {'muscle', 'tuners'}, 		brand = 'vapid', 		model = 'dominator7', 	name = 'Dominator ASP' 					}, -- 6
	{ req_g_build = 2372, hash = 1141395928, 	blacklist = false, category = {'sports', 'tuners'}, 		brand = 'pfister', 		model = 'comet6', 		name = 'Comet S2' 						}, -- 7
	{ req_g_build = 2372, hash = 1377217886, 	blacklist = false, category = {'sports', 'tuners'}, 		brand = 'annis', 		model = 'remus', 		name = 'Remus' 							}, -- 8
	{ req_g_build = 2372, hash = -1582061455, 	blacklist = false, category = {'sports', 'tuners'}, 		brand = 'dinka', 		model = 'jester4', 		name = 'Jester RR' 						}, -- 9
	{ req_g_build = 2372, hash = -1244461404, 	blacklist = false, category = {'sedans', 'tuners'}, 		brand = 'obey', 		model = 'tailgater2', 	name = 'Tailgater S' 					}, -- 10
	{ req_g_build = 2372, hash = 579912970, 	blacklist = false, category = {'sedans', 'tuners'}, 		brand = 'vulcar', 		model = 'warrener2', 	name = 'Warrener HKR' 					}, -- 11
	{ req_g_build = 2372, hash = -452604007, 	blacklist = false, category = {'sports', 'tuners'}, 		brand = 'dinka', 		model = 'rt3000', 		name = 'RT3000' 						}, -- 12
	{ req_g_build = 2372, hash = -1858654120, 	blacklist = false, category = {'sports', 'tuners'}, 		brand = 'annis', 		model = 'zr350', 		name = 'ZR350' 							}, -- 13
	{ req_g_build = 2372, hash = 736672010, 	blacklist = false, category = {'muscle', 'tuners'}, 		brand = 'vapid', 		model = 'dominator8', 	name = 'Dominator GTT' 					}, -- 14
	{ req_g_build = 2372, hash = 2038480341, 	blacklist = false, category = {'sports', 'tuners'}, 		brand = 'annis', 		model = 'euros', 		name = 'Euros' 							}, -- 15
	{ req_g_build = 2372, hash = -1507230520, 	blacklist = false, category = {'sports', 'tuners'}, 		brand = 'karin', 		model = 'futo2', 		name = 'Futo GTX' 						}, -- 16
	{ req_g_build = 2372, hash = -1193912403, 	blacklist = false, category = {'sports', 'tuners'}, 		brand = 'karin', 		model = 'calico', 		name = 'Calico GTF' 					}, -- 17

	-- GTAV 1.58 | Game Build 2545 |  16 vehicles | The Contract
	{ req_g_build = 2545, hash = 1993851908, 	blacklist = false, category = 'motorcycles', 				brand = 'western', 		model = 'reever', 		name = 'Reever' 						}, -- 1
	{ req_g_build = 2545, hash = -261346873, 	blacklist = false, category = 'suvs', 						brand = 'declasse', 	model = 'granger2', 	name = 'Granger 3600LX' 				}, -- 2
	{ req_g_build = 2545, hash = 662793086, 	blacklist = false, category = 'suvs', 						brand = 'obey', 		model = 'iwagen', 		name = 'I-Wagen' 						}, -- 3
	{ req_g_build = 2545, hash = 1353120668, 	blacklist = false, category = 'motorcycles', 				brand = 'nagasaki', 	model = 'shinobi', 		name = 'Shinobi' 						}, -- 4
	{ req_g_build = 2545, hash = -1726022652, 	blacklist = false, category = 'sports', 					brand = 'pfister', 		model = 'comet7', 		name = 'Comet S2 Cabrio' 				}, -- 5
	{ req_g_build = 2545, hash = -670086588, 	blacklist = false, category = 'offroad', 					brand = 'mammoth', 		model = 'patriot3', 	name = 'Patriot Mil-Spec' 				}, -- 6
	{ req_g_build = 2545, hash = 359875117, 	blacklist = false, category = 'suvs', 						brand = 'gallivanter', 	model = 'baller7', 		name = 'Baller ST' 						}, -- 7
	{ req_g_build = 2545, hash = 655665811, 	blacklist = false, category = 'super', 						brand = 'overflod', 	model = 'zeno', 		name = 'Zeno' 							}, -- 8
	{ req_g_build = 2545, hash = 1486521356, 	blacklist = false, category = 'vans', 						brand = 'bravado', 		model = 'youga4', 		name = 'Youga Custom' 					}, -- 9
	{ req_g_build = 2545, hash = -619930876, 	blacklist = false, category = 'muscle', 					brand = 'bravado', 		model = 'buffalo4', 	name = 'Buffalo STX' 					}, -- 10
	{ req_g_build = 2545, hash = -1444114309, 	blacklist = false, category = 'super', 						brand = 'pegassi', 		model = 'ignus', 		name = 'Ignus' 							}, -- 11
	{ req_g_build = 2545, hash = 1532171089, 	blacklist = false, category = 'sedans', 					brand = 'enus', 		model = 'deity', 		name = 'Deity' 							}, -- 12
	{ req_g_build = 2545, hash = -1527436269, 	blacklist = false, category = 'sedans', 					brand = 'lampadati', 	model = 'cinquemila', 	name = 'Cinquemila' 					}, -- 13
	{ req_g_build = 2545, hash = 629969764, 	blacklist = false, category = 'suvs', 						brand = 'pfister', 		model = 'astron', 		name = 'Astron' 						}, -- 14
	{ req_g_build = 2545, hash = -915234475, 	blacklist = false, category = 'super', 						brand = 'dewbauchee', 	model = 'champion', 	name = 'Champion' 						}, -- 15
	{ req_g_build = 2545, hash = 461465043, 	blacklist = false, category = 'suvs', 						brand = 'enus', 		model = 'jubilee', 		name = 'Jubilee' 						}, -- 16

	-- GTAV 1.** | Game Build **** |   5 vehicles | PS5 & Xbox Series X/S Release
}