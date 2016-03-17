def morphisme(t, tPrime, f):
	print("************************************")
	print("f: {}".format(f))
	for i, ligne in enumerate(t):
		for j, value in enumerate(ligne):
			if f[t[i][j]] != tPrime[f[i]][f[j]]:
				print('->->----<--<--')
				print("f[t[i][j]]: {}".format(f[t[i][j]]))
				print("tPrime[f[i]][f[j]]: {}".format(tPrime[f[i]][f[j]]))
				return -1
			else:
				print('--------------------------')
				print("f[t[i][j]]: {}".format(f[t[i][j]]))
				print("tPrime[f[i]][f[j]]: {}".format(tPrime[f[i]][f[j]]))
	return 0

"""print('******************************************')
tableau = [[0,1,2,3],[1,2,3,0],[2,3,0,1],[3,0,1,2]]
f = [0,1,2,3]
print(morphisme(tableau, tableau, f))
print('******************************************')
tableau2 = [[0, 1, 2 ,3], [1, 0, 3, 2], [2, 3, 0, 1], [3, 2, 1, 0]]
f2 = [0, 1, 2, 3]
dico = {0:(0,0),1:(0,1),2:(1,0),3:(1,1)}
print(morphisme(tableau2, tableau2, f2))"""

def automorphisme(t, n):
	result = []
	s = SymmetricGroup(n)
	for i in range(len(s)):
		r = f(s.list()[i], n)
		m = morphisme(t, t, r)
		if m == 0:
			result.append(r)
	return result


def f(t, n):
	newL = range(n)
	l = t.cycle_tuples()
	nextElement = 0
	currentElement = 0
	for i, subT in enumerate(l):		
		for j in range(len(subT)):
			if j == len(subT)-1:
				nextElement = subT[0]-1
				currentElement = subT[j]-1
				# The last element
			else:
				# Other element
				nextElement = subT[j+1]-1
				currentElement = subT[j]-1
			newL[currentElement] = nextElement
	return newL

"""tableau = [[0,1,2,3],[1,2,3,0],[2,3,0,1],[3,0,1,2]]
print(automorphisme(tableau, 4))"""
tableau2 = [[0, 1, 2 ,3], [1, 0, 3, 2], [2, 3, 0, 1], [3, 2, 1, 0]]
print(automorphisme(tableau2, 4))