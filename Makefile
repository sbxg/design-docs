LATEXMK ?= latexmk
VIEWER ?= xdg-open
BUILD_DIR := build
DESIGNDOC := $(BUILD_DIR)/design-doc.pdf

.PHONY: all pdf clean view help

all: pdf

pdf:
	@mkdir -p $(BUILD_DIR)
	$(LATEXMK) -outdir=$(BUILD_DIR) -pdf -halt-on-error -view=pdf design-doc.tex

view:
	$(VIEWER) $(DESIGNDOC)

clean:
	$(RM) -r $(BUILD_DIR)

help:
	@echo "=========== SBXG Design Documentation Builder ============"
	@echo
	@echo "Targets:"
	@echo "    all       : Generate the document in available formats"
	@echo "    pdf       : Generate the document in PDF"
	@echo "    view      : Open the PDF document in a viewer"
	@echo "    clean     : Remove the generated files"
	@echo
	@echo "Configuration:"
	@echo "    VIEWER    : Path to the pdf viewer"
	@echo "    LATEXMK   : Path to latexmk"
