def nbetages
	puts "On vas faire une pyramide, donne moi le nombre d'étage que tu veux:"
	print "> "
	nbetages = gets.chomp.to_i
	
	return nbetages
end


def half_pyramide(nbetages)
	etagenum = 1

	while (etagenum <= nbetages && nbetages < 26)
		puts "#"*etagenum
		etagenum = etagenum + 1
	end
end


def full_pyramide
	puts "Quoi!? la direction veux une vrai pyramide bien droite?!
Confirme moi le nombre d'étages que tu veux!"
	numetages = gets.chomp.to_i
	
	puts "Tu as choisi d'avoir #{numetages} étages, voici ta pyramide bien droite:"
	etagen = 1
	while (etagen <= numetages && etagen < 26)
		puts "#{" "*(numetages-etagen) + "#"*etagen + "#"*(etagen-1) }"
		etagen = etagen + 1
	end
end

def wtf_pyramide
	puts "QUOIIIIIII !? ils ne veulent plus d'une pyramide?!
Tu vas voir ce que je vais leur faire! Donne moi un nombre d'étage! :"
	nbetages = gets.chomp.to_i

	while nbetages % 2 == 0
		puts "Na je veux un nombre impair. recommence."
		print "> "
		nbetages = gets.chomp.to_i
	end

	puts "bah voila ce que je fais de leurs pyramide!"

	etagen = 1
	top = nbetages/2 + 1

	while (etagen <= top && top < 26)
		puts "#{" "*(top-etagen) + "#"*etagen + "#"*(etagen-1)}"
		etagen = etagen + 1
	end

	bot = nbetages/2

	while (bot > 0)
		space = nbetages/2 +1 - bot
		puts "#{" "*space + "#"*bot +  "#"*(bot-1)}"
		bot = bot - 1
	end
end

	

half_pyramide(nbetages)
full_pyramide
wtf_pyramide
