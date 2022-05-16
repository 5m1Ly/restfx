Fsx = Fsx or {}
Fsx.system = Fsx.system or {}

Fsx.system.resource = {}

Fsx.system.resource.vChecker = function(repo_owner, repo_name, repo_version)

	local Uri = ('https://api.github.com/repos/%s/%s/releases/latest'):format(repo_owner, repo_name)

	-- check version of resource
	Fsx.system.http.fetch(Uri, function(success, response, headers)

		local str = ''

		if success then

			local latest_version = string.gmatch(response.name, "%d.%d.%d")()

			str = str .. ('\n^5ltst version: ^2%s^5\ncurr version: ^3%s\n'):format(latest_version, repo_version)

			if latest_version == repo_version then

				str = str .. '\n^2SUCC: everything is up to date...'

			else

				str = str .. ('\n^8WARN: your version of the %s is not up to date. you can download the latest version from the link below.'):format(repo_name)
				str = str .. ('\n^3DOWNLOAD: ^5%s'):format(response.html_url)

			end

		else

			str = str .. '\n^3WARN: could not verify the version of your resource...'

		end

		str = str .. '\n^2SUCC: resource is up and running...\n\n^9Created by ^8Sm1Ly^9 for servers build with the ^8CitizenFX Framework^9!\n^0'

		print(str)

	end)

end