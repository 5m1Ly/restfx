local lib = exports.restfx:getapi()
local http = { fetch = 'GET', post = 'POST' }

local restfx = setmetatable({}, {
	__index = function(self, index)
		if http[index] ~= nil then
			return function(uri, cb, head, body)
				self.request(uri, {
					head = head or {},
					body = body or {}
				}, cb, http[index])
			end
		else
			return function(...)
				lib[index](...)
			end
		end
	end
})

_G.restfx = restfx