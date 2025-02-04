CC=g++
CFLAGS= -Wall
LDFLAGS=
EXEC=out

all: $(EXEC)

out: main.o
	$(CC) -o $@ $^ $(LDFLAGS)

%.o: %.cpp
	$(CC) -o $@ -c $< $(CFLAGS)

clean:
	rm -rf *.o