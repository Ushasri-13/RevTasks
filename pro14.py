'''
With two given lists [1,3,6,78,35,55] and [12,24,35,24,88,120,155],
write a program to make a list whose elements are intersection of the above given lists.
Hints
Use set() and "&=" to do set intersection operation.
'''

l1 = [1,3,6,78,35,55]
l2 = [12,24,35,24,88,120,155]
s1 = set(l1)
s2 = set(l2)

print(s1 & s2)