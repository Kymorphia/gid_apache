# Generating the bindings requires the gid repository (defs, GIR files and the gidgen submodule), checked out as a sibling
# of this repository (../gid), see gidgen.json.
GID_DIR ?= ../gid
# Version registered for the local gid checkout, it only has to satisfy the version constraint in gidgen.json
GID_LOCAL_VERSION ?= 0.9.17

all: binding packages

.PHONY: binding
binding:
	dub run gidgen --root=$(GID_DIR)/gidgen --compiler=ldc2 -- --report --report-file report.txt

# Build all of the packages against the local gid checkout (registered as a local dub package, see also remove-local-gid)
.PHONY: packages
packages: add-local-gid
	dub build --parallel --compiler=ldc2 --debug debug

.PHONY: add-local-gid
add-local-gid:
	dub add-local $(GID_DIR) $(GID_LOCAL_VERSION)

.PHONY: remove-local-gid
remove-local-gid:
	dub remove-local $(GID_DIR)

.PHONY: clean
clean:
	dub clean
	find packages -name "*.d" -exec rm {} \;
	find . -name "*.so" -o -name "*.a" -exec rm {} \;
