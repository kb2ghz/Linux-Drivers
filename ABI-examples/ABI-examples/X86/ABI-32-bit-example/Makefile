ABI-example:	ABI-X86.s
		as -g -agls -o ABI-example.o ABI-X86.s >ABI-example.lst
		ld -Map=ABI-example.map -o ABI-example ABI-example.o
		nm ABI-example.o >ABI-example.nm-map

clean:
	ABI-example.o ABI-example.lst ABI-example ABI-example.nm-map

