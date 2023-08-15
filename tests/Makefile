root = ..
include ${root}/defs.mk

test: testSqToBb

testSqToBb: mkdirs
	${sqantiToBigGenePred} input/test_classification.txt input/test_corrected.genePred output/$@.biggp
	${diff} expected/$@.biggp output/$@.biggp
	bedToBigBed -tab -type=bed12+53 -as=${root}/etc/sqantiBigGenePred.as output/$@.biggp input/hg38.chrom.sizes output/$@.bb

mkdirs:
	@mkdir -p output

clean:
	rm -rf output
