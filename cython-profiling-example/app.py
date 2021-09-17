import fib
from pyinstrument import Profiler

profiler = Profiler()
profiler.start()
print(fib.fib_rec(30))
profiler.stop()
profiler.open_in_browser()
