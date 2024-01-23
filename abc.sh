#!/usr/bin/env zsh

# Alphabet array
alphabet=("A" "B" "C" "D" "E" "F" "G" "H" "I" "J" "K" "L" "M" "N" "O" "P" "Q" "R" "S" "T" "U" "V" "W" "X" "Y" "Z")

# Number of letters per row
letters_per_row=6

# Print the alphabet in rows, up to 'letters_per_row' letters per row
for (( i = 0; i <= ${#alphabet[@]}; i++ )); do
    # Print the current letter without a newline
    echo -n "${alphabet[i]} "

    # Print a newline after every 'letters_per_row' letters
    if (( i % letters_per_row == 0 )); then
        echo
    fi
done

# Print a newline at the end if the last row doesn't end with the 'letters_per_row' letter
if (( ${#alphabet[@]} % letters_per_row != 0 )); then
    echo
fi