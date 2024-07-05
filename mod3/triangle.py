for i in range(1,6):
    num = "1"
    if i == 1:
        print(num)
    elif i == 2:
        print(num+"2")
    else:
        num="12"
        for j in range(3,i+1):
            num += str(j)
        print(num)
