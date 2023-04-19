#수업때 진행했던 Bank( ) 클래스에서 금액을 출금하는 기능도 추가해서 사용해보세요. 

class Bank:
    
    def __init__(self):
        print("가입을 축하합니다")
        self.money = 0
    
    def deposit(self,a):
        self.money += a
    
    def balance(self,a):
        self.money -= a
        
person1 = Bank()
person1.deposit(50000)
person1.balance(10000)
print(person1.money)
    