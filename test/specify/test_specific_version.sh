#!/bin/bash

# This test file will be executed against one of the scenarios devcontainer.json test that
# includes the 'spec-kit' feature with "version": "v0.0.54" option.

set -e

# Optional: Import test library bundled with the devcontainer CLI
source dev-container-features-test-lib

# Feature-specific tests
# The 'check' command comes from the dev-container-features-test-lib.
check "Spec kit is installed & Specify CLI is ready to use!" sh -c "/usr/local/bin/specify check | grep 'Specify CLI is ready to use!'"

# Report result
# If any of the checks above exited with a non-zero exit code, the test will fail.
reportResults
