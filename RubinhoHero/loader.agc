loader:

	LoadImage (11, "planodefundo.jpg")						//Plano de Fundo
	CreateSprite (11,11)
	SetSpriteDepth (11, 4)

	LoadImage (2, "pista6a.png")							// Pista
	CreateSprite(2,2)
	setspritedepth(2,1)

	LoadImage (1, "carro5.png")								// Carro
	createsprite(1,1)
	SetSpriteDepth(1,0)

	LoadImage (3, "arrow1.png")	
	CreateSprite (3, 3)										//Seta esquerda
	SetSpriteDepth(3,3)

	LoadImage (4, "arrow2.png")								//Seta pra baixo
	createsprite (4,4)
	SetSpriteDepth(4,3)

	LoadImage (5, "arrow3.png")								//Seta pra cima
	createsprite (5,5)
	SetSpriteDepth(5,3)

	LoadImage (6, "arrow4.png")								//Seta pra direita
	createsprite (6,6)
	SetSpriteDepth(6,3)

	LoadImage (7, "arrowe1.png")							//Seta de baixo pra esquerda
	createsprite (7,7)
	SetSpriteDepth(7,3)

	LoadImage (8, "arrowe2.png")							//Seta de baixo pra baixo
	createsprite (8,8)
	SetSpriteDepth(8,3)

	LoadImage (9, "arrowe3.png")							//Seta de baixo pra cima
	createsprite (9,9)
	SetSpriteDepth(9,3)

	LoadImage (10, "arrowe4.png")							//Seta de baixo pra direita
	createsprite (10,10)
	SetSpriteDepth(10,3)

	LoadMusic (1, "musica.mp3")								//Música durante o jogo
	LoadMusic (2, "temavitoria.mp3")						//Música da Vitória
	LoadMusic (3, "musicatriste.mp3")						//Música da derrota

return
