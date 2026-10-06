#!/usr/bin/env bash
# Builds the plugin ZIP uploaded to the OpenAI Plugins directory (platform.openai.com/plugins).
# The package root is this repository: plugin.json carries the listing, review, and publication
# metadata; mcp.json declares the remote MCP server; assets/ holds the listing icons.
set -euo pipefail

cd "$(dirname "$0")/.."

version="$(python3 -c 'import json; print(json.load(open("plugin.json"))["version"])')"
out="${1:-dist}"
mkdir -p "$out"

zip -r "$out/asking-plugin-${version}.zip" \
  plugin.json mcp.json .mcp.json LICENSE README.md README.pt-BR.md assets \
  -x '*.DS_Store'

echo "Built $out/asking-plugin-${version}.zip"
