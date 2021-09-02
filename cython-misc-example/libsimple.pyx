# distutils: language = c++
# ^^ required for last point

# ptr dereference 
cdef int int_from_ptr(int* int_ptr):
    return int_ptr[0]

# ptr following (cake->num_candles)
cdef struct Cake:
    int num_candles

cdef int get_num_candles(Cake* cake):
    return cake.num_candles

# type casting
cdef long get_long_from_int(int input):
    return <long> input

# null pointer
cdef int* get_null_ptr():
    return NULL

# get address of object
cdef obtain_address():
    cdef int my_local_int = 1
    cdef int* my_local_int_ptr = &my_local_int

# malloc
from libc.stdlib cimport malloc, free

def create_cake_on_heap():
    cdef Cake* cake = <Cake*> malloc(sizeof(Cake))
    free(cake)

# cppclass
cdef cppclass Muffin:
    int num_choc_chips

def create_muffin():
    cdef Muffin* muffin = new Muffin()
    del muffin
