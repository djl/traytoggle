PREFIX=/usr/local
BINDIR=$(PREFIX)/bin

traytoggle:
	@$(CC) -o -lobjc -framework Foundation -framework DiscRecording -o traytoggle traytoggle.m

install: traytoggle
	@install -m0755 traytoggle $(BINDIR)

clean:
	@rm -f traytoggle
