PATH2SRC = src/
PATH2OBJ = obj/

OBJ = $(PATH2OBJ)main.o

TARGET = UniSocket
CC = g++
	
# Build for Windows
UniSocket.dll: $(OBJ) 
	g++ -shared -o UniSocket.dll -WL,--out-implib,libUniSocket.a $(OBJ)

$(PATH2OBJ)main.o: $(PATH2SRC)main.cc $(PATH2SRC)main.h $(PATH2SRC)defs.h
	$(CC) -c $(PATH2SRC)main.cc -o $(PATH2OBJ)main.o

$(PATH2OBJ)LinuxSocket.o: $(PATH2SRC)LinuxSocket.cc $(PATH2SRC)LinuxSocket.h $(PATH2SRC)SocketHandler.h $(PATH2SRC)defs.h
	$(CC) -c $(PATH2SRC)LinuxSocket.cc -o $(PATH2OBJ)LinuxSocket.o

$(PATH2OBJ)WindowsSocket.o: $(PATH2SRC)WindowsSocket.cc $(PATH2SRC)WindowsSocket.h $(PATH2SRC)SocketHandler.h $(PATH2SRC)defs.h
	$(CC) -c $(PATH2SRC)WindowsSocket.cc -o $(PATH2OBJ)WindowsSocket.o
	
$(PATH2OBJ)SocketHandler.o: $(PATH2SRC)SocketHandler.cc $(PATH2SRC)SocketHandler.h $(PATH2SRC)defs.h
	$(CC) -c $(PATH2SRC)SocketHandler.cc -o $(PATH2OBJ)SocketHandler.o

.PHONY: clean
clean:
		find . -type f -name '*.o' -delete
		rm -f UniSocket.dll