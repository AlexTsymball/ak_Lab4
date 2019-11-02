all: compile addlib link

compile:
	gcc -o obj/func.o -c func.cpp
	gcc -o obj/main.o -c main.cpp

addlib:
	ar ruv lib/libfunc.a obj/func.o
	ranlib lib/libfunc.a

link:
	gcc -o bin/main obj/main.o -lfunc -Llib

run:
	./bin/main

clean:
	rm bin/**
	rm obj/**
	rm lib/**
