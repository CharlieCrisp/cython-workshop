# Cython workshop
This workshop will cover:
  - What are Python C Extensions 
  - Why would you need C Extensions
  - (briefly) What tools you can use to write C Extensions
  - Basics of using Cython to write C Extensions

## What are Python C Extensions
For a complete description, see the [Python docs](https://docs.python.org/3/extending/extending.html#extending-python-with-c-or-c).

In short, these are libraries which are written in C - sometimes indirectly. 
These libraries are compiled like normal C but are importable and usable as if they were written in normal Python.

## Why would you need C Extensions
C Extensions are useful when:
  - you want to write **fast code** that Python is too slow for, but you want to be able to use that code from Python
  - you have **existing code in C/C++** that you want to use from Python

## What tools you can use to write C Extensions
### Option 1: Use Python.h directly
  - The lowest level option
  - See [raw-c-extensions-example](./raw-c-extensions-example/README.md)
  - Pros
    - Allow you to write C Extensions
    - Underpins other C Extension tools
  - Cons
    - Extremely verbose - lots of boilerplate 
    - Must manage reference counts of python objects yourself
    - Code probably looks unfamiliar to both Python and C developers
  - It's useful to know about Python.h but you probably shouldn't write C Extensions this way

### Option 2: Use ctypes
 - See [ctypes-example](./ctypes-example/README.md)
 - A library allowing you to import C from Python
 - Minimises the amount of boilerplate you need to write
 - We wont cover `ctypes` in detail, you just need to know it is an alternative to Cython

### Option 3: Use Cython
 - See [cython](./cython/README.md)
 - Gives you a specific language that brings together elements of Python and C/C++
 - Pros
   - Best of both worlds. Should be familiar to both C and Python developers.
   - Minimal boilerplate
 - Cons
   - Has a fair number of gotchas
   - Cython is a much less well known language than C or Python

## Basics of using Cython to write C Extensions
### cdef means C
Everything else is Python
 - `cdef` mostly requires type annotations *before* variables
   - `variable: Type` is still just a type hint that doesn't mean anything to Cython
   - `cdef Type variable` is a proper Cython typing statement
   - `cdef Type function():` is another form of Cython typing for functions

### Using multiple files
 - Cython compiles down to C. Therefore, Cython has a concept of header and source files
   - `.pyx` means a Cython source file (equivalent to `.c` files)
   - `.pxd` means a Cython header file (equivalent to `.h` files)
 - `cimport` parallels Python's `import` by importing other Cython or C code
   - This requires a `.pxd` header to tell Cython what it can/can't import
   - **Many errors** come from using `import` rather than `cimport`
   - 