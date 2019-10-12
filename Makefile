all: cv.html cv.pdf

%.html: %.adoc
	asciidoctor $<

%.pdf: %.adoc cv-pdf-theme.yml
	asciidoctor-pdf -a pdf-stylesdir=. -a pdf-style=cv-pdf $<

clean:
	rm cv.html cv.pdf
