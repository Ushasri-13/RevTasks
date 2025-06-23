'''
You are given a date. Your task is to find what the day is on that date.
Input
A single line of input containing the space separated month, day and year, respectively, in MM DD YYYY format.


08 05 2015

Output
Output the correct day in capital letters.


WEDNESDAY
'''

import datetime as dt
m,d,y = map(int,input().split())
days_details = {0:"MONDAY",1:"TUESDAY",2:"WEDNESDAY",3:"THURSDAY",4:'FRIDAY',5:'SATURDAY',6:"SUNDAY"}
given_date = dt.date(y,m,d)

for i,j in days_details.items():
    if given_date.weekday() == i:
        print(j)