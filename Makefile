CC = gcc
CFLAGS = -g -Wall

all: mystack

mystack: mystack.o client.o
	$(CC) $(CFLAGS) -o $@ $^

mystack.o: mystack.c mystack.h
	$(CC) $(CFLAGS) -c $^

client.o: client.c mystack.h
	$(CC) $(CFLAGS) -c $^

clean:
	$(RM) mystack *~ *.o *.gch
