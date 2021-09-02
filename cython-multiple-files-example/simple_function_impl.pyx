cdef int counter = 0

cdef int simple_function():
    global counter
    counter += 1 
    return counter