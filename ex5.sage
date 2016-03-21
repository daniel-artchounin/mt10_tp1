def estAssociative(table, ensemble):
	for i in range(len(table)):
		for j in range(len(table)):
			for k in range(len(table)):
				if table[table[i][j]][k] != table[i][table[j][k]]:
					return False
	return True