# +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# .FILENAME		:	linux-count_each_instance.sh
# .USAGE		:	./linux-count_each_instance.sh example-filename.txt
# .FILES		:	n/a
# .AUTHOR1		:	bobby brooks (bobby@bobby-brooks.com)
# .AUTHOR2		:	n/a
# .LANGUAGEs	:	bash
# .ENVIRONMENT	:	bash
# .KEYWORDs		:	count
# .VERSON		:	0.1
# .CREATED		:	2022-10-13
# .COURSE		:	n/a
# .PURPOSE		:	Reads an input file of space delimeted numbers as argument
#				and counts the number of instances of each individual number
# .COMMENTs		:	n/a
#
# .CHANGELOG	:	2022-10-13 - 0.1
#					- original creation
#
# .REFERENCES	:	https://stackoverflow.com/questions/1092405/counting-
#				duplicates-in-a-sorted-sequence-using-command-line-tools
#
# +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

# -k2 = sort by key of 2 digits | -n = numeric-sort | -r = reverse order
# awk stuff still to be determined
cat $1 | tr " " "\n" | sort | uniq -c | sort -k2nr | awk '{printf("%s\t%s\n",$2,$1)}END{print}'
