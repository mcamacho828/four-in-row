require 'colorize'
puts "-----------**------------".yellow
puts "Bienvenido al juego 4 en 1 ".yellow
puts "-----------**------------".yellow
puts ""
#parte 0



#parte 1
def  board()
# para crear la tabla vacia / for dentro de un for que me imprimna cada [] vacia 
board=[]
	for i in (0..5) 
		board[i] = []
		for j in (0..5) 
			board[i][j] = " [ ] "
		end
	end 	
	board #retorno
end 


#parte2
def paint(board)

	puts "------------TABLERO------------".blue
	puts ""
	puts "   1    2    3 	  4    5    6"
	for i in (0..5)            
		line= " "
		for j in (0..5)
			line = line + board[i][j].to_s.green
		end
	puts line 
	end
	puts "------------TABLERO------------".blue
end

#parte3
def play(board,game)

	valid = false
	valid2 = false
	while (!valid2)
		puts " ingrese la columna"
		opc1 = gets.chomp.to_i-1
			i=5
			while (!valid)
				if (board[i][opc1] == " [ ] ")
					board[i][opc1] = game
					valid2 = true
					valid = true
					else
					i=i-1
				end
				if (i < 0)
					puts "ingrese otra columna"
					valid=true				
				end    
			end	
	end
end

def play2(board,game2)
	valid = false
	valid2 = false
	while (!valid2)
		puts " ingrese el game"
		opc1 = gets.chomp.to_i-1
			i=5
			while (!valid)
				if (board[i][opc1] == " [ ] ")
					board[i][opc1] = game2
					valid2 = true
					valid = true
					else
					i=i-1
				end
				if (i < 0)
					puts "ingrese otra columna"
					valid=true
				end
			end	
	end
end 

def vertic(board,game)
	for	i in (0..board.length-1)
		w=0
		for j in (0..board.length-1)
			if (board[j][i] == game)
				w=w+1
				else
				w=0
			end
			if (w==4)
				return true
			end
		end
	end
	return false
end
   

def vertic(board,game2)
	for	i in (0..board.length-1)
		w=0
		for j in (0..board.length-1)
			if (board[j][i] == game2)
				w=w+1
				else
				w=0
			end
			if (w==4)
				return true
			end
		end
	end
	return false
end              

def horizont(board,game)
	for	i in (0..board.length-1)
		w=0
		for j in (0..board.length-1)
			if (board[i][j] == game)
				w=w+1
				else
				w=0
			end
			if (w==4)
				return true
			end
		end
	end
	return false
end

def horizont(board,game2)
	for	i in (0..board.length-1)
		w=0
		for j in (0..board.length-1)
			if (board[i][j] == game2)
				w=w+1
				else
				w=0
			end
			if (w==4)
				return true
			end
		end
	end
	return false
end

def diagonal(board,game)
stop = false
	for i in 0..board.length-1
		guard=i
		for j in 0..board.length-1
			c=0
			while (i < board.length && j < board.length && i >= 0 && j >=  0)
				
					if (board[i][j] == game)
						c = c + 1
						j = j + 1
						i = i + 1
					else
						j = j + 1
						i = i + 1
						c = 0		
					end
						if (c == 4)
							stop=true
							return true
							
						end
			end
			i=guard
		end
	end
	return false
end

def diagonal(board,game2)
stop = false
	for i in 0..board.length-1
		guard=i
		for j in 0..board.length-1
			c=0
			while (i < board.length && j < board.length && i >= 0 && j >=  0)
					if (board[i][j] == game2)
						c = c + 1
						j = j + 1
						i = i + 1
					else
						j = j + 1
						i = i + 1
						c = 0		
					end
						if (c == 4)
							stop=true
							return true
						end
			end
			i=guard
		end
	end
	return false
end


def diagonal1(board,game)
stop = false
	for i in 0..board.length-1
		guard=i
		for j in 0..board.length-1
			c=0
			while (i < board.length && j < board.length && i >= 0 && j >=  0)
				
					if (board[i][j] == game)
						c = c + 1
						j = j + 1
						i = i - 1
					else
						j = j + 1
						i = i - 1
						c = 0		
					end
						if (c == 4)
							stop=true
							return true
						end
			end
			i=guard
		end
	end
	return false
end

def diagonal1(board,game2)
stop = false
	for i in 0..board.length-1
		guard=i	
		for j in 0..board.length-1
			c=0

			while (i < board.length && j < board.length && i >= 0 && j >=  0)
					if (board[i][j] == game2)
						c = c + 1
						j = j + 1
						i = i - 1
					else
						j = j + 1
						i = i - 1
						c = 0		
					end
						if (c == 4)
							stop=true
							return true
						end
			end
			i=guard
		end
	end
	return false
end

def keepplay(board)
	for i in 0..board.length-1
		for j in 0..board.length-1
			if (board[i][j] == " [ ] ")
				return true
			end
		end
	end
	return false
end

def main()
game = " [x] "
game2 = " [o] "

	puts "ingrese el nombre del jugador N*1"
	player1 = gets.chomp
	player1 = player1.to_s
	puts ""

	puts "ingrese el nombre del jugador N*2"
	player2 = gets.chomp
	player2 = player2.to_s
	puts ""

board = board()
paint(board)
stop = false
	while (!stop)
		play(board,game)
		paint(board)

		if ( horizont(board,game) ||  vertic(board,game) || diagonal(board,game) || diagonal1(board,game) )
			puts "Ganaste jugador,  #{player1}"
			stop = true
			break
		end 
		
		play(board,game2)
		paint(board)

		if ( horizont(board,game2) || vertic(board,game2) || diagonal(board,game2) || diagonal1(board,game2)  )
			puts "Ganaste jugador,  #{player2}"
			stop = true
		end

		if (keepplay(board) == false)
			puts "empate"
			valid=true
			stop=true
		end
	end
end
main()
