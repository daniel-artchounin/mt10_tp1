load("ex3.sage")
load("ex4.sage")
load("ex5.sage")
load("ex7.sage")
load("ex9.sage")

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
print(Z4.cayley_table("digits"))
print("Pour la loi (Z/2Z * Z/2Z, +, 0) : ")
Z2Z2 = KleinFourGroup()
print(Z2Z2.cayley_table("digits"))

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
if isGroup(carreLatin1, ensembleLatin):
	print("Le carré latin I est un groupe")
else:
	print("Le carré latin I n'est pas un groupe")
if isGroup(carreLatin2, ensembleLatin):
	print("Le carré latin II est un groupe")
else:
	print("Le carré latin II n'est pas un groupe")
if isGroup(carreLatin3, ensembleLatin):
	print("Le carré latin III est un groupe")
else:
	print("Le carré latin III n'est pas un groupe")
if isGroup(carreLatin4, ensembleLatin):
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

########################## Question 10 ##########################
print('\n\n########################## Question 10 ##########################\n')
# Hand-made triplet
print("#------------------------- Hand made triplet  -----------------------#\n")
handMadeLaw = [[0, 1, 2, 3, 4], [1, 0, 3, 2, 4], [2, 3, 1, 0, 4], [3, 2, 0, 1, 4], [1, 2, 3, 4, 0]]
handMadeElements = [0, 1, 2, 3, 4]
print("\tElements : {}".format(handMadeElements))
print("\tLoi :")
print(handMadeLaw)
handMadeElementNeutre = elementNeutre(handMadeLaw, handMadeElements)
if handMadeElementNeutre is None:
	print("\tIl n'y a pas d'element neutre")
else:
	print("\tL'element neutre est : {}".format(handMadeElementNeutre))
handMadeElementSymetrique = elementSymetrique(handMadeLaw, handMadeElements)
if handMadeElementSymetrique is not None and len(dG6ElementSymetrique) == len(dG6Elements):
	print("\tLa table des symétrique est : {}".format(handMadeElementSymetrique))
else:
	print("\tIl n'y a pas de table des symétriques")	
handMadeAssociative = estAssociative(handMadeLaw, handMadeElements)
if handMadeAssociative:
	print("\tLa loi est associative")
else:
	print("\tLa loi n'est pas associative")
if isGroup(handMadeLaw, handMadeElements):
	print("\tHand made triplet est un groupe")
else:
	print("\tHand made triplet n'est pas un groupe")
handMadeAutomorphisms = generateAutomorphisms(handMadeLaw)
print("\tLe(s) automorphisme(s) est/sont : {}".format(handMadeAutomorphisms))


# Dihedral group of order 6
dG6 = DihedralGroup(3)
print("#------------------------- Triplet 1  -----------------------#\n")
dG6CayleyTable = dG6.cayley_table()
dG6CayleyTableList = dG6CayleyTable.table()
dG6Elements = dG6CayleyTableList[0]
print("\tElements : {}".format(dG6Elements))
print("\tLoi :")
print(dG6.cayley_table("digits"))
print("\tOrdre : {}".format(dG6.order()))
dG6ElementNeutre = elementNeutre(dG6CayleyTableList, dG6Elements)
if dG6ElementNeutre is None:
	print("\tIl n'y a pas d'element neutre")
else:
	print("\tL'element neutre est : {}".format(dG6ElementNeutre))
dG6ElementSymetrique = elementSymetrique(dG6CayleyTableList, dG6Elements)
if dG6ElementSymetrique is not None and len(dG6ElementSymetrique) == len(dG6Elements):
	print("\tLa table des symétrique est : {}".format(dG6ElementSymetrique))
else:
	print("\tIl n'y a pas de table des symétriques")	
dG6Associative = estAssociative(dG6CayleyTableList, dG6Elements)
if dG6Associative:
	print("\tLa loi est associative")
else:
	print("\tLa loi n'est pas associative")
if isGroup(dG6CayleyTableList, dG6Elements):
	print("\tTriplet 1 est un groupe")
else:
	print("\tTriplet 1 n'est pas un groupe")
dG6Automorphisms = generateAutomorphisms(dG6CayleyTableList)
print("\tLe(s) automorphisme(s) est/sont : {}".format(dG6Automorphisms))

# Symmetric group of order 6
s3 = SymmetricGroup(3)
print("#------------------------- Triplet 2  -----------------------#\n")
s3CayleyTable = s3.cayley_table()
s3CayleyTableList = s3CayleyTable.table()
s3Elements = s3CayleyTableList[0]
print("\tElements : {}".format(s3Elements))
print("\tLoi :")
print(s3.cayley_table("digits"))
print("\tOrdre : {}".format(s3.order()))
s3ElementNeutre = elementNeutre(s3CayleyTableList, s3Elements)
if s3ElementNeutre is None:
	print("\tIl n'y a pas d'element neutre")
else:
	print("\tL'element neutre est : {}".format(s3ElementNeutre))
s3ElementSymetrique = elementSymetrique(s3CayleyTableList, s3Elements)
if s3ElementSymetrique is not None and len(s3ElementSymetrique) == len(s3Elements):
	print("\tLa table des symétrique est : {}".format(s3ElementSymetrique))	
else:
	print("\tIl n'y a pas de table des symétriques")
	
s3Associative = estAssociative(s3CayleyTableList, s3Elements)
if s3Associative:
	print("\tLa loi est associative")
else:
	print("\tLa loi n'est pas associative")
if isGroup(s3CayleyTableList, s3Elements):
	print("\tTriplet 2 est un groupe")
else:
	print("\tTriplet 2 n'est pas un groupe")
s3Automorphisms = generateAutomorphisms(s3CayleyTableList)
print("\tLe(s) automorphisme(s) est/sont : {}".format(s3Automorphisms))
print("#------------------------- Triplet 1 et 2 -----------------------#\n")
if areIsomorphms(dG6CayleyTableList, s3CayleyTableList):
	print("Les triplets 1 et 2 sont isomorphes.")
else:
	print("Les triplets 1 et 2 ne sont pas isomorphes.")