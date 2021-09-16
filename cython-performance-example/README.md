# Cython Performance Example

This example shows how Cython can optimise your code. 
 - We start with a simple implementation of `fibonacci` in Python.
 - We then compile this with Cython (without changing the code at all) to measure the speedup.
 - We contrast this to a version of `fibonacci` which uses more function calls
 - We then take further steps to optimise the Cython code 

By using the generated html file, can you optimise the Cython code even more?

## Running
```
python -m venv ./venv
source ./venv/bin/activate
python -m pip install cython pytest pytest-benchmark
python setup.py install
python -m pytest . --benchmark-group-by=func
```


## Results
 - Optimised Cython should be about 1000x faster than plain Python in this example.
 - However
   - Introducing risk of segmentation faults
   - Speedup may not be as noticable when comparing to already-optimised libraries like numpy
   - Other options such as `numba` are available