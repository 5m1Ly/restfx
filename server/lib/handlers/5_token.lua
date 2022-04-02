Token = {}

function Token.new()

	return setmetatable({
		tokens = {}
	}, {
		__index = Token,
		__call = function(self, amount)

			local new_token = 'CFX_API_LIB_'..self:create(20)
			local exists = self:check(new_token)

			if not exists then

				table.insert(self.tokens, new_token)

				print('^8CREATED NEW TOKEN: ^0'..new_token)

				if amount > 0 then self(amount - 1) end

			else

				self(amount)

			end

		end
	})

end

function Token:create(length)
	if length <= 0 then return '' end
	local char = math.random(1, 2) == 2 and math.random(1, 2) == 2 and math.random(65,  90) or math.random(48,  57) or math.random(97, 122)
	return Token:create(length - 1) .. string.char(char)
end

function Token:check(token)
	local retval = false
	local index = 0
	for i = 1, #self.tokens do
		if self.tokens[i] == token then
			retval = true
			index = i
			break
		end
	end
	return retval, index
end