def loiAssociative(table, dataStructure=None):
	k=0
	tableLength = len(table)
	if dataStructure is None:
		while k < tableLength:
			for i, ligne in enumerate(table):
				for j, value in enumerate(ligne):
					# print table[table[i][j]][k] # Test
					# print table[i][table[j][k]] # Test
					if table[table[i][j]][k] != table[i][table[j][k]]:
						return -1
			k+=1
	else:
		while k < tableLength:
			for i, ligne in enumerate(table):
				for j, value in enumerate(ligne):
					# print table[dataStructure[table[i][j]]][k] # Test
					# print table[i][dataStructure[table[j][k]]] # Test
					if table[dataStructure[table[i][j]]][k] != table[i][dataStructure[table[j][k]]]:
						return -1
			k+=1
	return 0
			
# Ok pour celui la la loi est associative
print('***************************')
tableau = [[0,1,2,3],[1,2,3,0],[2,3,0,1],[3,0,1,2]]
print(loiAssociative(tableau))

dico = {(0,0):0, (0,1):1, (1,0):2, (1,1):3}
# probleme avec les indices pour ce tableau -> a voir -> the problem seems to be solved ;-)
print('***************************')
tableau2 = [[(0,0),(0,1),(1,0),(1,1)],[(0,1),(0,0),(1,1),(1,0)],[(1,0),(1,1),(0,0),(0,1)],[(1,1),(1,0),(0,1),(0,0)]]
print(loiAssociative(tableau2, dico))