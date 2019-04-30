# utworzyc repozytorium ruby_exercise - city guesser. Mam wyslac pull request i wyslac. 
# 1. uzyjesz gema FAKER 
#   https://github.com/stympy/faker/blob/master/doc/default/address.md
#   Faker::Address.country

# 2. komputer bedzie general nazwe panstwa po czym na ekranie wyswietla sie zakodowana nazwa

# 3. wylosowana nazwa to Senegal, lecz na ekranie pojawia sie *******
# 4. uzytkownik podaje literke, badz rozwiazanie.
# 5. jesli uzytkownik zgadnie literke to pojawia siei jej wystapienei w zakodowanym tekscie. NP => uzytkownik podaje litere 'e' na ekranie pojawia sie komunikat *e*e***
# 6. jesli user sie pomyli widzi komunikat ze zostalo mu X szans
# 7. ilosc mozliwych bledow = 3

# menu wyglada tak

# Haslo: *******
# 1. Podaj litere
# 2. Podaj odpowiedz
# Twoja wybor: 

# jesli wcisnie 1 i poda wiecej niz jedna literke (traktujemy to jako blad i zmieniszamy ilosc dostepnych bledow)
# jesli poda zle haslo (zmniejszamy ilosc bledow)

# przyklad dzialania:

# Haslo: *******
# 1. Podaj litere
# 2. Podaj odpowiedz
# Twoj wybor: 1
# Podaj litere: e

# Haslo: *e*e***
# 1. Podaj litere
# 2. Podaj odpowiedz
# Twoj wybor: 1
# Podaj litere: s

# Haslo: *e*e***
# 1. Podaj litere
# 2. Podaj odpowiedz
# Twoja wybor: 1
# Podaj litere: s

# Haslo: Se*e***
# 1. Podaj litere
# 2. Podaj odpowiedz
# Twoja wybor: 1
# Podaj litere: p
# Niestety w wylosowanym slowie nie ma litery 'p'

# Haslo: Se*e***
# 1. Podaj litere
# 2. Podaj odpowiedz
# Twoja wybor: 2
# Podaj litere: senegal
# Gratulacje wygrales!!!

require 'faker'

country_picker = Faker::Address.country

puts country_picker