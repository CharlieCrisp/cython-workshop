cdef extern from "simple_function.h":
    int simple_function()

def simple_function_py():
    return simple_function()