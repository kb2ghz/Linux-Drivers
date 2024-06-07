ABI-example:	ARM-ABI.s
		as -g -agls -o ABI-example.o ARM-ABI.s >ARM-example.lst
		ld  -Map=ABI-example.map -o ABI-example ABI-example.o
		nm ABI-example.o >ABI-example.nm-map

clean:		rm ABI-example.o ARM-example.lst ABI-example.map ABI-example.o ABI-example.nm-map

