

class python_max_heap():

    @classmethod
    def __init__(self, arr: list) -> None:
        self.arr = arr

    @classmethod
    def get_parent(self, i: int):
        return (i-1)//2
    
    @classmethod
    def get_left_child(self, i: int):
        return (2*i)+1
    
    @classmethod
    def get_right_child(self, i: int):
        return (2*i)+2

    @classmethod
    def max_heapify(self, arr: list, n: int, i: int):
        largest = i
        lt = self.get_left_child(i)
        rt = self.get_right_child(i)

        if(lt<n and arr[lt] > arr[largest]):
            largest = lt

        if(rt<n and arr[rt] > arr[largest]):
            largest = rt

        if(largest!=i):
            arr[i], arr[largest] = arr[largest], arr[i]
            self.max_heapify(arr, n, largest )

    @classmethod
    def get_leaf_nodes(self):
        n = len(self.arr)
        return self.arr[n//2 + 1: n]

    @classmethod
    def get_max_heapify(self):
        n = len(self.arr)

        start = (n-2)//2
        end = -1
        for i in range(start, end, -1):
            self.max_heapify(self.arr, n, i)

    @classmethod
    def perform_heap_sort(self):
        n = len(self.arr)
        self.get_max_heapify()
        for i in range(n-1, 0, -1):
            self.arr[i], self.arr[0] = self.arr[0], self.arr[i]
            self.max_heapify(self.arr, i, 0)
    
    @classmethod
    def show_array(self):
        print(self.arr)


def driver():
    my_python_max_heap  = python_max_heap([931, 452, 874, 11, 827, 43, 53, 878, 820, 669])
    my_python_max_heap.show_array()
    my_python_max_heap.get_max_heapify()
    my_python_max_heap.perform_heap_sort()
    my_python_max_heap.show_array()
    # print(my_python_max_heap.get_leaf_nodes())


if(__name__=="__main__"):
    driver()