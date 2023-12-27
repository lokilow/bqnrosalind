# Given: A DNA string s of length at most 1000 nt.

# Return: Four integers (separated by spaces) counting the respective number of times that the symbols 'A', 'C', 'G', and 'T' occur in s
# .

⟨td, tr, test, ans⟩ ⇐
td ← "AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC"
tr ← 20‿12‿17‿21
Main ⇐ {
  a ← +´ "A" ⍷ 𝕩
  c ← +´ "C" ⍷ 𝕩
  g ← +´ "G" ⍷ 𝕩
  t ← +´ "T" ⍷ 𝕩
  
	⟨a,c,g,t⟩
}
test ← tr ≡ Main td


⟨ s ⟩ ← •Flines ⊑ •args
ans ← Main s
# This formats each integer in the list, interspreses each with a space
# join them together, and then drops the first space.
# I need to extract this as a helper function
•Out  1↓∾' '∾¨•Fmt¨ ans

