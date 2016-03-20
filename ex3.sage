def elementNeutre(table, ensemble):
	for alpha in range(len(ensemble)):
		find = True # Pour savoir si on a trouve un element neutre 
		for i in range(len(table)):
			if ensemble[table[i][alpha]] != ensemble[i] or ensemble[table[alpha][i]] !=  ensemble[i]:
				find = False				
				break # On passe a l'element suivant
		if find:
			return ensemble[alpha] # On retourne l'element neutre
	return None # On a rien trouve

if __name__ == "__main__":
	tableau = [[0, 1, 2, 3], [1, 2, 3, 0], [2, 3, 0, 1], [3, 0, 1, 2]]
	ensemble = [0, 1, 2, 3]
	print(elementNeutre(tableau, ensemble))

	tableau2 = [[0, 1, 2, 3], [1, 0, 3, 2], [2, 3, 0, 1], [3, 2, 1, 0]]
	ensemble2 = [(0,0), (0,1), (1,0), (1,1)]
	print(elementNeutre(tableau2, ensemble2))