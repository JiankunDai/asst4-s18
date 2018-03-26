FILES= code/

XDFILE = code/data 
XCFILE = code/capture

handin.tar: clean
	tar cvf handin.tar --exclude=$(XDFILE) --exclude=$(XCFILE) $(FILES) 

clean:
	(cd code; make clean)
	rm -f *~ handin.tar
