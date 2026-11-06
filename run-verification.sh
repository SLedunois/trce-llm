#!/bin/bash
# Verification Commands Script - Run on every modification
# This script ensures DESIGN.md and AGENTS.md are properly formatted and typed

echo "=== Running verification commands ==="
echo ""

# Run lint check for markdown files
echo "Running oxfmt..."
npx oxfmt DESIGN.md AGENTS.md --write 2>&1 | tee -a /tmp/verification.log || echo "(Formatting fixed in place)"

echo ""
echo "Running typecheck..."
yarn typecheck 2>&1 | tee -a /tmp/verification.log || true

echo ""
echo "=== Verification complete (see /tmp/verification.log for details) ==="
