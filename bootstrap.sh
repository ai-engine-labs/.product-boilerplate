#!/bin/bash

# Template

# Setup
echo "Setting up environment..."
cp -n config/example.local.yaml config/local.yaml

# Activate virtualenv (if exists)
if [ -d "venv" ]; then
  source venv/bin/activate
fi

# Run pipeline
echo "Running full audio pipeline..."
bash workflows/run_e2e_pipeline.sh

