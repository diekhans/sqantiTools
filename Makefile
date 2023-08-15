root = .
include ${root}/defs.mk


pyprogs = $(shell file -F $$'\t' bin/* tests/*/bin/* | awk '/Python script/{print $$1}')

all:

test:
	cd tests && ${MAKE} test

lint:
	${FLAKE8} --color=never ${pyprogs}

