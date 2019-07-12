def password
	puts "Entre le mot de passe ici:"
	print "> "
	password = gets.chomp.to_s
	return password
end

def confirm
	puts "Entre à nouveau le mot de passe :"
	print "> "
	confirm = gets.chomp.to_s
	return confirm
end

def log_in (password, confirm)
	while password != confirm
		puts "Les deux mots de passe ne sont pas identique, veuillez re-essayer:"
		print "> "
		password = gets.chomp.to_s
		puts "Entre à nouveau le mot de passe :"
		print "> "
		confirm = gets.chomp.to_s
	end

	puts " 
Tu as bien rentrer le mot de passe \o/!!!"
	welcome_page
end

def welcome_page
	puts "
───────▄▀▄─────▄▀▄
──────▄█░░▀▀▀▀▀░░█▄
──▄▄──█░░░░░░░░░░░█──▄▄
─█▄▄█─█░░▀░░┬░░▀░░█─█▄▄█
─▀██▀─▄███▄─▀██─██▀██▀▀█
──██─███─███─██─██─██▄█
──██─▀██▄██▀─▀█▄█▀─██▀█
─▄██▄▄█▀▀▀─────▀──▄██▄▄█
✿♥✿░ ░Y░O░U░ ░A░R░E░ ░✿♥✿
✿♥✿░B░E░A░U░T░I░F░U░L░✿♥✿"
end

log_in(password, confirm)
