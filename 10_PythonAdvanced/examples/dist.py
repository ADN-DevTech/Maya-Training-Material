# Simple test function for demonstrating pdb debugger.
def distance(p1, p2):
	dist = 0
	if len(p1) == len(p2):
		for i in range(0, len(p1)):
			diff = p1[i] - p2[i]
			dist += diff*diff
			dist = dist**0.5
	return dist


