# 1. time 라이브러리를 가져와서 tm이라는 이름으로 사용하세요. 
# 2. random 라이브러리로부터 randint함수만 가져오세요. 
# 3. time 라이브러리를 사용해서 오늘이 무슨 요일인지 화면에 출력해보세요. 
# 4. random 라이브러리의 randint()함수를 사용하여 1부터 10까지 컴퓨터가 랜덤으로 번호를 갖게하고, 
# 컴퓨터의 번호를 맞추는 게임을 만들어보세요. (번호를 맞추면 "맞췄습니다!"를 출력하고, 틀리면 "틀렸습니다"가 출력되면 됩니다)

# 1
import time as tm

# 2
from random import randint

# 3
print(tm.ctime())
print(tm.ctime().split()[0])
# split : 공백을 기준으로 자름 
# [0] 은 맨 앞의 값 : 요일
# split()[0] : 요일 값만 나옴

# 4
com = randint(1,10)
print(com)
a = range(1,11)

if a == com:
    print("맞췄습니다")
else:
    print("틀렸습니다")
    
## 강사님 답
com = randint(1,10)
me = int(input("값을 입력해주세요 : "))
print(com)

# input 함수는 문자열이라 앞에 int함수로 정수로 반환
if com == me:
    print("맞췄습니다")
else:
    print("틀렸습니다")
