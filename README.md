# pycpphello

Boilerplate code and helper to get a simple Python 3.8 program up and running with a cpp module.

## Install system dependencies
```
sudo apt install swig
```

## Getting Started

Download the repo, setup and run the code.

```
cd pycpphello
./setup_helper
```

Follow instructions for Python environment setup.

```
# One option for setting up environment.
#
# Paste to setup Anaconda environment:
$ conda create -n pycpphello python=3.8
$ conda activate pycpphello
#
# Paste to install requirements, reactivate conda
$ pip install -r requirements.txt
$ conda deactivate
$ conda activate pycpphello
#
# Add alias 'pyh' to add repo path to PYTHONPATH:
$ alias pyh="export PYTHONPATH={PWD}:{PWD}/install"
$ pyh
```

Run the build/install script.
```
./build-nix.sh
```

Check your code.
```
$ flake8 pycpphello main.py
```
or
```
$ pytest --flake8 pycpphello main.py
```

Run it.
```
python main.py
```

You should see the following output:
```
Hello world CPP from Dummy: 42
Hello World Python from Foo 42
```
