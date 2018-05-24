.PHONY: all

CC = g++
CFLAGS = -O2

all: cpp/libhozw.so

cpp/libhozw.so: cpp/*.o
	$(CC) $(CFLAGS) -lopenzwave -dynamic -shared -fPIC -o $@ $^ #-Wl,-rpath=$(libdir)

%.o: %.cpp
	$(CC) $(CFLAGS) -I /usr/local/include/openzwave -I /usr/local/include/openzwave/value_classes -fPIC -c -o $@ $<

clean:
	rm -f cpp/*.o cpp/*.so

install:
	install -t "$(libdir)" cpp/libhozw.so 
