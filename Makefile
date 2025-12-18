
install:
	[ ! -d /usr/share/netinit ] || rm -rf /usr/share/netinit
	mkdir -p /usr/share/netinit
	cp -rp LICENSE netinit protocols skeleton /usr/share/netinit/
	cp -p install-files/netinit-launcher /usr/sbin/netinit

uninstall:
	rm -rf /usr/share/netinit /sbin/netinit
