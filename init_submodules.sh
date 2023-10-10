#!/bin/bash

# Initialize, fetch and checkout the submodule content
echo "Initializing submodules..."
git submodule init

echo "Updating submodules..."
git submodule update

echo "Submodules initialized and updated successfully!"