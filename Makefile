
SOURCES=$(shell find -name *.Rmd)
TARGETS=$(SOURCES:%.Rmd=%.pdf)

%.html: %.Rmd
	@echo "$< -> $@"
	@Rscript -e "rmarkdown::render('$<')"

default: $(TARGETS)

clean:
	rm -rf $(TARGETS)
