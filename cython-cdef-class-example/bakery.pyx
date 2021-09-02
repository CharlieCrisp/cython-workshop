cdef class Cake():
    cdef int num_candles

    def __init__(self, num_candles): 
        self.num_candles = num_candles

    def get_num_candles(self) -> int:
        return self.num_candles
