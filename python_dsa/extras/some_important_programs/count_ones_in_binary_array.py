import math
class Solution:
    ##Complete this code
    def foccr(self, arr, N):
        l = 0
        h = N - 1
        while (l <= h):
            m = l + (h - l) // 2
            if l==h and arr[0]!=arr[N-1]: return h
            if arr[m] == 1 and arr[m - 1] == 0:
                return m
            elif arr[m] == 0:
                l = m + 1
            else:
                h = m - 1
        return N
    def lastocc(self, arr, N):
        l = 0
        h = N - 1
        while (l <= h):
            m = l + (h - l) // 2
            if l == h: return h
            if arr[m] == 1 and arr[m + 1] == 0:
                return m
            elif arr[m] == 1:
                l = m + 1
            else:
                h = m - 1
    def countOnes(self,arr, N):
        
        if arr[0] == 1:
            return self.lastocc(arr, N) + 1
        else:
            return (N - self.foccr(arr, N))
def main():
        T=int(input())
        while(T>0):
            
            N=int(input())

            A=[int(x) for x in input().strip().split()]
            
            
            ob=Solution()
            print(ob.countOnes(A,N))
            
            T-=1
if __name__ == "__main__":
    main()