#!/bin/bash

# Shane Sturrock
# 03/07/2025

# Script to auto install Miniforge3 for users who don't already have it

ROOT=${HOME}
CONDA_VER=25.3.0-3
CONDA_BIN=${ROOT}/miniforge3/bin

# Delete old miniforge3 if it exists
if [ -d ${ROOT}/miniforge3 ]; then
	rm -rf ${ROOT}/miniforge3
fi

# Download and install miniforge
wget -N https://github.com/conda-forge/miniforge/releases/download/${CONDA_VER}/Miniforge3-${CONDA_VER}-Linux-x86_64.sh
bash ./Miniforge3-${CONDA_VER}-Linux-x86_64.sh -b -p ${ROOT}/miniforge3/

# Install the conda setup in user's .bashrc
${CONDA_BIN}/conda init

# Clean up
rm Miniforge3-${CONDA_VER}-Linux-x86_64.sh
