#로또 번호는 1번부터 45번까지 존재하고, 중복되지 않은 6개의 조합으로 당첨번호를 추첨합니다. 
#로또 당첨 번호가 총 몇 개의 조합이 있는 지 for문을 사용해서 로또 당첨 번호의 총 개수를 
count = 0
for a in range(1,46):
    for b in range(a+1,46):
        for c in range(b+1,46):
            for d in range(c+1,46):
                for e in range(d+1,46):
                    for f in range(e+1,46):
                         count += 1

print(count)
print(1 / count)
