# Makefile for the Guessing Game project

all: README.md

README.md: guessinggame.sh
	echo "# Guessing Game Project" > README.md
	echo "\n**Date and Time:** $$(date)" >> README.md
	echo "\n**Lines of Code:** $$(wc -l < guessinggame.sh)" >> README.md
