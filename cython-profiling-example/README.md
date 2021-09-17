# Cython Profiling Example

## Running
```
python -m venv ./venv
source ./venv/bin/activate
python -m pip install cython pyinstrument
python setup.py install
python app.py
```

Then try adding `# cython: profile=True` to `fib.pyx` and rerunning the app.