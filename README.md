# tls-client-api-docker

dockerizing [**bogdanfinn/tls-client-api**](https://github.com/bogdanfinn/tls-client-api)

## Run the image

```bash
# quick run using default auth keys (my-auth-key-1)
docker run -p 8080:8080 tls-client-api
```

```bash
# custom auth keys and more. format is relevant!
docker run -p 8080:8080 \
  -p 8081:8081 \
  -e PORT=8080 \
  -e HEALTH_PORT=8181 \
  -e AUTH_KEYS="customkey1,customkey2" \
  tls-client-api
```

## API Usage

For example, to forward HTTP request using lib parameters (such `tlsClientIdentifier`), send request like the following:

```
x-api-key: my-auth-key-1 (as header)
POST https://localhost:8080/api/foward
{ "tlsClientIdentifier": "chrome_103", "requestMethod": "GET", "requestUrl": "http://test-website.com/", ... }
```

API documentation: https://bogdanfinn.gitbook.io/open-source-oasis/standalone-api-application
