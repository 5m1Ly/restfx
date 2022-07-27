_ENV.RestFX = setmetatable({}, {
	__call = function(self, URI, ...)
		local SplitUri = exports.RestFX:SplitString(URI, '/')
		if string.match(SplitUri[1], 'http') then
			return exports.RestFX:HTTP_REQUEST(URI, ...)
		else
			return exports.RestFX:RESTFULL_API(URI, ...)
		end
	end
})