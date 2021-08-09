from setuptools import setup, Extension
from Cython.Build import cythonize

c_extension = Extension(
    "libsimple", 
    ["libsimple.pyx"], 
    libraries=["simple_function"], 
    library_dirs=["."]
)

setup(
    name = 'libsimple',
    version = '1.0',
    description = 'This is a demo package',
    ext_modules = cythonize(c_extension)
)