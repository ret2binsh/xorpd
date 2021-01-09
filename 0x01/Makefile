CC     = nasm
CFLAGS = -felf64
LD     = ld
IN     = prt_fib.asm
FIBIN  = fib.asm
OBJ    = prt_fib.o
FOBJ   = fib.o
OUT    = prog
FOUT   = fib

default: $(OBJ)
	$(LD) $(OBJ) -o $(OUT)
	rm -f $(OBJ)

$(OBJ):
	$(CC) $(CFLAGS) $(IN)

fib: $(FOBJ)
	$(LD) $(FOBJ) -o $(FOUT)
	rm -f $(FOBJ)

$(FOBJ):
	$(CC) $(CFLAGS) $(FIBIN)

clean:
	rm -f $(OUT) $(FOUT)
