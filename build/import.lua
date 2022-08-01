local lib = exports.restfx:getapi()

local http = {
	fetch = 'GET',
	post = 'POST'
}

local restfx = lib

setmetatable(restfx, {
	__index = function(self, index)
		if http[index] ~= nil then
			return function(uri, cb, head, body)
				head = head or {}
				body = body or {}
				self.request(uri, {
					head = head,
					body = body
				}, cb, http[index])
			end
		else
			return function(...)
				self[alias](...)
			end
		end
	end
})

_G.restfx = restfx