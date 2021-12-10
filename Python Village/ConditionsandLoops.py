def sum(x, y):
    c=int(0)
    while x<=y:
        if x%2!=0:
            c+=x
        x+=1
    return c
a=int(input())
b=int(input())
print(sum(a, b))