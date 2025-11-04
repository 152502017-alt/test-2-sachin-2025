# Makefile for Student Management System


CC = gcc
CFLAGS = -Wall -g
OBJS = main.o grade.o menu.o student.o utils.o

main: $(OBJS)
	$(CC) $(CFLAGS) -o main $(OBJS)

main.o: main.c utils.h
	$(CC) $(CFLAGS) -c main.c

grade.o: grade.c utils.h
	$(CC) $(CFLAGS) -c grade.c

menu.o: menu.c utils.h
	$(CC) $(CFLAGS) -c menu.c

student.o: student.c utils.h
	$(CC) $(CFLAGS) -c student.c

utils.o: utils.c utils.h
	$(CC) $(CFLAGS) -c utils.c

clean:
	rm -f *.o main
