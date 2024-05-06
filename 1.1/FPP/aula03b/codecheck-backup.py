
# isLeapYear(year) deve devolver True se year é um ano bissexto
# e False se é um ano comum.  Corrija-a.
# (See: https://en.wikipedia.org/wiki/Leap_year)
def isLeapYear(year):
   return year%4 == 0 and year%100 != 0 or year%400 == 0


# monthDays deve devolver o número de dias de um dado mês num dado ano.
# Por exemplo, monthDays(2004, 2) deve devolver 29.
# Corrija-a.
def monthDays(year, month):
   if isLeapYear(year):
      MONTHDAYS = (0, 31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31)
   else:
      MONTHDAYS = (0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31)
   days = MONTHDAYS[month]
   return days


# nextMonth deve devolver o mês seguinte ao mês (e ano) dado.
# Por exemplo, nextMonth(2016, 12) deve devolver (2017, 1).
def nextMonth(year, month):
   if month == 12:
      month = 1
      year += 1
   else:
      month += 1
   return year, month


# nextDay deve devolver o dia a seguir a uma dada data.
# Por exemplo, nextDay(2017, 1, 31) deve devolver (2017, 2, 1)
def nextDay(year, month, day):
   if day + 1 > monthDays(year, month):
      year, month = nextMonth(year, month)
      day = 1
   else:
      day += 1
   return year, month, day


# Defina uma função dateIsValid que deve
# devolver True se os seus argumentos formarem uma data válida
# e devolver False no caso contrário.
# Por exemplo, dateIsValid(1980, 2, 29) deve devolver True,
# dateIsValid(1980, 2, 30) deve devolver False.
def dateIsValid(year, month, day):
   if 0 < day <= monthDays(year, month) and 0 < month < 12 and year >= 0:
      return True
   else:
      return False
# Defina uma função previousDay que devolva o dia anterior a uma dada data.
# Por exemplo, previousDay(1980, 3, 1) deve devolver (1980, 2, 29)
def previousDay(year, month, day):
   if day - 1 <= 0:
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


# No Codecheck, não chame nenhuma função: o sistema trata disso.