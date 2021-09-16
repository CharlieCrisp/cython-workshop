import pytest

from python_fibonacci import fib, fib_rec
from cython_fibonacci import fib as cfib, fib_rec as cfib_rec, fib_optimised as cfib_optimised

@pytest.fixture
def benchmark_fib_input():
    return 10000


@pytest.fixture
def benchmark_fib_rec_input():
    return 15

# First let's consider a normal fib implementation with naive translation to cython
@pytest.mark.parametrize(
    ("fib_function", "label"), 
    ((fib, "python"), (cfib, "cython"))
)
def test_benchmark_fib(benchmark, benchmark_fib_input, fib_function, label):
    benchmark(fib_function, benchmark_fib_input)


# Now let's consider the recursive case with more function calls
@pytest.mark.parametrize(
    ("fib_function", "label"), 
    ((fib_rec, "python"), (cfib_rec, "cython"))
)
def test_benchmark_rec_fib(benchmark, benchmark_fib_rec_input, fib_function, label):
    benchmark(fib_function, benchmark_fib_rec_input)


# Now let's try an optimised cython implementation
@pytest.mark.parametrize(
    ("fib_function", "label"), 
    ((fib, "python"), (cfib, "cython"), (cfib_optimised, "cython_optimised"))
)
def test_benchmark_optimised_fib(benchmark, benchmark_fib_input, fib_function, label):
    benchmark(fib_function, benchmark_fib_input)