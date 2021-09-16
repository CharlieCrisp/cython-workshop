from setuptools import setup
from Cython.Build import cythonize

setup(
    name = 'cython_fibonacci',
    version = '1.0',
    description = 'This is a demo package',
    ext_modules = cythonize(["cython_fibonacci.pyx"], annotate=True)
)