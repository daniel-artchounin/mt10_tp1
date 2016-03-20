load("ex3.sage")
load("ex4.sage")
load("ex5.sage")
load("ex7.sage")

ensemble = ["a0", "a1", "a2", "a3"]

carreLatin1 = [[0, 1, 2, 3], [1, 0, 3, 2], [2, 3, 1, 0], [3, 2, 0, 1]]
carreLatin2 = [[0, 1, 2, 3], [1, 0, 3, 2], [2, 3, 0, 1], [3, 2, 1, 0]]
carreLatin3 = [[0, 1, 2, 3], [1, 2, 3, 0], [2, 3, 0, 1], [3, 0, 1, 2]]
carreLatin4 = [[0, 1, 2, 3], [1, 3, 0, 2], [2, 0, 3, 1], [3, 2, 1, 0]]

print(elementNeutre(carreLatin1, ensemble) is not None and estAssociative(carreLatin1, ensemble) and isSymetric(carreLatin1, ensemble))
print(elementNeutre(carreLatin2, ensemble) is not None and estAssociative(carreLatin2, ensemble) and isSymetric(carreLatin2, ensemble))
print(elementNeutre(carreLatin3, ensemble) is not None and estAssociative(carreLatin3, ensemble) and isSymetric(carreLatin3, ensemble))
print(elementNeutre(carreLatin4, ensemble) is not None and estAssociative(carreLatin4, ensemble) and isSymetric(carreLatin4, ensemble))

tableau = [[0, 1, 2, 3], [1, 2, 3, 0], [2, 3, 0, 1], [3, 0, 1, 2]]
ensemble = [0, 1, 2, 3]

print(areIsomorphms(tableau, carreLatin1))
print(areIsomorphms(tableau, carreLatin2))
print(areIsomorphms(tableau, carreLatin3))
print(areIsomorphms(tableau, carreLatin4))

tableau2 = [[0, 1, 2, 3], [1, 0, 3, 2], [2, 3, 0, 1], [3, 2, 1, 0]]
ensemble2 = [(0,0), (0,1), (1,0), (1,1)]

print(areIsomorphms(tableau2, carreLatin1))
print(areIsomorphms(tableau2, carreLatin2))
print(areIsomorphms(tableau2, carreLatin3))
print(areIsomorphms(tableau2, carreLatin4))