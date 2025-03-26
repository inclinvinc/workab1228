from robot.api.deco import keyword

class CustomKeys:

    @keyword("Prints hello world")
    def print_hello_world(self, abc):
        print(f'Hello World {abc}')