all: cv.html

%.html: %.adoc
	asciidoctor $<
