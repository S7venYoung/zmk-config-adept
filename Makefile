.PHONY: init build

# Creates a self-contained ZMK 0.4 + DYA workspace in ./dependencies.
init:
	west init -l config --mf west-standalone.yml
	west update --narrow
	west zephyr-export

build:
	west zmk-build -d build -q
