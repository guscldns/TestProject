a = [1,3,5,4,2]
b = [1,2,3,[4,5]]

a.sort()
c=a[-1]
print(c)

d=a[0]
print(d)

c=a.pop(-1)
print(c)

d=a.pop(0)
print(d)


e=(b[3][1])
print(e)
print(c*d*e)

a = [1,3,5,4,2]
c=max(a)
d=min(a)
print(c,d)

