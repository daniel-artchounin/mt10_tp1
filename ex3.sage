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