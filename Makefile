test:
	git submodule update --init --recursive
	cd rust-tests && cargo test && cd -

fmt:
	clang-format -i -style=Google $(wildcard *.h */*.h *.c */*.c libc/*.h libc/src/*.c)
	git diff --exit-code

.PHONY: fmt test
