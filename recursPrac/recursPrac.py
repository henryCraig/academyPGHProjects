

def fib(n):
    if n == 0:
        return 0
    elif n == 1:
        return 1
    else:
        return fib(n-1) + fib(n-2)

print(fib(7))
#Its always plus 1 positions, which I guess makes sense
#given we could start at 0


#def fibSequence(amountGiven):
#    if amount
