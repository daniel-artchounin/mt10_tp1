def elementSymetrique(table):
	for i, ligne in enumerate(table):
			for j, value in enumerate(ligne):
				if table[i][j] == table[j][i]:
					print table[i][j]
	return -1
	

			
# Ok tableau symétrique
# tableau = [[0,1,2,3],[1,2,3,0],[2,3,0,1],[3,0,1,2]]
# print(elementSymetrique(tableau))

# Ok tableau symétrique
tableau2 = [[(0,0),(0,1),(1,0),(1,1)],[(0,1),(0,0),(1,1),(1,0)],[(1,0),(1,1),(0,0),(0,1)],[(1,1),(1,0),(0,1),(0,0)]]
print(elementSymetrique(tableau2))
