let echo = require('laravel-echo-server');

echo.run(
    {
        "authHost": "http://nginx",
        "authEndpoint": "/api/broadcasting/auth",
        "clients": [
            {
                "appId": "db13d1be2af17e3d",
                "key": "eb7238647ed1c7a9c24b091939f028da"
            }
        ],
        "database": "redis",
        "databaseConfig": {
            "redis": {
                "host": "redis",
                "port": "6379",
                "password": "662055"
            },
            "sqlite": {
                "databasePath": "/database/laravel-echo-server.sqlite"
            }
        },
        "devMode": false,
        "host": "echo",
        "port": "6001",
        "protocol": "http",
        "socketio": {},
        "secureOptions": 67108864,
        "sslCertPath": "",
        "sslKeyPath": "",
        "sslCertChainPath": "",
        "sslPassphrase": "",
        "subscribers": {
            "http": true,
            "redis": true
        },
        "apiOriginAllow": {
            "allowCors": true,
            "allowOrigin": "",
            "allowMethods": "",
            "allowHeaders": ""
        }
    }
);
