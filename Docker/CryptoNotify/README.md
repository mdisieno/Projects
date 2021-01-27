This container will use a simple script that monitors the respective bitcoin you decide and handles either a webhook or direct to pushbullet notification. I had something like this before but I felt it would be best to container and distribute it for others.

This docker will use the bitcoin url json pull ( https://api.coinbase.com/v2/prices/${COIN}-USD/spot ) and then parse the information to the respective notification tool. At launch I'm going to incorporate Pushbullet and Webhook. This will of course have channel support for pushbullet, but it will also provide IFTTT support with webhook.
