def factorial(num):

    if num == 1:
        return 1
    else:
        num = num * factorial(num-1)
        return num




print("7! is: ", factorial(7))
print("5! is", factorial(5))


#Recursive solutions will have a base case and a recursive case
