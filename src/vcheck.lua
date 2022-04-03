local version_checker = api.create()
local stay_up_to_date = json.decode(GetResourceMetadata(GetCurrentResourceName(), "stay_up_to_date"))

local bbf = '\n\n^9Created by ^8Sm1Ly^9 for servers build with the ^8CitizenFX Framework^9!\n^0'

version_checker.fetch('https://api.github.com/repos/5m1Ly/cfx-api-lib/releases/latest', function(success, response, headers)
	if stay_up_to_date then
		if success then
			if not response.prerelease then
				local latest_version = response.tag_name:gsub("release%-v", "")
				print('\n^5ltst version: ^2'..latest_version..'^5')
				local current_version = GetResourceMetadata(GetCurrentResourceName(), "version")
				print('curr version: ^3'..current_version)
				if tonumber(latest_version) == tonumber(current_version) then
					print(('\n^2every this is up to date and running fine...%s'):format(bbf))
				else
					print('\n^8WARNING: your version of the cfx-api-library is not up to date.')
					print(('^8WARNING: you are running on version %s and the latest version is %s.'):format(current_version, latest_version))
					print(('\n^3DOWNLOAD: ^5%s%s'):format(response.html_url, bbf))
				end
			else
				print(('\n^3every this is up to date running fine running, but be aware of the new prerelease...%s'):format(bbf))
			end
		else
			print(('\n^3every this is running, but could not verify the version of your resource...%s'):format(bbf))
		end
	end
end)