import libsimple

print(f"Cython Example. Importing libsimple from {libsimple.__file__}")

print("Calling libsimple.simple_function() once")
print(libsimple.simple_function())

print("Calling libsimple.simple_function() again")
print(libsimple.simple_function())