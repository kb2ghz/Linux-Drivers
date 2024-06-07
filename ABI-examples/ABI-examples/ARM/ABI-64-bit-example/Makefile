ABI-example:	ARM-ABI.s
		as -g -agls -o ABI-example.o ARM-ABI.s >ABI-example.lst
		ld -Map=ABI-example.map -o ABI-example ABI-example.o
		nm ABI-example.o >ABI-example.nm-map

clean:
		rm ABI-example ABI-example.o ABI-example.lst ABI-example.nm-map
