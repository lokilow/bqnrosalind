# Problem
# An RNA string is a string formed from the alphabet containing 'A', 'C', 'G', and 'U'.

# Given a DNA string t
#  corresponding to a coding strand, its transcribed RNA string u
#  is formed by replacing all occurrences of 'T' in t
#  with 'U' in u .

# Given: A DNA string t having length at most 1000 nt.

# Return: The transcribed RNA string of t

⟨ td, tr, test, input ⟩ ⇐

td ← "GATGGAACTTGACTACGTAAATT"
tr ← "GAUGGAACUUGACUACGUAAAUU"

Solve ⇐ {
  indices ← 'T' ⍷ 𝕩
  'U'¨⌾(indices⊸/)𝕩
}

test ← tr ≡ Solve td

⟨ input ⟩ ← •Flines ⊑ •args
solution ← Solve input
•Out solution
