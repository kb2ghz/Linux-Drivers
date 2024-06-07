ABI-example : s390-ABI.s
	as -g -mzarch -m64 -asgl -o ABI-example.o s390-ABI.s >ABI-example.lst
	ld  -Map ABI-example.map -o ABI-example ABI-example.o
	nm ABI-example.o >ABI-example.nm-map
clean:
	rm ABI-example ABI-example.o ABI-example.lst ABI-example.map ABI-example.nm-map

