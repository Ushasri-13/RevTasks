'''
Create a function in Python that accepts two parameters.
 They’ll both be numbers. The first will be the month as a number, and the second will be the four-digit year.
 The function should parse the parameters and return True if the month contains a Friday the 13th and False if it doesn’t.
'''

import datetime as dt
def is_13th_friday(y,m):
    date_check = dt.date(y,m,13)
    print(date_check.weekday() == 4)

y = int(input())
m = int(input())
is_13th_friday(y,m)