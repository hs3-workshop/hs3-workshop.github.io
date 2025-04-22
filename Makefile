
all: spelling

spelling: *.md
	for file in *.md; do \
	  ispell -t -b -d british -p ./index.dict $$file; \
          done

clean:
	rm -f *.md.bak

