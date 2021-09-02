from setuptools import setup
from Cython.Build import cythonize

setup(
    name = 'simple_function_wrapper',
    version = '1.0',
    description = 'This is a demo package',
    ext_modules = cythonize(["simple_function_impl.pyx", "simple_function_impl.pxd", "simple_function_wrapper.pyx"], annotate=True)
)