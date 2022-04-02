Fetch = {}

function Fetch.new()

	return setmetatable({}, {
		__index = Fetch,
		__call = function (self, uri, data, header)

			PerformHttpRequest(uri, function(error_code, result_data, result_header)
			
				print(error_code)

				result_data = setmetatable(result_data, { __tostring = tostringMethod })
				print(result_data)

				result_header = setmetatable(result_header, { __tostring = tostringMethod })
				print(result_header)

			end, 'GET', data, header)

		end
	})

end