from cake cimport Cake # BEWARE - must be cimport not import

def bake_cake() -> Cake: # Python type hint - not Cython annotation
    cdef Cake cake = Cake(2)
    cdef int num_candles = cake.num_candles # C access - doesn't touch python

    return cake # Cake is a C Extension class that can be accessed from python