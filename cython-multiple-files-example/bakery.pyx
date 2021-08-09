from candle_store cimport get_some_candles # BEWARE - must be cimport not import

cdef class Cake():
    cdef int num_candles

    def __init__(self, num_candles): 
        self.num_candles = num_candles

    def get_num_candles(self) -> int:
        return self.num_candles


def bake_cake() -> Cake: # Python type hint - not Cython annotation
    cdef int num_candles = get_some_candles()
    cdef Cake cake = Cake(2)

    return cake # Cake is a C Extension class that can be accessed from python
