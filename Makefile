
branch = main

init_submodule:
	@git submodule init
	git submodule update --init --progress && git submodule update --remote