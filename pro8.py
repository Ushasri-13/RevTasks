'''
Question
You are given an integer, N. Your task is to print an alphabet rangoli of size N. (Rangoli is a form of Indian folk art based on creation of patterns.)
Different sizes of alphabet rangoli are shown below:


#size 3
----c----
--c-b-c--
c-b-a-b-c
--c-b-c--
----c----
#size 5
--------e--------
------e-d-e------
----e-d-c-d-e----
--e-d-c-b-c-d-e--
e-d-c-b-a-b-c-d-e
--e-d-c-b-c-d-e--
----e-d-c-d-e----
------e-d-e------
--------e--------

Hints
First print the half of the Rangoli in the given way and save each line in a list. Then print the list in reverse order to get the rest.
'''


n = int(input())
s = ''
start = 97
for i in range(n):
    s += chr(start)
    start+=1
#print(s)
space = n*2-2
r = s[::-1]
rs = r[:len(r)-1]
#print(rs)
print(" " * (space) + s[-1])
x = n-2
space = space-2
#print(space)
for i in range(n-1):
    print( " " * space + ' '.join(rs[:i+1])+ " " +  ' '.join(s[x : n]))
    space-=2
    x-=1

sp = 2
y = n-2
for j in range(n-2):
    print(" "*sp + ' '.join(rs[:y]) + ' ' + ' '.join(s[j+1:])  )
    sp+=2
    y-=1

print(" " * (n*2-2) + s[-1])