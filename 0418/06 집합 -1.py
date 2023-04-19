a=[1,1,1,2,2,2,3,3,3,4,4,5,5,5,5]
a=set([1,1,1,2,2,2,3,3,3,4,4,5,5,5,5])
print(a)
a=set(a)
a=list(a)
a.sort()
a.reverse()
print(a)

a.sort(reverse=True)
print(a)
