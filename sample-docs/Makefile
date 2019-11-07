# Minimal makefile for Sphinx documentation
#

# You can set these variables from the command line, and also
# from the environment for the first two.
SPHINXOPTS    ?=
SPHINXBUILD   ?= sphinx-build
SOURCEDIR     = source
BUILDDIR      = build

rwildcard=$(wildcard $1$2) $(foreach d,$(wildcard $1*),$(call rwildcard,$d/,$2))
pngfiles:= $(patsubst %.drawio,%.png,$(call rwildcard,./,*.drawio))

# Put it first so that "make" without argument is like "make help".
help:
	@$(SPHINXBUILD) -M help "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

.PHONY: help Makefile

# Catch-all target: route all unknown targets to Sphinx using the new
# "make mode" option.  $(O) is meant as a shortcut for $(SPHINXOPTS).
%: Makefile $(pngfiles)
	@$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

%.png:
	drawio $(patsubst %.png,%.drawio,$@) --no-sandbox --export --format png --transparent --output $@

livehtml: $(pngfiles)
	sphinx-autobuild -b html --open-browser --delay 5 --host 0.0.0.0 --port 8000 $(SPHINXOPTS) "$(SOURCEDIR)" "$(BUILDDIR)/html"
