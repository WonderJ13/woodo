PREFIX = /usr/local
BINDIR = ${PREFIX}/bin

NAME = woodo
SRC = woodo.c

$(NAME): $(SRC)
	gcc -o ${NAME} ${SRC}

install:
	cp -f ${NAME} ${DESTDIR}${BINDIR}
	chmod 755 ${DESTDIR}${BINDIR}/${NAME}

uninstall:
	rm -f ${DESTDIR}${BINDIR}/${NAME}
