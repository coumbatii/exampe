#!/bin/bash

# Générer README.md
echo "# Guessing Game" > README.md
echo "Date and Time: $(date)" >> README.md
echo "Number of lines in guessinggame.sh: $(wc -l < guessinggame.sh)" >> README.md
