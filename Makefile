
TARGET = ex2-rel

$(TARGET): ex2-rel.o libex2-dlib-rel.so
	gcc -m32 ex2-rel.o -L. -Wl,-rpath='$ORIGIN' -lex2-dlib-rel -o ex2-rel
	
ex2-rel.o: ex2.c
	gcc -m32 -fno-pic -c ex2.c -o ex2-rel.o
	
writef.o: writef.h writef.c
	gcc -m32 -fno-pic -c writef.h writef.c
	
libex2-dlib-rel.so: writef.o
	gcc -m32 --share writef.o -o libex2-dlib-rel.so
	
clean:
	rm ex2-rel ex2-rel.o libex2-dlib-rel.so writef.o
