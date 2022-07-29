const { createHmac } = require('crypto');

exports('hmac_sha256', (data, secret) => {
	return createHmac('sha256', secret).update(data).digest('hex');
});