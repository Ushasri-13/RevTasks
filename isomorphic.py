'''
3) Problem:
Determine if two strings are isomorphic. Two strings are isomorphic if the characters in one string can be replaced to get the other, with a one-to-one mapping.

Input: "egg", "add" → Output: True
Input: "foo", "bar" → Output: False
Input: "paper", "title" → Output: True
Input: "eg", "egg" → Output: False
'''

s1 = input()
s1_len = len(s1)
set_s1_len = len(set(s1))
s2 = input()
s2_len = len(s2)
set_s2_len = len(set(s2))
if s1_len == s2_len:
    if set_s1_len == set_s2_len:
        print("True")
    else:
        print("False")
else:
    print("False")