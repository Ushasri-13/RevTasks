'''
Question
Given 2 sets of integers, M and N, print their symmetric difference in ascending order. The term symmetric difference
 indicates those values that exist in either M or N but do not exist in both.
Input
The first line of input contains an integer, M.The second line contains M space-separated integers.The third line contains an integer, N.The fourth line contains N space-separated integers.

4
2 4 5 9
4
2 4 11 12

Output
Output the symmetric difference integers in ascending order, one per line.


5
9
11
12

Hints
Use '^' to make symmetric difference operation.
'''


n = int(input("Enter value"))
s1 = set()
for i in range(n):
    num = int(input("Enter element:"))
    s1.add(num)

print(s1)

m = int(input("Enter value"))
s2 = set()
for j in range(m):
    num1 = int(input("Enter element:"))
    s2.add(num1)
print(s2)

r = s1 ^ s2
r = list(r)
for k in r:
    print(k)