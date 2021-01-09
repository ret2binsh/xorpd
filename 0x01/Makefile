CC     = nasm
CFLAGS = -felf64
LD     = ld
IN     = anding.asm
OBJ    = anding.o
OUT    = prog

default: $(OBJ)
	$(LD) $(OBJ) -o $(OUT)
	rm -f $(OBJ)

$(OBJ):
	$(CC) $(CFLAGS) $(IN)

clean:
	rm -f $(OBJ) $(OUT)
