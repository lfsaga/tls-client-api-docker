#!/bin/bash
export ENV="${ENV:-dev}"
export APP_PROJECT="${APP_PROJECT:-tls-client}"
export APP_FAMILY="${APP_FAMILY:-tls-client}"
export APP_NAME="${APP_NAME:-api}"
export LOG_LEVEL="${LOG_LEVEL:-info}"
export LOG_TIMESTAMP_FORMAT="${LOG_TIMESTAMP_FORMAT:-15:04:05:000}"
export API_PORT="${API_PORT:-8080}"
export API_HEALTH_PORT="${API_HEALTH_PORT:-8081}"
export API_TIMEOUT_READ="${API_TIMEOUT_READ:-120s}"
export API_TIMEOUT_WRITE="${API_TIMEOUT_WRITE:-120s}"
export API_TIMEOUT_IDLE="${API_TIMEOUT_IDLE:-120s}"
if [ -n "$API_AUTH_KEYS" ]; then
    API_AUTH_KEYS=$(echo "$API_AUTH_KEYS" | sed 's/,/\", \"/g')
    API_AUTH_KEYS="[\"$API_AUTH_KEYS\"]"
fi
export API_AUTH_KEYS="${API_AUTH_KEYS:-[\"my-auth-key-1\", \"my-auth-key-2\", \"my-auth-key-3\"]}"
export API_CORS_ORIGIN_PATTERN="${API_CORS_ORIGIN_PATTERN:-""}"
export API_CORS_HEADERS="${API_CORS_HEADERS:-[\"X-API-KEY\", \"X-API-VIEW\", \"Content-Type\"]}"
export API_CORS_ALLOWED_METHODS="${API_CORS_METHODS:-[\"POST\", \"GET\", \"PUT\", \"DELETE\"]}"

if [ ! -f "config.dist.yml" ]; then
    echo "ERROR: Missing config.dist.yml"
    exit 1
fi

./api
