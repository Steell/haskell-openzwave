.PHONY: all

CC = g++
CFLAGS = -O2

all: cpp/libhozw.so

# TODO(steell): While we do want to dynamically link to openzwave, we probably don't
#		want to build a dynamic library. We want the haskell code to link
#		this statically (but maintain the dynamic link to openzwave).
cpp/libhozw.so: cpp/*.o
	$(CC) $(CFLAGS) -lopenzwave -dynamic -shared -fPIC -o $@ $^

%.o: %.cpp
	$(CC) $(CFLAGS) -I $(openzwave)/include/openzwave -I $(openzwave)/include/openzwave/value_classes -fPIC -c -o $@ $<

clean:
	rm -f cpp/*.o cpp/*.so

install:
	echo "Copying library to:$(libdir)"
	install -t "$(libdir)" cpp/libhozw.so 
