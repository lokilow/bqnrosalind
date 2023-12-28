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

# x0¨⌾(b1⊸/)y1	Replace elements of y1 with x0 where b1 is 1
# / indices (monadic), replicate (dyadic)
# When the argument is just 0s and 1s, the result is the indices of the 1s
# ⊸ is before
# ⌾ is under, 𝔽⌾𝔾 𝕩
# Apply transformation 𝔾 to all arguments
# Apply 𝔽 to the transformed arguments
# Undo transformation 𝔾
# I think i get it, 70%. What a mindfuck.
Solve ⇐ {
  indices ← 'T' ⍷ 𝕩
  'U'¨⌾(indices⊸/)𝕩
}

test ← tr ≡ Solve td

⟨ input ⟩ ← •Flines ⊑ •args
solution ← Solve input
•Out solution
