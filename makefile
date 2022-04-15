CC = gcc
FLAGS = -Wall -g

all:	Thread_S Server client

Thread_S:
	$(CC) $(FLAGS) -pthread T_Server.c -o Thread_S

Server:
	$(CC) $(FLAGS) server.c -o Server

client:
	$(CC) $(FLAGS) client.c -o client


.PHONY: clean all

clean:
	rm -f *.o *.gch Server Thread_S