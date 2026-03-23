"""
Carlos Arturo Gomez Ayala | A01711027
Prof. Titular: Dr. Benjamin Valdes Aguirre
Implementation of Computational Methods (Gpo 602)
ITESM
"""

import re

def parse(word):
    # clean the input
    return word.strip().lower()

def accept(word):
    # check if the word is one of the elvish words
    pattern = r'^(dae|dagor|daro|del|din)$'
    return re.fullmatch(pattern, word) is not None

word = str(input("enter a word: "))
result = accept(parse(word))
print("accepted:", result)
