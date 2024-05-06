def isLeapYear(year):
   return year%4 == 0 and year%100 != 0 or year%400 == 0

def monthDays(year, month):
   if isLeapYear(year):
      MONTHDAYS = (0, 31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31)
   else:
      MONTHDAYS = (0, 31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31)
   days = MONTHDAYS[month]
   return days

def previousDay(year, month, day):
   if day - 1 == 0:
      year, month = previousMonth(year, month)
      day = monthDays(year, month)
   else:
      day -= 1
   return year, month, day
      


# Defina uma função previousMonth
# que devolva o mês anterior ao mês (e ano) dado.
# Por exemplo, previousMonth(1980, 3) deve devolver (1980, 2),
# previousMonth(1980, 1) deve devolver (1979, 12).
def previousMonth(year, month):
      if month - 1 == 0:
         year -= 1
         month = 12
      else:
         month -= 1
      return year, month


print(
    previousDay(2000, 1, 1),
    previousDay(2000, 1, 30),
    previousDay(2000, 10, 1)
)