all: example_1 example_2
example_1:
	gcc -o test_1 test_1.c buffer_mgr.c buffer_mgr_stat.c storage_mgr.c dberror.c replacementStrategies.c -I.
example_2:
	 gcc -o test_2  test_2.c buffer_mgr.c storage_mgr.c buffer_mgr_stat.c dberror.c replacementStrategies.c -I.
clean:
	$(RM) test_1 test_2 testbuffer.bin
