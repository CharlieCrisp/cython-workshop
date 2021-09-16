import pytest

from python_fibonacci import fib, fib_rec
from cython_fibonacci import fib as cfib, fib_rec as cfib_rec, fib_optimised as cfib_optimised

@pytest.mark.parametrize("fib_function", (fib, cfib, fib_rec, cfib_rec, cfib_optimised))
@pytest.mark.parametrize(
    ("input_n", "expected_output"),
    (
        (0, 0),
        (1, 1),
        (2, 1),
        (3, 2),
        (4, 3),
        (5, 5),
        (6, 8),
        (13, 233),
    )
)
def test_fib(input_n, expected_output, fib_function):
    assert fib_function(input_n) == expected_output
