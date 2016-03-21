load("ex3.sage")

def elementSymetrique(table, ensemble):
	neutre = elementNeutre(table, ensemble)
	if neutre is None:
		return neutre
	symetriques = {}
	for i, ligne in enumerate(table):
		# Afin que cette fonction puisse etre egalement utilisee pour
		# des monoides non groupes, on ne va pas considerer l'unicite
		# du symetrique.
		symetriques[ensemble[i]] = []
		for j in range(len(ligne)):
			if ensemble[table[i][j]] == neutre and ensemble[table[j][i]] == neutre:
				symetriques[ensemble[i]].append(ensemble[j])
	return symetriques

def isSymetric(table, ensemble):
	symetricsDict = elementSymetrique(table, ensemble)
	for key in symetricsDict:
		if len(symetricsDict[key]) != 1:
			return False
	return True