# 1. while문을 사용해서 1부터 1000까지 3의 배수의 합을 구해보세요.
# 2. while문을 사용해서 1부터 100까지 더하는 코드를 작성 후, 결과값을 화면에 출력해보세요. 


a = 0
b = 0
while a <1000:
	a = a + 1
	if a % 3 == 0:
		b = b + a
print(b)	

# print(b)가 while문 밖에 나와 있으면 while문이 끝난 값이 출력됩니다. 


a = 0
b = 0
while a < 100:
    a += 1
    if a >= 1 and a <101:
        b = b + a
print(b)

a = 0
b = 0
while a < 100:
    a += 1
    b += a
print(b)
