## Environment Variables

- `ENV`: Environment mode (default: `dev`)
- `APP_PROJECT`: Project name (default: `tls-client`)
- `APP_FAMILY`: Application family (default: `tls-client`)
- `APP_NAME`: Application name (default: `api`)

### Logging

- `LOG_LEVEL`: Logging level (default: `info`)
- `LOG_TIMESTAMP_FORMAT`: Timestamp format (default: `'15:04:05:000'`)

### API

- `API_PORT`: API port (default: `8080`)
- `API_HEALTH_PORT`: Health check port (default: `8081`)
- `API_TIMEOUT_READ`: Read timeout (default: `120s`)
- `API_TIMEOUT_WRITE`: Write timeout (default: `120s`)
- `API_TIMEOUT_IDLE`: Idle timeout (default: `120s`)

### Authentication / CORS

- `API_AUTH_KEYS`: List of authentication keys (default: `["my-auth-key-1", "my-auth-key-2", "my-auth-key-3"]`)
- `API_CORS_ORIGIN_PATTERN`: CORS origin pattern (default: empty)
- `API_CORS_HEADERS`: Allowed CORS headers (default: `["X-API-KEY", "X-API-VIEW", "Content-Type"]`)
- `API_CORS_METHODS`: Allowed CORS methods (default: `["POST", "GET", "PUT", "DELETE"]`)
