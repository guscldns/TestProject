#아래 코드에서 찾았습니다! 가 출력되었을때, 모든 반복문을 강제로 나가는 코드로 수정해보세요. 
try:
    for n1 in range(1000): 
            for n2 in range(1000): 
                for n3 in range(1000): 
                    for n4 in range(1000): 
                        for n5 in range(1000): 
                            if (n1+n2+n3+n4+n5) == 1000:
                                print("찾았습니다!")
                                raise NameError

except:
    pass

print("끝")
