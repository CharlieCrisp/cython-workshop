cdef class Cake:
    def __init__(self, num_candles: int) -> None:
        self.num_candles = num_candles

    def get_num_candles(self) -> int: # makes C member 'num_candles' available in python land
        return self.num_candles
