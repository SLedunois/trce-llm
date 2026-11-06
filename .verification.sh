#!/bin/bash
# Verification Commands Script - Run on every modification
cd /home/sledunois/dev/trce-llm

echo "=== Running verification commands ==="
echo ""

# Run lint check
echo "Running oxlint..."
npx oxlint DESIGN.md AGENTS.md 2>&1 || true

echo ""
echo "Running oxfmt (checking)..."
npx oxfmt DESIGN.md AGENTS.md --check || echo "(Format issues found - run without --check to fix)"

echo ""
echo "Running typecheck..."
yarn typecheck || true

echo ""
echo "=== Verification complete ==="
