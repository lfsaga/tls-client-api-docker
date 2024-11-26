# tls-client-api-docker

- **Dockerized**
- [bogdanfinn/tls-client-api](https://github.com/bogdanfinn/tls-client-api)
- ❗ Required to send `x-api-key` header to it

## Run

```bash
# quick deploy with default auth
docker run -p 8080:8080 tls-client-api
```

```bash
# set custom auth and more. format is relevant!
docker run -p 8080:8080 \
  -e LOG_LEVEL=debug \
  -e API_AUTH_KEYS=key1,key2,key3 \
  tls-client-api
```

- More settings on `VARIABLES.md`

## API Usage

- For example, to forward HTTP request using parameters (such `tlsClientIdentifier`), send request like the following:

```
x-api-key: my-auth-key-1
POST
https://localhost:8080/api/foward
{ "tlsClientIdentifier": "chrome_103", "requestMethod": "GET", "requestUrl": "http://test-website.com/", ... }
```

- Read more on https://bogdanfinn.gitbook.io/open-source-oasis/standalone-api-application
