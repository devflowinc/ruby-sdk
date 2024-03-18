# Trieve Ruby Client

This repository holds the generated Ruby client for Trieve. This client is created with [openapi-generator](https://openapi-generator.tech/) from the [Trieve OpenAPI specification](https://api.trieve.ai/redoc). 

## Generating a new version 

### Setup

1. Download the OpenAPI json specification from [api.trieve.ai/redoc](https://api.trieve.ai/redoc).
2. Follow the [openapi-generator installation instructions](https://openapi-generator.tech/docs/installation) to install its CLI. 
3. Expose Java on your path by following a guide for your distribution. Commonly, `sudo apt install default-jdk` works for most Ubuntu-based linux distributions. 

### Generating 

1. Update the version in `.travis.yml` to match that of the OpenAPI spec 
2. Run `npx @openapitools/openapi-generator-cli generate -i openapi.json -g ruby`

### Publishing

1. Run `gem signin` and follow the steps to authenticate with your [rubygems.org](https://rubygems.org) account. If your are not an owner of the package and believe you should have owner-level access, contact developers@trieve.ai. 
2. Run `gem build` 
3. Run `gem push trieve_ruby_client-v.v.v` for the relevant version





