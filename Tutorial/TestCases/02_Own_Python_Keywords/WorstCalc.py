class WorstCalc:
    def __init__(self, init_value: int = 0):
        self._result = init_value

    def reset(self, init_value: int = 0):
        self._result = init_value

    def plus(self, value: int):
        self._result += value
        return self._result

    def minus(self, value: int):
        self._result -= value
        return self._result

    def times(self, value: int):
        self._result *= value
        return self._result

    def divide(self, value: int):
        if value == 0:
            raise ZeroDivisionError
        self._result /= value
        return self._result

    def get_result(self):
        return self._result
