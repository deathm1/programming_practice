## case without termination
def func():
    print("something")
    func()

func()

## RecursionError: maximum recursion depth exceeded while calling a Python object