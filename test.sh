#!/bin/bash

source venv/bin/activate  # Activate the virtual environment
coverage run -m pytest
# Run pytest with coverage and capture the output
OUTPUT=$(coverage lcov -i --include="scripts/script_d.py" -o coverage_report.lcov || true )

echo $OUTPUT

# Check if the output contains "No data to report."
if echo "$OUTPUT" | grep -q "No data to report."; then
    exit 0  # Exit with status 0
else
    echo "$OUTPUT"  # Print the output if coverage data exists
fi

# If you want to handle additional processing for valid coverage data, you can continue here
# e.g., generate coverage report