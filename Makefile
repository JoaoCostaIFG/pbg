CFGDIR  = ${DESTDIR}/etc
HOOKDIR = ${DESTDIR}/usr/share/libalpm/hooks
BINDIR  = ${DESTDIR}/usr/local/bin

.PHONY: install
install:
	mkdir -p ${CFGDIR}
	mkdir -p ${HOOKDIR}
	mkdir -p ${BINDIR}
	cp -f pbg.hook ${HOOKDIR}
	chmod 644 ${HOOKDIR}/pbg.hook
	cp -f pbg ${BINDIR}
	chmod 755 ${BINDIR}/pbg
	touch ${CFGDIR}/pbg
	chmod 644 ${CFGDIR}/pbg
	@echo "Run pbg.sh as sudo to config it."

.PHONY: clean
clean:
	rm -f ${CFGDIR}/pbg

.PHONY: uninstall
uninstall:
	rm -f ${HOOKDIR}/pbg.hook ${BINDIR}/pbg
	@echo "Run 'fulluninstall' to clean your github gist access token."

.PHONY: fulluninstall
fulluninstall: uninstall clean
	rm -f ${DESTDIR}/root/.gist
	@echo "You might want to delete the gist access token from your github account."
