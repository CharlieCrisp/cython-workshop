import ctypes

libc = ctypes.CDLL("./libsimple_function.so")

print(libc.simple_function())
print(libc.simple_function())