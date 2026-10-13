
TEXFILES = hs3-esorics-2026-frontmatter.tex


all: hs3-esorics-2026-frontmatter.pdf

hs3-esorics-2026-frontmatter.pdf: ${TEXFILES} spelling
	latexmk -pdf hs3-esorics-2026-frontmatter.tex

spelling: ${TEXFILES}
	for file in ${TEXFILES}; do \
          ispell -t -b -d american -p ./index.dict $$file; \
        done

hs3-esorics-2026.zip: hs3-esorics-2026-frontmatter.pdf
	rm -rf hs3-esorics-2026
	mkdir -p hs3-esorics-2026
	cp ${TEXFILES} llncs.cls \
          hs3-esorics-2026-frontmatter.pdf \
          contact_authors_HS3.docx \
          LNCS_productionII-Workshops-2026-HS3.docx \
          hs3-esorics-2026/
	zip -r hs3-esorics-2026.zip hs3-esorics-2026


clean:
	rm -f hs3-esorics-2026-frontmatter.aux \
          hs3-esorics-2026-frontmatter.fdb_latexmk \
          hs3-esorics-2026-frontmatter.fls \
          hs3-esorics-2026-frontmatter.log \
          hs3-esorics-2026-frontmatter.toc
	rm -f hs3-esorics-2026-frontmatter.tex.bak
	rm -rf hs3-esorics-2026

distclean: clean
	rm -f hs3-esorics-2026-frontmatter.pdf
	rm -f hs3-esorics-2026.zip

