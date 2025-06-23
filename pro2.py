'''
Write a function in Python that accepts two string parameters. The first parameter will be a string of characters,
and the second parameter will be the same string of characters,
 but they’ll be in a different order and have one extra character. The function should return that extra character.
For example, if the first parameter is “eueiieo” and the second is “iieoedue,” then the function should return “d.”
'''

def extra_str(s1,s2):
    d1 = {}
    set_s1 = list(set(s1))
    #print(set_s1)
    for i in set_s1:
        d1[i] = s1.count(i)
    #print(d1)

    d2 = {}
    set_s2 = list(set(s2))
    # print(set_s2)
    for i in set_s2:
        d2[i] = s2.count(i)
    #print(d2)




    if len(s1) > len(s2):
        a = d1.items()
        x = ''
        for m, n in a:
            #print(m, n)
            if m not in d1.keys():
                x += m
        return x
    else:
        a = d2.items()
        x = ''
        for m, n in a:
            #print(m, n)
            if m not in d1.keys():
                x += m
        return x



s1 = input()
s2 = input()
print(extra_str(s1,s2))