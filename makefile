all: README.md readme

README.md:
	touch README.md

readme: guessinggame.sh
	echo "## Gessinggame projekt" >> README.md
	echo "" >> README.md
	echo -n "Updated at " >> README.md
	date  >> README.md
	echo -n "Number of lines of code in guessinggame.sh " >> README.md
	cat ./guessinggame.sh | wc -l >> README.md

clean:
	rm README.md

