movesetas2:

    setspritephysicson(6,10)											//Cria a colisão da seta direita
    setspritephysicson(3,7)												//Cria a colisão da seta esquerda								
    setspritephysicson(4,8)												//Cria a colisão da seta pra baixo	
    setspritephysicson(5,9)												//Cria a colisão da seta pra cima

	SetSpriteSize (6, 55, -1)											//Posição da seta pra direita
	SetSpritePosition (6, 700, setadireitaY)
	setadireitay = getspriteY(6)+7

	if setadireitaY >= 500												//Condição de Renascimento da seta direita
		setadireitaY = Random2(-200,-100) + 50
		teste4=0
	endif 
		
	SetSpriteSize (5, -1, 55)											//Posição da seta pra cima
	SetSpritePosition (5, 620, setacimaY)
	setacimay = getspriteY(5)+7
	
	if setacimaY >= 500													//Condição de Renascimento da seta pra cima
		setacimaY = Random2(-500,-300) + 150
		teste3=0
	endif

	SetSpriteSize (4, -1, 55)											//Posição da seta pra baixo
	SetSpritePosition (4, 520, setabaixoY)

	setabaixoY = getspriteY(4)+7
		
	if setabaixoY >= 500												//Condição de Renascimento da seta pra baixo
		setabaixoY = Random2(-900,-600) + 250
		teste2=0		
	endif
		
	SetSpriteSize (3, 55, -1)											//Posição da seta esquerda
	SetSpritePosition (3, 400, setaesquerdaY)	
	setaesquerdaY = getspriteY(3)+7

	if setaesquerdaY >= 500												//Condição de Renascimento da seta esquerda
		setaesquerdaY = Random2(-1200,-1000) + 350
		teste1=0
	endif
	 
	if setabaixoY > 494 and setabaixoY < 500 and teste2=0				//Condição de erro seta pra baixo
		score=score+1
	endif
	
	if setacimaY > 494 and setacimaY < 500 and teste3=0					//Condição de erro seta pra cima
		score=score+1
	endif
	
	if setadireitaY > 494 and setadireitaY < 500 and teste4=0			//Condição de erro seta pra direita
		score=score+1
	endif
	
	if setaesquerdaY > 494 and setaesquerdaY < 500 and teste1=0			//Condição de erro seta pra esquerda
		score=score+1
	endif
	
return
