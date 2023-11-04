list1 = [1,1,1,1,2,2,2,2,4,4,4,4,5,5,5,5,5,3,3,3,3]

list1 = set(list1 )
list1 = list(list1)
list1.sort(reverse=True)
list1 = tuple(list1)
print(list1)

list1 = set(list1)
set1 = set([3,4,5,6,7])

print("교집합", set(list1)&set1)
print("합집합", set(list1)|set1)
print("list1의 차집합",set(list1)-set1)
print("set1의 차집합", set1-set(list1))

print("합집합", list1.union(set1))
print("교집합", set(list1).intersection(set1))
print( 7 in set(list1))
