import math
import random
class custom_heap:

    @classmethod
    def __init__(self, arr: list) -> None:
        self.arr = arr

    @classmethod
    def get_left_child(self, i: int) -> int:
        return (2*i)+1
    
    @classmethod
    def get_right_child(self, i: int) -> int:
        return (2*i)+2
    
    @classmethod
    def get_parent(self, i: int) -> int:
        return (i-1)//2
    
    @classmethod
    def min_heapify_rec(self, i: int):
        arr = self.arr
        lt = self.get_left_child(i)
        rt = self.get_right_child(i)
        smallest = i
        n = len(arr)

        if lt<n and arr[lt] < arr[smallest]:
            smallest = lt
        if rt<n and arr[rt] < arr[smallest]:
            smallest = rt
        
        if smallest != i:
            arr[i], arr[smallest] = arr[smallest], arr[i]
            self.min_heapify_rec(smallest)

    @classmethod
    def extract_minimun(self):
        arr = self.arr
        n = len(arr)
        if n == 0:
            return math.inf
        res = arr[0]
        arr[0] = arr[n-1]
        arr.pop()
        self.min_heapify_rec(0)
        return res
    
    @classmethod
    def extract_maximum(self):
        arr = self.arr
        n = len(arr)
        if n == 0:
            return math.inf
        res = arr[0]
        arr[0] = arr[n-1]
        arr.pop()
        self.max_heapify_rec(0)
        return res

    @classmethod
    def max_heapify_rec(self, i: int):
        arr = self.arr
        n = len(arr)
        largest = i
        lt = self.get_left_child(i)
        rt = self.get_right_child(i)
        if(lt<n and arr[lt] > arr[largest]):
            largest = lt
        if(rt<n and arr[rt] > arr[largest]):
            largest = rt
        if(largest!=i):
            arr[i], arr[largest] = arr[largest], arr[i]
            self.max_heapify_rec(largest)

    @classmethod
    def build_max_heap(self):
        n = len(self.arr)

        # get parent of last element
        start = self.get_parent(n-1)
        end = -1

        for i in range(start, end, -1):
            self.max_heapify_rec(i)

    @classmethod
    def build_min_heap(self):
        n = len(self.arr)

        # get parent of last element
        start = self.get_parent(n-1)
        end = -1

        for i in range(start, end, -1):
            self.min_heapify_rec(i)

    @classmethod
    def show_array(self):
        print(
            self.arr,
            sum(self.arr)/len(self.arr),
            max(self.arr),
            min(self.arr),
            len(self.arr)
        )
        return self.arr
    
    @classmethod
    def decrease_key_min(self, i: int, x: int):
        arr = self.arr
        arr[i] = x
        while i>0 and arr[i] < arr[self.get_parent(i)]:
            parent = self.get_parent(i)
            arr[i], arr[parent] = arr[parent], arr[i]
            i = parent

    @classmethod
    def decrease_key_max(self, i: int, x: int):
        arr = self.arr
        arr[i] = x
        while i>0 and arr[i] > arr[self.get_parent(i)]:
            parent = self.get_parent(i)
            arr[i], arr[parent] = arr[parent], arr[i]
            i = parent

    @classmethod
    def delete_in_min(self, i: int):
        arr = self.arr
        if(i>=len(arr)):
            return
        else:
            self.decrease_key_min(i, -math.inf)
            self.extract_minimun()

    @classmethod
    def delete_in_max(self, i: int):
        arr = self.arr
        if(i>=len(arr)):
            return
        else:
            self.decrease_key_max(i, math.inf)
            self.extract_maximum()


def driver():
    my_custom_heap = custom_heap(arr = [int(random.randrange(1, 1000) ) for i in range(10)])
    my_custom_heap.show_array()

    print("min heap")

    # Perform operations on min heap
    my_custom_heap.build_min_heap()
    print(my_custom_heap.extract_minimun())
    my_custom_heap.decrease_key_min(1, 45)
    my_custom_heap.delete_in_min(4)
    my_custom_heap.show_array()


    print("max heap")
    my_custom_heap.show_array()
    # Perform operations on max heap
    my_custom_heap.build_max_heap()
    my_custom_heap.show_array()
    print(my_custom_heap.extract_maximum())
    my_custom_heap.decrease_key_max(1, -1)
    my_custom_heap.delete_in_max(4)
    my_custom_heap.show_array()

if(__name__ == "__main__"):
    driver()