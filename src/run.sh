#!/bin/bash

echo "Running SAST..."
bash src/sast_scan.sh

echo "Running DAST..."
bash src/dast_scan.sh

echo "Done. Check reports/"
