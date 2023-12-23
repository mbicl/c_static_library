main: main.c
	gcc -c utils.c
	ar rcs libutils.a utils.o
	gcc main.c -o main -L. -lutils

run: main
	./main

clean:
	rm *.o
	rm *