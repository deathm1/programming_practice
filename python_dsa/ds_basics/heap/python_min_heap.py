import math

class python_min_heap:

    @classmethod
    def __init__(self, arr :list) -> None:
        self.arr = arr
        self.min_heapify_itr(0)
    
    @classmethod
    def parent(self, i) -> int:
        return (i-1)//2
    
    @classmethod
    def left_child(self, i) -> int:
        return (2*i+1)
    
    @classmethod
    def right_child(self, i) -> int:
        return (2*i+2)
    
    @classmethod
    def insert(self, element):
        myarr = self.arr
        myarr.append(element)
        i = len(myarr) - 1

        while i>0 and myarr[self.parent(i)] > myarr[i]:
            p = self.parent(i)
            myarr[i], myarr[p] = myarr[p], myarr[i]
            i = p
        self.arr = myarr
        del myarr

    @classmethod
    def min_heapify_rec(self, i):
        lt = self.left_child(i)
        rt = self.right_child(i)
        smallest = i
        n = len(self.arr)

        if lt<n and self.arr[lt] < self.arr[smallest]:
            smallest = lt
        if rt<n and self.arr[rt] < self.arr[smallest]:
            smallest = rt
        
        if smallest!=i:
            self.arr[smallest], self.arr[i] = self.arr[i],self.arr[smallest]
            self.min_heapify_rec(smallest)

    @classmethod
    def min_heapify_itr(self, i):
        arr = self.arr
        smallest = i
        n = len(arr)

        while arr[i] >= arr[smallest] and i<n:
            lt = self.left_child(i)
            rt = self.right_child(i)
            if arr[lt] < arr[smallest]:
                smallest = lt
            if arr[rt] < arr[smallest]:
                smallest = rt
            if smallest!=i:
                arr[smallest], arr[i] = arr[i],arr[smallest]
        self.arr = arr

    @classmethod
    def create_binary_tree(self, first_elem):
        total = len(self.arr)
        last_in = total-1

        lt = self.left_child(first_elem)
        rt = self.right_child(first_elem)

        if first_elem==0:
            print(self.arr[first_elem])
        if(lt<=last_in):
            print(self.arr[lt], end=" ")
        if(rt<=last_in):
            print(self.arr[rt])

        if(first_elem>last_in):
            return
        else:
            return self.create_binary_tree(first_elem+1)

    @classmethod
    def extract_min(self):
        arr = self.arr
        n = len(arr)
        if n == 0:
            return math.inf
        res = arr[0]
        arr[0] = arr[n-1]
        arr.pop()
        self.arr = arr
        self.min_heapify_itr(0)
        return res
    
    @classmethod
    def decrease_key(self, i, x):
        arr = self.arr
        arr[i] = x
        while i>0 and arr[i] < arr[self.parent(i)]:
            parent = self.parent(i)
            arr[i], arr[parent] = arr[parent], arr[i]
            i = parent

    @classmethod
    def delete(self, i):
        if(i>=len(self.arr)):
            return
        else:
            self.decrease_key(i, -math.inf)
            self.extract_min()

    @classmethod
    def show_array(self):
        print(self.arr)


def driver():
    my_python_min_heap = python_min_heap([45,10,20,15,40,50,100,25])
    my_python_min_heap.show_array()
    # my_python_min_heap.create_binary_tree(0)
    my_python_min_heap.decrease_key(3, 5)
    my_python_min_heap.show_array()
    my_python_min_heap.delete(3)
    my_python_min_heap.show_array()
    # my_python_min_heap.insert(12)
    # my_python_min_heap.show_array()
    # print(my_python_min_heap.extract_min())
    # my_python_min_heap.show_array()


if(__name__ == "__main__"):
    driver()

