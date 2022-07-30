RestFX.http.fetch('http://localhost:30120/restfx/ping', function(result, head, code)
	print(result[1])
	return 'hello'
end)