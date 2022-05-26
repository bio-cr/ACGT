CRYSTAL_BIN ?= crystal
PREFIX ?= /usr/local
PROGRAM ?= ACGT 

build: ${PROGRAM}

${PROGRAM}: ACGT.cr
	${CRYSTAL_BIN} build ACGT.cr --release

clean:
	${RM} ${PROGRAM}

install: build
	mkdir -p ${PREFIX}/bin
	cp ./${PROGRAM} ${PREFIX}/bin

uninstall:
	rm ${PREFIX}/bin/${PROGRAM}
