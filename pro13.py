'''
Write a program to solve a classic ancient Chinese puzzle:
We count 35 heads and 94 legs among the chickens and rabbits in a farm.
How many rabbits and how many chickens do we have?
Hints
Use for loop to iterate all possible solutions.
'''


h = 35
l = 94

rh = 1
ch = 1

rl = 4
cl = 2

for c in range(h + 1):
    r = h - c
    total_legs = c * 2 + r * 4
    if total_legs == l:
        print(f"Chickens: {c}, Rabbits: {r}")