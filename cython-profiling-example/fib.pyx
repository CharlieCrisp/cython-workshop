cdef fib_internal(int n):
    if n == 0:
        return 0
    if n == 1:
        return 1

    return fib_rec(n-1) + fib_rec(n-2)

def fib_rec(n):
    return fib_internal(n)
