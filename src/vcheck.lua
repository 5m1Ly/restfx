local version_checker = api.create()
local stay_up_to_date = json.decode(GetResourceMetadata(GetCurrentResourceName(), "stay_up_to_date"))

version_checker.fetch('https://api.github.com/repos/5m1Ly/cfx-api-lib/releases/latest', function(success, response, headers)

	local str = ''

	if stay_up_to_date then

		if success then

			if not response.prerelease then

				local latest_version = response.tag_name:gsub("release%-v", "")
				local current_version = GetResourceMetadata(GetCurrentResourceName(), "version")

				str = str .. ('\n^5ltst version: ^2%s^5\ncurr version: ^3%s'):format(latest_version, current_version)

				if tonumber(latest_version) == tonumber(current_version) then

					str = str .. '\n^2SUCC: everything is up to date...'

				else

					str = str .. '\n^8WARN: your version of the cfx-api-library is not up to date. you can download the latest version from the link below.'
					str = str .. ('\n^3DOWNLOAD: ^5%s'):format(response.html_url)

				end

			else

				str = str .. '\n^3WARN: be aware of the new prerelease update isn\'t needed yet...'

			end

		else

			str = str .. '\n^3WARN: could not verify the version of your resource...'

		end

	end

	str = str .. '\n^2SUCC: resource is up and running...\n\n^9Created by ^8Sm1Ly^9 for servers build with the ^8CitizenFX Framework^9!\n^0'

	print(str)

end)