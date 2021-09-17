from setuptools import setup
from Cython.Build import cythonize

setup(
    name = 'fib',
    version = '1.0',
    description = 'This is a demo package',
    ext_modules = cythonize(["fib.pyx"], annotate=True)
)