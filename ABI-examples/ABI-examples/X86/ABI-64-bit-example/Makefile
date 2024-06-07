ABI-example:	ABI-X86.s
		as -g -agls --64 -o ABI-example.o ABI-X86.s >ABI-example.lst
		ld -Map=ABI-example.map -o ABI-example ABI-example.o
		nm ABI-example.o >ABI-example.nm-map

clean:
	rm ABI-example.o ABI-example.lst ABI-example ABI-example.nm-map

