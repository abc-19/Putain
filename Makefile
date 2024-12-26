#         _   ,_,   _
#        / `'=) (='` \		Putain - makefile
#       /.-.-.\ /.-.-.\ 	abc19
# jgs   `      "      `		Dec 26 2024

objs = main.o error.o fprintf.o interpreter.o
exec = puta

all: $(exec)

$(exec): $(objs)
	ld	-o $(exec) $(objs)
%.o: %.s
	as	-o $@ $<
clean:
	rm	-f $(objs) $(exec)
