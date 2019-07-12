def start
  puts " Le jeu commence!
Tu as 10 marches devant toi et tu dois les gravire!
En lançant le dé, si tu tombe sur un :
- 5 ou 6, tu avances d'une marche,
- 1, tu redescends une marche,
- 2, 3 ou 4, tu restes ou tu es.

BONNE CHANCE!"

positionage
des
end

def positionage
  @position = 0
end


def ajout
  @position += 1
  if @position <10
  puts "Tu montes d'une marche! :D 
Tu es a la marche numéro #{@position}"
  des

  elsif @position == 10
    finish
  end
end


def soustrait
  if @position == 0
    @position += 0
    puts "Tu ne tomberas pas plus bas...
Tu es a la marche numéro #{@position}"

  else
    @position -= 1
    puts "Tu descends d'une marche! :(
Tu es a la marche numéro #{@position}"

  end
  des
end


def stay
  puts "Ne bouge pas d'un poil.
Tu es a la marche numéro #{@position}"
  des
end


def des
  enter = String.new
  while enter != "\n"
    puts "
    Appuyer sur enter pour lancer le dé :"
    enter = gets
  end

  @chiffre = rand(1..6)
  puts "tu es tombé sur le numero : #{@chiffre}"
    if @chiffre >= 5
    ajout

    elsif @chiffre == 1
    soustrait

    elsif @chiffre >= 2 && @chiffre <= 4 
    stay
  end
  return @chiffre
end

def finish
  puts "

|=========================|
|──Bravo! tu as atteints──|
|──la dernière marche !───|
|=========================|
───────▄▀▄─────▄▀▄
──────▄█░░▀▀▀▀▀░░█▄
──▄▄──█░░░░░░░░░░░█──▄▄
─█▄▄█─█░░▀░░┬░░▀░░█─█▄▄█
─▀██▀─▄███▄─▀██─██▀██▀▀█
──██─███─███─██─██─██▄█
──██─▀██▄██▀─▀█▄█▀─██▀█
─▄██▄▄█▀▀▀─────▀──▄██▄▄█
✿♥✿░ ░Y░O░U░ ░A░R░E░ ░✿♥✿
✿♥✿░B░E░A░U░T░I░F░U░L░✿♥✿ "
end

start