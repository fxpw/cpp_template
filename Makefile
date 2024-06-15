m ?= $(shell date +%Y-%m-%d)
c ?= $(shell date +%Y-%m-%d)
.DEFAULT_GOAL := build
gf:
	git fetch
gm:
	git merge
find:
	~/projects/vcpkg/vcpkg search "$(p)"
p:
	~/projects/vcpkg/vcpkg $(p)
config:
	mkdir -p build
	cmake -S . -B ./build
build: config
	cmake --build ./build

run: build
	echo "\n\n----------done----------\n\n"
	./build/cpp_template