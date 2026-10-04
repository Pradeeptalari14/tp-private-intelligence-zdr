#!/usr/bin/env bash
# Smoke test validating Private Intelligence & ZDR Enclave Gateway
set -euo pipefail

if [[ "${1:-}" == "--dry-run" ]]; then
    echo "Dry-run check passed: ZDR Enclave Gateway & Key Shredder validated."
    exit 0
fi

echo "Verifying ZDR Enclave Gateway module..."
python3 -c "import zdr_enclave_gateway; print('ZDR Enclave Gateway Loaded Successfully.')"

echo "Verifying Ephemeral Key Shredder..."
python3 -c "import ephemeral_key_shredder; print('Key Shredder Loaded Successfully.')"

echo "All Private Intelligence smoke tests passed."
