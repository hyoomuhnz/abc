#!/bin/bash

# Tests abc.sh

# Test 1: No arguments

# Expected output:
# Starting abc.sh
# A B C D E F
# G H I J K L
# M N O P Q R
# S T U V W X
# Y Z

echo "Test 1: No arguments"
echo "Expected output:"
echo "A B C D E F"
echo "G H I J K L"
echo "M N O P Q R"
echo "S T U V W X"
echo "Y Z"
echo "Actual output:"
./abc.sh


# Test 2: One argument

# Expected output:
# Starting abc.sh
# Setting letters per row to 3
# A B C
# D E F
# G H I
# J K L
# M N O
# P Q R
# S T U
# V W X
# Y Z

echo "Test 2: One argument"
echo "Expected output:"
echo "Setting letters per row to 3"
echo "A B C"
echo "D E F"
echo "G H I"
echo "J K L"
echo "M N O"
echo "P Q R"
echo "S T U"
echo "V W X"
echo "Y Z"
echo "Actual output:"
./abc.sh 3