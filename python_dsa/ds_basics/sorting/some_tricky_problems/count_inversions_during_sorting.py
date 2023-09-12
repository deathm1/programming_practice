class count_inversions_during_sorting():
    @classmethod
    def __init__(self, input_array: list, low: int, high: int) -> None:
        self.result = self.merge_sort_function(input_array, low, high)
    
    @classmethod
    def get_inversions(self, arr: list, low: int, mid: int, high: int) -> int:
        left = arr[low: mid+1]
        right = arr[mid+1: high+1]
        inv_count, m, n, i, j, k = 0, len(left), len(right), 0, 0, low
        while(i<m and j<n):
            if(left[i]<=right[j]):
                arr[k] = left[i]
                i+=1
            else:
                arr[k] = right[j]
                j+=1
                inv_count += (m-i)
            k+=1
        while(i<m):
            arr[k] = left[i]
            i+=1
            k+=1
        while(j<n):
            arr[k] = right[j]
            j+=1
            k+=1
        return inv_count
    
    @classmethod
    def merge_sort_function(self, arr: list, low: int, high: int):
        res = 0
        if(low<high):
            mid = (low+high)//2
            res += self.merge_sort_function(arr, low, mid)
            res += self.merge_sort_function(arr, mid+1, high)
            res += self.get_inversions(arr, low, mid, high)
        return res

    @classmethod
    def get_result(self)->int:
        return self.result

def driver():
    my_obj = count_inversions_during_sorting([10,5,30,15,7], 0, 4)
    print(my_obj.get_result())
    my_obj = count_inversions_during_sorting([8,4,2,1], 0, 3)
    print(my_obj.get_result())

if("__main__" == __name__):
    driver()