Res = {}

function Res.new(res)
	return setmetatable({
		res = res
	}, {
		__index = Res,
		__call = function(self, code, message, object)

			-- if there inst any response code set default to 500
			code = code or 500

			local data = {
				status = {
					code = code,
					disc = codes[code]
				}
			}

			if code >= 200 and code <= 299 then
				data.message = message or "no message provided"
				data.data = object or {
					warn = "no data provided"
				}
			end

			self.res.writeHead(code, {
				["Access-Control-Allow-Origin"] = "*",
				["Content-Type"] = "application/json"
			})

			self.res.send(json.encode(data))

		end,
		__tostring = tostringMethod,
		__metatable = nil
	})
end