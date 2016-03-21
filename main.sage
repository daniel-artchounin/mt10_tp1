load("ex3.sage")
load("ex4.sage")
load("ex5.sage")
load("ex7.sage")

tableau = [[0, 1, 2, 3], [1, 2, 3, 0], [2, 3, 0, 1], [3, 0, 1, 2]]
ensemble = [0, 1, 2, 3]
tableau2 = [[0, 1, 2, 3], [1, 0, 3, 2], [2, 3, 0, 1], [3, 2, 1, 0]]
ensemble2 = [(0,0), (0,1), (1,0), (1,1)]

ensembleLatin = ["a0", "a1", "a2", "a3"]
carreLatin1 = [[0, 1, 2, 3], [1, 0, 3, 2], [2, 3, 1, 0], [3, 2, 0, 1]]
carreLatin2 = [[0, 1, 2, 3], [1, 0, 3, 2], [2, 3, 0, 1], [3, 2, 1, 0]]
carreLatin3 = [[0, 1, 2, 3], [1, 2, 3, 0], [2, 3, 0, 1], [3, 0, 1, 2]]
carreLatin4 = [[0, 1, 2, 3], [1, 3, 0, 2], [2, 0, 3, 1], [3, 2, 1, 0]]

########################## Question 2 ##########################
print('########################## Question 2 ##########################\n')
print("Autre manière de former les tables de lois.")
print("Pour la loi (Z/4Z, +, 0) : ")
Z4 = CyclicPermutationGroup(4)
Z4CayleyTableAlphabet = Z4.cayley_table()
Z4CayleyTableInteger = Z4CayleyTableAlphabet.table()
print(Z4CayleyTableInteger)
print("Pour la loi (Z/2Z * Z/2Z, +, 0) : ")
Z2Z2 = KleinFourGroup()
Z2Z2CayleyTableAlphabet = Z2Z2.cayley_table()
Z2Z2CayleyTableInteger = Z2Z2CayleyTableAlphabet.table()
print(Z2Z2CayleyTableInteger)

########################## Question 3 ##########################
print('\n\n########################## Question 3 ##########################\n')
print("L'élément neutre de la loi (Z/4Z, +, 0) est : {}".format(elementNeutre(tableau, ensemble)))
print("L'élément neutre de la loi (Z/2Z * Z/2Z, +, 0) est : {}".format(elementNeutre(tableau2, ensemble2)))

########################## Question 4 ##########################
print('\n\n########################## Question 4 ##########################\n')
print("La table des symétriques de la loi (Z/4Z, +, 0) est : {}".format(elementSymetrique(tableau, ensemble)))
print("La table des symétriques de la loi (Z/2Z * Z/2Z, +, 0) est : {}".format(elementSymetrique(tableau2, ensemble2)))

########################## Question 5 ##########################
print('\n\n########################## Question 5 ##########################\n')
if estAssociative(tableau, ensemble):
	print("La loi (Z/4Z, +, 0) est associative")
else:
	print("La loi (Z/4Z, +, 0) n'est pas associative")
if estAssociative(tableau2, ensemble2):
	print("La loi (Z/2Z * Z/2Z, +, 0) est associative")
else:
	print("La loi (Z/2Z * Z/2Z, +, 0) n'est pas associative")

########################## Question 7 ##########################
print('\n\n########################## Question 7 ##########################\n')
#------------------------- Question 7.1 -----------------------#
print('#------------------------- Question 7.1 -----------------------#\n')
f = [0,1,2,3] # Identite
if isMorphism(tableau, tableau, f):
	print("L'application {} de (Z/4Z, +, 0) vers (Z/4Z, +, 0) est un morphisme".format(f))
else:
	print("L'application {} de (Z/4Z, +, 0) vers (Z/4Z, +, 0) n'est pas un morphisme".format(f))
f2 = [0, 1, 2, 3] # Identité
if isMorphism(tableau2, tableau2, f2):
	print("L'application {} de (Z/2Z * Z/2Z, +, 0) vers (Z/2Z * Z/2Z, +, 0) est un morphisme".format(f2))
else:
	print("L'application {} de (Z/2Z * Z/2Z, +, 0) vers (Z/2Z * Z/2Z, +, 0) n'est pas un morphisme".format(f2))
