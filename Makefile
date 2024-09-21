# file: makefile 
# Name: Zackary Rippee
# Date: 2024-09-20
# brief: makefile for make & makefile assignment
#


#compiler for c++
CC = g++
#compile with all errors and warnings
CFLAGS = -g -Wall -Wextra
#has the name of the executable file
TARGET = employee

#allows the user to be able just put "make"
default: all

#runs all targets and creates executable
all:	main.o Employee.o Officer.o Supervisor.o
	$(CC) $(CFlags) -o $(TARGET) main.o Employee.o Officer.o Supervisor.o
# checks errors and warnings in main.cpp and compiles main.o
main.o:
	$(CC) $(CFLAGS) -c main.cpp
# checks errors and warnings in main.cpp and compiles Employee.o
Employee.o:
	$(CC) $(CFLAGS) -c Employee.cpp
# checks errors and warnings in main.cpp and compiles Officer.o
Officer.o:
	$(CC) $(CFLAGS) -c Officer.cpp
# checks errors and warnings in main.cpp and compiles Supervisor.o
Supervisor.o:
	$(CC) $(CFLAGS) -c Supervisor.cpp
# cleans 
clean:
	$(RM) employee *.o *~
