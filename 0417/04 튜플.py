a = (2, 3, 1, 4)

a = list(a)
a.append(5)

a.sort()
a = a[::-1]
print(a)

a.sort(reverse=True)
print(a)

a = tuple(a)
print(a)
