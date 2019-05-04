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

# def characters_valid?(user_character)
# 	if user_character.included(dupa)
# 		puts "yay!"
# 	end
# end

country_picker = Faker::Address.country
	separated_letters =  country_picker.split("") 
puts "tell me the letter"
user_input_letter = gets.chomp
	if separated_letters.include?user_input_letter 
		puts "well done! You guessed a letter :) "
	else puts "you lost"
	end  #=> true

	# if user_letter_input = 
# puts country_picker.gsub(/'*'/, '[ABCDEFGHIJKLMNOPRSTUWXYZabcdefghijklmnoprstuwxyz]')

# puts "Podaj Swoją Literkę"
# user_letter_input = gets.chomp
# if user_letter_input = 
