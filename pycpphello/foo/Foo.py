import logging

class Foo():

    @staticmethod
    def foo_hello(level: int) -> None:
        logging.info(f"Hello World Python from Foo {level}")
