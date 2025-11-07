

all: hs3-esorics-2025-frontmatter.pdf

hs3-esorics-2025-frontmatter.pdf: hs3-esorics-2025-frontmatter.tex
	latexmk -pdf hs3-esorics-2025-frontmatter.tex

clean:
	rm -f hs3-esorics-2025-frontmatter.aux \
          hs3-esorics-2025-frontmatter.fdb_latexmk \
          hs3-esorics-2025-frontmatter.fls \
          hs3-esorics-2025-frontmatter.log \
          hs3-esorics-2025-frontmatter.toc

distclean: clean
	rm -f hs3-esorics-2025-frontmatter.pdf

