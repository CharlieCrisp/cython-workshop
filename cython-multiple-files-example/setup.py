from setuptools import setup
from Cython.Build import cythonize

setup(
    name = 'bakery',
    version = '1.0',
    description = 'This is a demo package',
    ext_modules = cythonize(["candle_store.pyx", "candle_store.pxd", "bakery.pyx"], annotate=True)
)