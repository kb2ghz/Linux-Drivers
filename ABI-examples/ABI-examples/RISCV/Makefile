ABI-example: RISCV-ABI.s
	as -g -asgl -march=rv64i -o ABI-example.o RISCV-ABI.s >ABI-example.lst
	ld -Map ABI-example.map -o ABI-example ABI-example.o
	nm ABI-example.o >ABI-example.nm-map
clean:
	rm ABI-example ABI-example.o ABI-example.lst ABI-example.map ABI-example.nm-map


