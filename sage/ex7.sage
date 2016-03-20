def isMorphism(t, tPrime, f):
#	print("************************************") # Test
#	print("f: {}".format(f)) # Test
	for i, ligne in enumerate(t):
		for j, value in enumerate(ligne):
			if f[t[i][j]] != tPrime[f[i]][f[j]]:
#				print('->->----<--<--') # Test
#				print("f[t[i][j]]: {}".format(f[t[i][j]])) # Test
#				print("tPrime[f[i]][f[j]]: {}".format(tPrime[f[i]][f[j]])) # Test
				return False
#			else: # Test
#				print('--------------------------') # Test
#				print("f[t[i][j]]: {}".format(f[t[i][j]])) # Test
#				print("tPrime[f[i]][f[j]]: {}".format(tPrime[f[i]][f[j]])) # Test
	return True

def generateAutomorphisms(t):
	automorphismes = []
	s = SymmetricGroup(len(t))
	sList = s.list()
	# We iterate on each permutation
	# and we check it's a morphism
	for i in range(len(s)):
		permutation = generatePermutation(sList[i], len(t))
		m = isMorphism(t, t, permutation) # We check if our permutation is a morphism.
		if m:
			automorphismes.append(permutation)
	return automorphismes

def generatePermutation(perm, n):
	"""This function generates and returns a list which represents a permutation application.

	The parameters are:
	- perm (sage.groups.perm_gps.permgroup_element.PermutationGroupElement): a permutation
	- n (int): the cardinal of the application which should be generated

	"""
	permutationApplication = range(n)
	l = perm.cycle_tuples() # l contains a list of tuples
	nextElement = 0
	currentElement = 0
	for i, currentTuple in enumerate(l):		
		for j in range(len(currentTuple)):
			if j == len(currentTuple)-1:
				# The last element of our actual tuple
				nextElement = currentTuple[0]-1
				currentElement = currentTuple[j]-1
			else:
				# Another element				
				nextElement = currentTuple[j+1]-1
				currentElement = currentTuple[j]-1
			permutationApplication[currentElement] = nextElement
	return permutationApplication

def areIsomorphms(t, tPrime):
	if len(t) != len(tPrime):
		return False
	s = SymmetricGroup(len(t))
	sList = s.list()
	for i in range(len(s)):
		permutation = generatePermutation(sList[i], len(t))
		m = isMorphism(t, tPrime, permutation) # We check if our permutation is a morphism.
		if m:
			return True
	return False


if __name__ == "__main__":
	########################## Question 7.1 ##########################
	print('******************************************')
	tableau = [[0, 1, 2, 3], [1, 2, 3, 0], [2, 3, 0, 1], [3, 0, 1, 2]]
	ensemble = [0, 1, 2, 3]
	f = [0,1,2,3] # Identite
	print(isMorphism(tableau, tableau, f))

	print('******************************************')
	tableau2 = [[0, 1, 2, 3], [1, 0, 3, 2], [2, 3, 0, 1], [3, 2, 1, 0]]
	ensemble2 = [(0,0), (0,1), (1,0), (1,1)]
	f2 = [0, 1, 2, 3] # Identité
	print(isMorphism(tableau2, tableau2, f2))

	########################## Question 7.2 ##########################
	print('******************************************')
	print(generateAutomorphisms(tableau))

	print('******************************************')
	print(generateAutomorphisms(tableau2))

	########################## Question 7.3 ##########################
	print(areIsomorphms(tableau, tableau2))