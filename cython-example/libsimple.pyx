cdef int counter = 0

def simple_function():
    global counter
    counter += 1
    return counter