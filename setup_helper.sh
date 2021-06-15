#! /bin/bash -e
echo "# One option for setting up environment."
echo "# "
echo "# Paste to setup Anaconda environment:"
echo "conda create -n pycpphello python=3.8"
echo "conda activate pycpphello"
echo "# "
echo "# Paste to install requirements, reactivate conda"
echo "pip install -r requirements.txt"
echo "conda deactivate"
echo "conda activate pycpphello"
echo "# "
echo "# Add alias 'pch' to add repo path to PYTHONPATH:"
echo "alias pch=\"export PYTHONPATH=${PWD}:${PWD}/install\""
echo "pch"