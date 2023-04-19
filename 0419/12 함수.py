#피보나치 수열에서 위치에 해당하는 값을 반환해주는 함수를 완성해보세요. 
#예) fibo함수에 5를 전달하면 5번째 피보나치 수열의 값을 반환하면 됩니다.

#피보나치 수열 : 0, 1, 1, 2, 3, 5, 8, 13, 21 ...

def fibo(n):
    if n == 1:
        return  0
    elif n == 2:
        return 1
    else:
        return fibo(n-1) + fibo(n-2)
    

print(fibo(5))

print(fibo(7))