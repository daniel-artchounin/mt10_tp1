def elementNeutre(table, ensemble):
	indice = 0 # Indice de l'ensemble (indice de la valeur a laquelle on s'interesse)
	find = True # Si on a trouve une valeur valide 
	while indice < len(ensemble):
		ok = False # Variable pour gagner en complexite si la valeur a laquelle on s'interesse n'est pas valide
		# Parcours du tableau
		for i, ligne in enumerate(table):
			for j, value in enumerate(ligne):
				if table[i][ensemble[indice]] !=  i or table[j][ensemble[indice]] !=  j:
					ok = True
					print("mort")
					print(i)
					print(j)
					print(ensemble[indice])
					# On passe a l'element suivant
					break
			if ok == True:
				find =  False
				# On passe a l'element suivant				
				break
		if not find:
			# On passe a l'element suivant
			indice = indice + 1
		else:
			return ensemble[indice]
	# On a rien trouve
	return False

# tableau = [[0,1,2,3],[1,2,3,0],[2,3,0,1],[3,0,1,2]]
# ensemble = [0,1,2,3]
# print(elementNeutre(tableau, ensemble))

dico = {0:(0,0),1:(0,1),2:(1,0),3:(1,1)}
tableau2 = [[0, 1,2 ,3],[1,0,3,2],[2,3,0,1],[3,2,1,0]]
ensemble2 = [0,1,2,3]
print(dico[elementNeutre(tableau2, ensemble2)])
