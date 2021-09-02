from simple_function_impl cimport simple_function # BEWARE - must be cimport not import


def simple_function_wrapper() -> int: # Python type hint - not Cython annotation
    cdef int counter = simple_function() # Call other cython

    return counter # counter is turned into a python object and returned
