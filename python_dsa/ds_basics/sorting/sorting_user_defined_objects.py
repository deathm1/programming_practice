class sorting_user_defined_objects():

    def __init__(self, x, y) -> None:
        self.x = x
        self.y = y

def get_sort_key(obj: sorting_user_defined_objects):
    return obj.y

mylist = [
    sorting_user_defined_objects(1,15),
    sorting_user_defined_objects(1,9),
    sorting_user_defined_objects(1,4),
]

mylist.sort(key=get_sort_key)

for myobj in mylist:
    print(myobj.x, myobj.y)