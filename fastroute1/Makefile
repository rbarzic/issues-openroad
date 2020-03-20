
PROCESS=nandgate045

export PROCESS

run:
	openroad route.tcl

gdb:
	gdb --args openroad route.tcl


valgrind:
	valgrind --leak-check=yes --log-file=valgrind.route.log  openroad route.tcl
