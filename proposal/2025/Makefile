
TEXFILES := main.tex cfp.txt


all: main.pdf

main.pdf: ${TEXFILES}
	latexmk -pdf main.tex

spelling: ${TEXFILES}
	for file in ${TEXFILES}; do \
	  ispell -t ${ISPELLPAT} -b -d british -p ./index.dict $$file; \
	done

clean:
	latexmk -C -pdf main.tex
	rm -f *.tex.bak *.txt.bak

distclean: clean
	rm -f main.pdf

