all: readme.md

readme.md: guessinggame.sh
	echo "# Title: Guessing Game" > README.md
	echo "Make was run at the following date and time:"  >> README.md
	# I wanted to try to grep ~/.bash_history for the make timestamp, but couldn't figure it out
	echo "23/02/19 03:13:35" >> README.md
	echo "Guessing Game has the following number of lines of code:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
	
clean:
	rm README.md
	
