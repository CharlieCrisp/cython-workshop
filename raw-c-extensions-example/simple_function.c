// include Python headers for doing Python interop
#define PY_SSIZE_T_CLEAN
#include <Python.h>

static int // TODO: move into another file
simple_function_impl(void)
{
    static int counter = 0;
    counter++;
    return counter;
}

// TODO: why static?
static PyObject * // returns a python object representing the int
simple_function(
    PyObject *self, // points to the module object for a module level function, or the object instance for methods
    PyObject *args) // pointer to python tuple holding arguments passed into the function - in our case, there are none, but parsing arguments is not fun trust me.
{
    return PyLong_FromLong(simple_function_impl()); // Call impl and turn into a python object representing the int
}

static PyMethodDef SimpleFunctionMethods[] = { // define module methods in a 'method table'
    {
        "simple_function",
        simple_function,
        METH_VARARGS, // Can also ask for METH_VARARGS | METH_KEYWORDS if you want both args and kwargs as parameters
        "Get an monotonically increasing integer starting with 0."},
    {NULL, NULL, 0, NULL}}; /* Sentinel */

static struct PyModuleDef simple_function_module = {
    PyModuleDef_HEAD_INIT,
    "libsimple", /* name of module */
    NULL,   /* module documentation which we are not providing */
    -1,     /* size of per-interpreter state of the module,
                 or -1 if the module keeps state in global variables. */
    SimpleFunctionMethods}; // Put methods in module definition

PyMODINIT_FUNC // only non static thing in this file
PyInit_libsimple(void) // This is called when python immports libsimple
{
    return PyModule_Create(&simple_function_module);
}
