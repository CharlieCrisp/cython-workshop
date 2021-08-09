cdef int counter = 0

cdef int get_some_candles():
    global counter
    counter += 1 
    return counter