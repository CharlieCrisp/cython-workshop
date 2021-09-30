import pytest

from cython_fibonacci cimport fib
from cytest import cytest

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
@cytest
def test_fib(input_n, expected_output):
    assert fib(input_n) == expected_output