#------------------------- Question 7.2 -----------------------#
print('#------------------------- Question 7.2 -----------------------#\n')
print("Tous les automorphismes de (Z/4Z, +, 0) : {}".format(generateAutomorphisms(tableau)))
print("Tous les automorphismes de (Z/2Z * Z/2Z, +, 0) : {}".format(generateAutomorphisms(tableau2)))
#------------------------- Question 7.3 -----------------------#
print('#------------------------- Question 7.3 -----------------------#\n')
if areIsomorphms(tableau, tableau2):
	print("(Z/4Z, +, 0) et (Z/2Z * Z/2Z, +, 0) sont isomorphes")
else:
	print("(Z/4Z, +, 0) et (Z/2Z * Z/2Z, +, 0) ne sont pas isomorphes")

########################## Question 9 ##########################
print('\n\n########################## Question 9 ##########################\n')
#------------------------- Question 9.1 -----------------------#
print('#------------------------- Question 9.1 -----------------------#\n')
if elementNeutre(carreLatin1, ensembleLatin) is not None and estAssociative(carreLatin1, ensembleLatin) and isSymetric(carreLatin1, ensembleLatin):
	print("Le carré latin I est un groupe")
else:
	print("Le carré latin I n'est pas un groupe")
if elementNeutre(carreLatin2, ensembleLatin) is not None and estAssociative(carreLatin2, ensembleLatin) and isSymetric(carreLatin2, ensembleLatin):
	print("Le carré latin II est un groupe")
else:
	print("Le carré latin II n'est pas un groupe")
if elementNeutre(carreLatin3, ensembleLatin) is not None and estAssociative(carreLatin3, ensembleLatin) and isSymetric(carreLatin3, ensembleLatin):
	print("Le carré latin III est un groupe")
else:
	print("Le carré latin III n'est pas un groupe")
if elementNeutre(carreLatin4, ensembleLatin) is not None and estAssociative(carreLatin4, ensembleLatin) and isSymetric(carreLatin4, ensembleLatin):
	print("Le carré latin IV est un groupe")
else:
	print("Le carré latin IV n'est pas un groupe")
#------------------------- Question 9.2 -----------------------#
print('#------------------------- Question 9.2 -----------------------#\n')
if areIsomorphms(tableau, carreLatin1):
	print("(Z/4Z, +, 0) et le carré latin I sont isomorphes")
else:
	print("(Z/4Z, +, 0) et le carré latin I ne sont pas isomorphes")
if areIsomorphms(tableau, carreLatin2):
	print("(Z/4Z, +, 0) et le carré latin II sont isomorphes")
else:
	print("(Z/4Z, +, 0) et le carré latin II ne sont pas isomorphes")
if areIsomorphms(tableau, carreLatin3):
	print("(Z/4Z, +, 0) et le carré latin III sont isomorphes")
else:
	print("(Z/4Z, +, 0) et le carré latin III ne sont pas isomorphes")
if areIsomorphms(tableau, carreLatin4):
	print("(Z/4Z, +, 0) et le carré latin IV sont isomorphes")
else:
	print("(Z/4Z, +, 0) et le carré latin IV ne sont pas isomorphes")

if areIsomorphms(tableau2, carreLatin1):
	print("(Z/2Z * Z/2Z, +, 0) et le carré latin I sont isomorphes")
else:
	print("(Z/2Z * Z/2Z, +, 0) et le carré latin I ne sont pas isomorphes")
if areIsomorphms(tableau2, carreLatin2):
	print("(Z/2Z * Z/2Z, +, 0) et le carré latin II sont isomorphes")
else:
	print("(Z/2Z * Z/2Z, +, 0) et le carré latin II ne sont pas isomorphes")
if areIsomorphms(tableau2, carreLatin3):
	print("(Z/2Z * Z/2Z, +, 0) et le carré latin III sont isomorphes")
else:
	print("(Z/2Z * Z/2Z, +, 0) et le carré latin III ne sont pas isomorphes")
if areIsomorphms(tableau2, carreLatin4):
	print("(Z/2Z * Z/2Z, +, 0) et le carré latin IV sont isomorphes")
else:
	print("(Z/2Z * Z/2Z, +, 0) et le carré latin IV ne sont pas isomorphes")