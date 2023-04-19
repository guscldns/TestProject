dic={"조스바":"1200원","메로나":"1500원", "월드컵":"1800원"}
dic['붕어싸만코']='2000원'
print(dic)

del dic['메로나']
print(dic)

dic['조스바']='1500원'
print(dic)

print(dic.keys())
print(list(dic.keys()))
print(dic.values())
print(list(dic.values()))
print(dic.items())
print(list(dic.items()))