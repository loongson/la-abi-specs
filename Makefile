SRC = lapcs.adoc laelf.adoc ladwarf.adoc
PDF = la-abi.pdf

PDF_THEME = themes/la-abi-pdf.yml

.PHONY: all clean

$(PDF): $(PDF:.pdf=.adoc) $(SRC) $(PDF_THEME)
	asciidoctor-pdf \
		-a compress \
		-a date="$(DATE)" \
		-a monthyear="$(MONTHYEAR)" \
		-a pdf-style="$(PDF_THEME)" \
		-a pdf-fontsdir=fonts \
		-v \
		$< -o $@

html: $(patsubst %.adoc, %.html, $(SRC))

%.html: %.adoc
	asciidoctor $^ -o $@

clean:
	-rm -rf $(patsubst %.adoc, %.html, $(SRC))
