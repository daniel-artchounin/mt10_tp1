def elementNeutre(table, ensemble):
	for alpha in range(len(ensemble)):
		find = True # Pour savoir si on a trouve un element neutre 
		for i in range(len(table)):
			if table[i][alpha] !=  ensemble[i] or table[alpha][i] !=  ensemble[i]:
				find = False				
				break # On passe a l'element suivant
		if find:
			return ensemble[alpha]	# On retourne l'element neutre
	return False # On a rien trouve

tableau = [[0, 1, 2, 3], [1, 2, 3, 0], [2, 3, 0, 1], [3, 0, 1, 2]]
ensemble = [0, 1, 2, 3]
print(elementNeutre(tableau, ensemble))

tableau2 = [[(0,0), (0,1), (1,0), (1,1)], [(0,1), (0,0), (1,1), (1,0)], [(1,0), (1,1), (0,0), (0,1)], [(1,1), (1,0), (0,1), (0,0)]]
ensemble2 = [(0,0), (0,1), (1,0), (1,1)]
print(elementNeutre(tableau2, ensemble2))