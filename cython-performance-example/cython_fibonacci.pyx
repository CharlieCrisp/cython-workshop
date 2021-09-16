from libc.stdlib cimport malloc, free

def fib(n):
    if n == 0:
        return 0
    if n == 1:
        return 1

    results = [-1 for _ in range(n+1)]
    results[0] = 0
    results[1] = 1
    for i in range(2, n+1):
        results[i] = results[i-1] + results[i-2]

    return results[-1]

def fib_rec(n):
    if n == 0:
        return 0
    if n == 1:
        return 1

    return fib_rec(n-1) + fib_rec(n-2)

def fib_optimised(n):
    if n == 0:
        return 0
    if n == 1:
        return 1
    
    cdef int* results = <int*> malloc(n * sizeof(int))

    results[0] = 0
    results[1] = 1

    for i in range(2, n+1): # NOTE: Can you optimise this???
        results[i] = results[i-1] + results[i-2]

    cdef int result = results[n]
    free(results)
    return result