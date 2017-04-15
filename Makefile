#########################
# Makefile
# Simon Goring
#########################


clean:
	rm -rf *.html *.md *.docx figure/ cache/

lesson: Neotoma_Lesson.Rmd
	Rscript -e 'rmarkdown::render("$<")'
