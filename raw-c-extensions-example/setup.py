from distutils.core import setup, Extension

libsimple = Extension('libsimple',
                    sources = ['simple_function.c'])

setup (name = 'libsimple',
       version = '1.0',
       description = 'This is a demo package',
       ext_modules = [libsimple])