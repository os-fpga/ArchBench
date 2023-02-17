
branch = main

init_submodule:
	@git submodule init
	git submodule update --recursive --remote && cd openfpga-pd-castor-rs && git fetch && git checkout $(branch);