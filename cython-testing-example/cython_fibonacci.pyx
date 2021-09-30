from libc.stdlib cimport malloc, free

cdef fib(int n):
    if n == 0:
        return 0
    if n == 1:
        return 1
    
    cdef int* results = <int*> malloc(n * sizeof(int))

    results[0] = 0
    results[1] = 1

    cdef int i
    cdef int upper = n + 1
    try:
        for i in range(2, upper):
            results[i] = results[i-1] + results[i-2]

        return results[n]
    finally:
        free(results)