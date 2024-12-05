# tls-client-api-docker

dockerizing [**bogdanfinn/tls-client-api**](https://github.com/bogdanfinn/tls-client-api)

## Run the image

```bash
# with custom x-api-key (default: my-auth-key-1)
docker run -p 8080:8080 \
  -e AUTH_KEYS="customkey1,customkey2" \
  lfsaga/tls-client-api
```

## Standalone Api Application

Usage: https://bogdanfinn.gitbook.io/open-source-oasis/standalone-api-application

For example, to forward an HTTP request using lib parameters (such `tlsClientIdentifier`), send request like the following:

```
x-api-key: my-auth-key-1 (as header)
POST https://localhost:8080/api/foward
{ "tlsClientIdentifier": "chrome_103", "requestMethod": "GET", "requestUrl": "http://test-website.com/", ... }
```
