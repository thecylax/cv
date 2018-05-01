TARGET = robson_cardoso_cv
DEPS = Makefile $(TARGET).tex

all: $(TARGET).pdf

$(TARGET).pdf: $(TARGET).tex $(DEPS)
	pdflatex $(TARGET).tex

.PHONY: clean view backup

clean:
	@rm -f $(TARGET).aux \
	$(TARGET).dvi \
	$(TARGET).log \
	$(TARGET).out \
	$(TARGET).toc \
	$(TARGET).lof \
	$(TARGET).pdf

view: $(TARGET).pdf
	evince $(TARGET).pdf $(PAGE)
	#open $(TARGET).pdf $(PAGE)

backup:
	tar zcvf ../$(TARGET)-backup.tar.gz $(DEPS)
