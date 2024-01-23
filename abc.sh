#!/usr/bin/env zsh

# Set default number of letters per row
letters_per_row=6

# Read the numbers of letters per row from the command line (optional)
if [ -n "$1" ]; then
    # Check if the argument is a number
    if ! [[ $1 =~ ^[0-9]+$ ]]; then
        echo "The argument must be a number. Found '$1'"
        exit 1
    fi
    # Set the number of letters per row
    letters_per_row=$1
fi

print_alphabet() {
    # Alphabet array
    alphabet=("A" "B" "C" "D" "E" "F" "G" "H" "I" "J" "K" "L" "M" "N" "O" "P" "Q" "R" "S" "T" "U" "V" "W" "X" "Y" "Z")

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
}

print_alphabet
