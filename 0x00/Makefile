CC     = nasm
LD     = ld
CFLAGS = -felf64
IN     = chall.asm
OBJ    = chall.o
OUT    = prog

default: $(OBJ)
	$(LD) -o $(OUT) $(OBJ)
	rm -f $(OBJ)

$(OBJ):
	$(CC) $(CFLAGS) $(IN)

clean:
	rm -f $(OBJ) $(OUT)
