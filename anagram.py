'''Write a function that takes a list of strings and groups them into lists of anagrams.
["eat", "tea", "tan", "ate", "nat", "bat"]
eat tea tan ate nat bat
Output: [["eat", "tea", "ate"], ["tan", "nat"], ["bat"]]'''


ordinary_list = list(map(str,input().split()))
sorted_dict = {}

a_unique = set()



for i in ordinary_list:
    a = ''
    for j in (sorted(i)):
        a+=j
    sorted_dict[i] = a
    a_unique.add(a)
#print(sorted_dict)
a_unique_list = list(a_unique)
#print(a_unique_list)

total_result = []
for k in a_unique_list:
    short_result = []
    for i,j in sorted_dict.items():
        if k == j:
            short_result.append(i)

    total_result.append(short_result)

print(total_result)
result = {}
for i in total_result:
    result[len(i)] = i



