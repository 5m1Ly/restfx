Fetch = {}

function Fetch.new()

	return setmetatable({}, {
		__index = Fetch,
		__call = function (self, uri, data, header)

			PerformHttpRequest(uri, function(error_code, result_data, result_header)
			
				print(error_code)


				result_data = json.decode(result_data)
				local dat = setmetatable({ data = result_data }, { __tostring = tostringMethod })
				print(dat)

				local head = setmetatable({ data = result_header }, { __tostring = tostringMethod })
				print(head)

			end, 'GET', data, header)

		end
	})

end