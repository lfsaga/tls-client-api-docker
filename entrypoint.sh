#!/bin/bash

BASE_CONFIG_FILE_PATH="/opt/tls-client-api/config.dist.template.yml"
CONFIG_FILE_PATH="/opt/tls-client-api/config.dist.yml"

cp "$BASE_CONFIG_FILE_PATH" "$CONFIG_FILE_PATH"

replace_line() {
    local file_path="$1"
    local line_number="$2"
    local replacement="$3"
    sed -i "${line_number}s/.*/${replacement}/" "$file_path"
}

if [[ -n "$AUTH_KEYS" ]]; then
    AUTH_KEYS_ARRAY=$(echo "$AUTH_KEYS" | tr ',' '\n' | sed -e 's/^ *//; s/ *$//' | sed -e 's/^/"/' -e 's/$/"/' | tr '\n' ',' | sed -e 's/,$//')
    FORMATTED_AUTH_KEYS="[${AUTH_KEYS_ARRAY}]"
    replace_line $CONFIG_FILE_PATH 33 "api_auth_keys: ${FORMATTED_AUTH_KEYS}"
    echo "tls-client-api-docker: Using custom auth keys"
fi

if [[ -n "$PORT" ]]; then
    replace_line $CONFIG_FILE_PATH 24 "  port: ${PORT}"
    echo "tls-client-api-docker: Using custom port ${PORT}"
fi

if [[ -n "$HEALTH_PORT" ]]; then
    replace_line $CONFIG_FILE_PATH 27 "    port: ${HEALTH_PORT}"
    echo "tls-client-api-docker: Using custom health port ${HEALTH_PORT}"
fi

./bin
