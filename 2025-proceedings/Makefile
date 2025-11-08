

all: hs3-esorics-2025-frontmatter.pdf

hs3-esorics-2025-frontmatter.pdf: hs3-esorics-2025-frontmatter.tex
	latexmk -pdf hs3-esorics-2025-frontmatter.tex

hs3-esorics-2025.zip: hs3-esorics-2025-frontmatter.pdf
	rm -rf hs3-esorics-2025
	mkdir -p hs3-esorics-2025
	cp hs3-esorics-2025-frontmatter.tex \
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
	rm -rf hs3-esorics-2025

distclean: clean
	rm -f hs3-esorics-2025-frontmatter.pdf
	rm -f hs3-esorics-2025.zip

