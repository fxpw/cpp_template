m ?= $(shell date +%Y-%m-%d)
c ?= $(shell date +%Y-%m-%d)
gf:
	git fetch
gm:
	git merge
find:
	~/projects/vcpkg/vcpkg search "$(p)"
p:
	~/projects/vcpkg/vcpkg $(p)

build:
	cmake -S . -B ./build