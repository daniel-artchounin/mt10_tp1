def estAssociative(table, ensemble):
	for i in range(len(table)):
		for j in range(len(table)):
			for k in range(len(table)):
				try:
					if table[ensemble.index(table[i][j])][k] != table[i][ensemble.index(table[j][k])]:
						return False
				except ValueError:
					return False
	return True
			
if __name__ == "__main__":
	print('***************************')
	tableau = [[0, 1, 2, 3], [1, 2, 3, 0], [2, 3, 0, 1], [3, 0, 1, 2]]
	ensemble = [0, 1, 2, 3]
	print(estAssociative(tableau, ensemble))

	dico = {(0,0):0, (0,1):1, (1,0):2, (1,1):3}
	print('***************************')
	tableau2 = [[(0,0), (0,1), (1,0), (1,1)], [(0,1), (0,0), (1,1), (1,0)], [(1,0), (1,1), (0,0), (0,1)], [(1,1), (1,0), (0,1), (0,0)]]
	ensemble2 = [(0,0), (0,1), (1,0), (1,1)]
	print(estAssociative(tableau2, ensemble2))