def loiAssociative(table):
	k=0
	while k < 4:
		for i, ligne in enumerate(table):
			for j, value in enumerate(ligne):
				# print table[table[i][j]][k]
				# print table[i][table[j][k]]
				if table[table[i][j]][k] != table[i][table[j][k]]:
					return -1
		k+=1
	return 0
	

			
# Ok pour celui la la loi est associative
tableau = [[0,1,2,3],[1,2,3,0],[2,3,0,1],[3,0,1,2]]
print(loiAssociative(tableau))

#problème avec les indices pour ce tableau -> à voir
# tableau2 = [[(0,0),(0,1),(1,0),(1,1)],[(0,1),(0,0),(1,1),(1,0)],[(1,0),(1,1),(0,0),(0,1)],[(1,1),(1,0),(0,1),(0,0)]]
# print(loiAssociative(tableau2))
