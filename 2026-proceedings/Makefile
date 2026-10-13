
TEXFILES = hs3-esorics-2025-frontmatter.tex


all: hs3-esorics-2025-frontmatter.pdf

hs3-esorics-2025-frontmatter.pdf: ${TEXFILES} spelling
	latexmk -pdf hs3-esorics-2025-frontmatter.tex

spelling: ${TEXFILES}
	for file in ${TEXFILES}; do \
          ispell -t -b -d american -p ./index.dict $$file; \
        done

hs3-esorics-2025.zip: hs3-esorics-2025-frontmatter.pdf
	rm -rf hs3-esorics-2025
	mkdir -p hs3-esorics-2025
	cp ${TEXFILES} llncs.cls \
          hs3-esorics-2025-frontmatter.pdf \
          contact_authors_HS3.docx \
          LNCS_productionII-Workshops-2025-HS3.docx \
          hs3-esorics-2025/
	zip -r hs3-esorics-2025.zip hs3-esorics-2025


clean:
	rm -f hs3-esorics-2025-frontmatter.aux \
          hs3-esorics-2025-frontmatter.fdb_latexmk \
          hs3-esorics-2025-frontmatter.fls \
          hs3-esorics-2025-frontmatter.log \
          hs3-esorics-2025-frontmatter.toc
	rm -f hs3-esorics-2025-frontmatter.tex.bak
	rm -rf hs3-esorics-2025

distclean: clean
	rm -f hs3-esorics-2025-frontmatter.pdf
	rm -f hs3-esorics-2025.zip

