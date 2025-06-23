'''
4) Problem:
Given an n x n square matrix,
return the sum of its primary and secondary diagonals.
 If a cell is on both diagonals, only count it once.
Input: [[1,2,3],
        [4,5,6],
        [7,8,9]]
Output: 25  # (1+5+9) + (3+5+7) - 5 = 25
'''

from numpy import array
from numpy.ma.core import transpose
from numpy.matrixlib.defmatrix import matrix

n = int(input())
num = n*n
a = []
for i in range(num):
    e = int(input())
    a.append(e)

arr = array(a)
mat = arr.reshape(n,n)

collect_dia_ele = []

s = n-1
for i in range(n):
    collect_dia_ele.append(mat[i][i])
    collect_dia_ele.append(mat[i][s])
    s -= 1





uni_num = list(set(collect_dia_ele))

print(sum(uni_num))
