import ctypes

libsimple = ctypes.CDLL("./libsimple_function.so")


print(f"Ctypes Example. Importing libsimple from libsimple_function.so")

print(libsimple.simple_function())
print(libsimple.simple_function())