load("ex3.sage")
load("ex4.sage")
load("ex5.sage")

def isGroup(law, baseSet):
	return elementNeutre(law, baseSet) is not None and estAssociative(law, baseSet) and isSymetric(law, baseSet)