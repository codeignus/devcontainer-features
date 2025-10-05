#!/bin/sh

SPECKIT_VERSION="${VERSION:-"latest"}"

set -e

echo "Installing feature 'specify'"

export UV_TOOL_DIR=/usr/local/share/uv/tools
export UV_PYTHON_INSTALL_DIR=/usr/local/share/uv/python
export UV_TOOL_BIN_DIR=/usr/local/bin

if test "${SPECKIT_VERSION}" = "latest"; then
  uv tool install specify-cli --from git+https://github.com/github/spec-kit.git
else
  uv tool install specify-cli --from git+https://github.com/github/spec-kit.git@"$SPECKIT_VERSION"
fi