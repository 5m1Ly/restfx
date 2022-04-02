Post = {}

function Post.new()

	return setmetatable({}, {
		__index = Post,
		__call = function (self, uri, data, header)

			PerformHttpRequest(uri, function(errorCode, resultData, resultHeaders)
			


			end, 'POST', data, header)

		end
	})

end