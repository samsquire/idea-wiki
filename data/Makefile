
ARTICLES=$(wildcard *.md)
WIKIPAGES=$(wildcard ./*.wiki)
CONVERT=$(WIKIPAGES:./%.wiki=./%.md)
MCFILES=$(filter-out "README.md",$(ARTICLES))
DEPENDENCIES=$(ARTICLES:%.md=./%.md.d)
OUTPUTS=$(ARTICLES:%.md=./%.md.outputs)
GENERATED=$(filter-out "README.html", $(ARTICLES:%.md=./generated/%.html))
MERGED=$(ARTICLES:%.md=./merged/%.md)

.PHONY: clean convert build all extract

.SECONDARY:
convert: $(CONVERT)
.SECONDARY:
build: $(GENERATED)

.SECONDARY:
./%.md: ./%.wiki
	wikiconvert.sh $< > ./$@



.PHONY: clean
clean:	
	-rm sections/*
	-cp ./output/WikiMake . && rm ./output/* && mv WikiMake ./output
	-mv merged/file . && rm merged/* && mv file ./merged
	-rm generated/*.html
	-rm ./*.d
	-rm $(CONVERT)

