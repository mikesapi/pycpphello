import logging


class Foo():

    @staticmethod
    def hello(foo_value: int) -> None:
        logging.info(f"Hello World Python from Foo {foo_value}")
