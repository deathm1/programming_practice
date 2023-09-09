class sorting_user_defined_objects():
    def __init__(self, x, y) -> None:
        self.x = x
        self.y = y

    def __lt__(self, other):
        if(self.x == other.x):
            return self.y<other.y
        else:
            return self.x<other.x
mylist = [
    sorting_user_defined_objects(1,15),
    sorting_user_defined_objects(10,5),
    sorting_user_defined_objects(1,8)
]
mylist.sort()
for myobj in mylist:
    print(myobj.x, myobj.y)