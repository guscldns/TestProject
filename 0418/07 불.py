# 1. 5 > 3의 값을 변수 box에 추가해주세요.
# 2. 3 > 5의 값을 변수 box에 추가해주세요.
# 3. 5 == 5의 값을 변수 box에 추가해주세요.
# 4. 5 != 4의 값을 변수 box에 추가해주세요.
# 5. bool(5)의 값을 변수 box에 추가해주세요.
# 6. bool(0)의 값을 변수 box에 추가해주세요.
# 7. bool([1,3,5,4,2])의 값을 변수 box에 추가해주세요.
# 8. bool([])의 값을 변수 box에 추가해주세요.
# 9. bool({"이름" : "강동원"})의 값을 변수 box에 추가해주세요.
# 10. bool({"이름" : "강동원"})의 값을 변수 box에 추가해주세요.
# 11. 변수 box 안에 있는 True의 개수를 화면에 출력해주세요.

box = []
box.append(5 > 3)
box.append(3 > 5)
box.append(5 == 5)
box.append(5 != 4)
box.append(bool(5))
box.append(bool(0))
box.append(bool([1,3,5,4,2]))
box.append(bool([]))
box.append(bool({"이름" : "강동원"}))
box.append(bool({"이름" : "강동원"}))
print(box.count(True))


print(box)
print(len(box))