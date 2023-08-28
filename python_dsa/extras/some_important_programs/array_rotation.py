class array_rotation():
    def __init__(self, arr: list, direction: bool, steps: int) -> None:
        self.arr = arr
        self.direction = direction
        self.steps = steps
        if(direction == True):
            self.output = self.perform_right_rotation()
        elif(direction == False):
            self.output = self.perform_left_rotation()
    def perform_left_rotation(self):
        array_slice_1 = [self.arr[i] for i in range(self.steps%len(self.arr), len(self.arr))]
        array_slice_2 = [self.arr[i] for i in range(0, self.steps%len(self.arr))]
        return array_slice_1 + array_slice_2
    def perform_right_rotation(self):
        array_slice_1 = [self.arr[i] for i in range(len(self.arr)-(self.steps%len(self.arr)), len(self.arr))]
        array_slice_2 = [self.arr[i] for i in range(0, len(self.arr)-(self.steps%len(self.arr)))]
        return  array_slice_1 + array_slice_2
    def get_output(self):
        return self.output
def driver():
    myobj = array_rotation(
        arr = [1, 2, 3, 4, 5],
        direction=True,
        steps=301
    )
    print(myobj.get_output())
if(__name__ == "__main__"):
    driver()