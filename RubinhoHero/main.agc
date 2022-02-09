SetVirtualResolution (1280, 720)
SetWindowSize (1280, 720, 0)

cond as integer
cond=0

jupite as integer

angle1 as float
angle2 as float
angle3 as float
angle4 as float

comeco as integer
comeco=0

start as integer
start=0

music as integer
music=0

music1 as integer
music1=0

music2 as integer
music2=0

teste1 as integer
teste2 as integer
teste3 as integer
teste4 as integer

acertos as integer
acertos=0

score as integer
score=0

setadireitaY as integer
setadireitaY = Random2(-300,199)

setabaixoY as integer
setabaixoY = Random2(-300,199)

setaesquerdaY as integer
setaesquerdaY = Random2(-300,199)

setacimaY as integer
setacimaY = Random2(-300,199)

i as integer

#include "movecarro2.agc"
#include "movesetas2.agc"
#include "matcharrows.agc"
#include "movecarro.agc"
#include "loader.agc"
#include "position.agc"
#include "movesetas.agc"
#include "fimjogo.agc"
#include "lose.agc"

gosub loader
gosub position

do
		CreateText (3, "Pressione Enter para Começar ")
		SetTextPosition(3, 295,160)
		settextsize (3, 40)
		SetTextDepth(3,0)
		SetTextColor (3, 0, 0, 0, 255)
		
		if GetRawKeyPressed (13)
			start=1
			comeco=1
		endif
			
			if comeco=1
				DeleteText (3)
			endif
				
			if cond=0
					if start=1
						UseNewDefaultFonts (1)
						SetTextPosition(1, 795,240)
						settextsize (1, 40)
						SetTextDepth(1,1)
						SetTextString(1, "Acertos: " + str(acertos))
						SetTextPosition(2, 795,310)
						settextsize (2, 40)
						SetTextDepth(2,1)
						SetTextString(2, "Erros: " + str(score))
						CreateText (4, " /145 ")
						SetTextPosition(4, 970,240)
						settextsize (4, 40)
						SetTextDepth(4,1)
						CreateText (5, " /15 ")
						SetTextPosition(5, 970,310)
						settextsize (5, 40)
						SetTextDepth(5,1)
						jupite = acertos - score
						SetTextPosition(10,0,0)
						settextsize (10, 50)
						SetTextDepth(10,1)
						SetTextString(10, "Score: " + str(jupite))	
					if music=0
						PlayMusic (1)
						music=1
					endif
					
					gosub matcharrows
					 
						if GetSeconds ()  < 30
							gosub movecarro
							gosub movesetas
						else
							gosub movecarro2
							gosub movesetas2
						endif
				endif
			endif	
				
				
	if acertos = 145
		UseNewDefaultFonts (0)
		DeleteAllSprites()
		DeleteMusic (1)
		deletealltext ()
		gosub fimjogo
			if music1=0
				PlayMusic (2)
				music1=1
			endif
		createtext (1, "Parabéns, graças a você o Rubinho venceu a corrida!") 
		SetTextPosition (1, 75, 10)
		SetTextSize (1, 35)
		cond=1
		
	 elseif score = 0958
			UseNewDefaultFonts (0)
			DeleteAllSprites()
			DeleteMusic (1)	
			deletealltext ()
				if music2=0
					PlayMusic (3)
					music2=1
				endif
			gosub lose
			createtext (2, "Que pena, você fez o rubinho perder a corrida!") 
			SetTextPosition (2, 110, 10)
			SetTextSize (2, 35)
			cond=1	
	endif
	
		sync ()
loop
