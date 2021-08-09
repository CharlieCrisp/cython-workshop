simple_function.so: simple_function.o
	gcc -shared -o libsimple_function.so simple_function.o

simple_function.o: simple_function.c
	gcc -c -Wall -Werror -fpic simple_function.c