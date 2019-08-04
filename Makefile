.PHONY: all
.PHONY: clean

all: mkdirs help see success

mkdirs:
	@mkdir -p out

help: doc/help.txt
	xxd -i doc/help.txt > src/help.c

see: src/see.c
	$(CC) src/see.c -o out/see -Wall -Wextra -pedantic -std=c99

success:
	echo "Compiled!"

clean:
	@rm -rf out
