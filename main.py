"""Simple Hello World Python script."""

import argparse
import logging
import sys

# import pyDummy
from pycpphello.foo.Foo import Foo
from pycpphello.dummy import pyDummy

def main() -> None:
    """Simple Hello World Python script."""
    parser = argparse.ArgumentParser(description='Hello World Python script.')
    parser.add_argument("--magic_number", "-m", default=42, help="A number.")
    args = parser.parse_args()

    logger = logging.getLogger()
    logger.setLevel(logging.DEBUG)
    logger.addHandler(logging.StreamHandler(sys.stdout))

    m = int(args.magic_number)
    pyDummy.Dummy.hello(m)
    Foo.hello(m)


if __name__ == "__main__":
    main()
