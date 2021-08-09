from cake cimport Cake # BEWARE - must be cimport not import

def bake_cake() -> Cake: # Python type hint - not Cython annotation
    cdef Cake cake = Cake(2)
    cdef int num_candles = cake.num_candles # C access - doesn't touch python

    return cake # Cake is a C Extension class that can be accessed from python


# TODO: simplify this into a more readable story
# Example demonstrating what happens when you use import instead of cimport
from cake import Cake as PythonCake

def bake_python_cake() -> PythonCake:
    # The following would cause an error as PythonCake is not a C type
    # cdef PythonCake python_cake = PythonCake(2)

    # You might be tempted to write this
    python_cake = PythonCake(2)

    # The following compiles, but uses the Python accessors so creates intermediate Python int
    # You can see for yourself by checking ./bakery.html
    cdef int num_candles = python_cake.num_candles

    return python_cake