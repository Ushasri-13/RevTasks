'''2) Problem:
Given a string, find the length of the longest substring without repeating characters.
"abcabcbb"
Output: 3
'''

str = input()
unique_char = set(str)
len_str = len(str)
all_strs = []
for i in range(len_str):
    for j in range(i,len_str):
        a = set(str[i:j])
        all_strs.append(list(a))

#print(all_strs)

len_sub_strs = []
for i in all_strs:
    len_sub_strs.append(len(i))

print(max(len_sub_strs))