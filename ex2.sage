########################## Question 2 ##########################
Z4 = CyclicPermutationGroup(4)
Z4CayleyTableAlphabet = Z4.cayley_table()
Z4CayleyTableInteger = Z4CayleyTableAlphabet.table()
print(Z4CayleyTableInteger)
print(type(Z4CayleyTableInteger))

########################## Useless ##########################

Z4 = CyclicPermutationGroup(4)
print(Z4)
Z4.list()

Z4 = SymmetricGroup(4)
print(Z4)
Z4.list()