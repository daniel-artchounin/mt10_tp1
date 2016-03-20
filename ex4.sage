from ex3 import *

def elementSymetrique(table, ensemble):
	neutre = elementNeutre(table, ensemble)
	if neutre is None:
		return neutre
	symetriques = {}
	for i, ligne in enumerate(table):
		# Afin que cette fonction puisse être également utilisée pour
		# des monoïdes non groupes, on ne va pas considérer l'unicité
		# du symétrique.
		symetriques[ensemble[i]] = []
		for j in range(len(ligne)):
			if table[i][j] == neutre and table[j][i] == neutre:
				symetriques[ensemble[i]].append(ensemble[j])
	return symetriques
			
if __name__ == "__main__":
	# Ok tableau symetrique
	print('***************************')
	tableau = [[0, 1, 2, 3], [1, 2, 3, 0], [2, 3, 0, 1], [3, 0, 1, 2]]
	ensemble = [0, 1, 2, 3]
	print(elementSymetrique(tableau, ensemble))

	# Ok tableau symetrique
	print('***************************')
	tableau2 = [[(0,0), (0,1), (1,0), (1,1)], [(0,1), (0,0), (1,1), (1,0)], [(1,0), (1,1), (0,0), (0,1)], [(1,1), (1,0), (0,1), (0,0)]]
	ensemble2 = [(0,0), (0,1), (1,0), (1,1)]
	print(elementSymetrique(tableau2, ensemble2))