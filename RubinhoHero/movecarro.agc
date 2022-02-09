movecarro:

angle1= GetSpriteAngle (1)-8.1818079														//Ângulo de movimentação do carro pra cima
angle2= GetSpriteAngle (1)-12.85713															//Ângulo de movimentação do carro pra esquerda
angle4= GetSpriteAngle (1)-8.18181															//Ângulo de movimentação do carro pra baixo		
angle3= GetSpriteAngle (1)-6.9230779														//Ângulo de movimentação do carro pra direita


if GetSpriteY (1) >= 526 and GetSpriteX (1) < 1100 and GetSpriteX (1) > 145					//Movimentação da parte de baixo pra direita
carrox=GetSpriteX(1)+5
carroy=526
endif

if GetSpriteX(1) > 1050 and GetSpriteX (1) < 1100											//Movimentação do lado direito pra cima
carrox=1070
carroy=GetSpriteY(1)-5
endif

if GetSpriteX (1) > 1000 and GetSpriteX (1) < 1064	and GetSpriteY (1) = 526 			 	//Condição de Angulação do carro para cima
	SetSpriteAngle (1, angle1)		
endif

if GetSpriteY(1) < 198 and GetSpriteY (1) > 155												//Movimentação da parte de cima pra esquerda
carrox=GetSpriteX(1)-5
carroy=160
endif

if GetSpriteY (1) > 166 and GetSpriteY (1) < 230 and GetSpriteX (1) = 1070			 		//Condição de Angulação do carro para cima
	SetSpriteAngle (1, angle2)		
endif

if GetSpriteX(1) > 145 and GetSpriteX (1) < 190	and getspritey (1) < 526					//Movimentação do lado esquerdo pra baixo
carrox=146
carroy=GetSpriteY(1)+5
endif

if GetSpriteX (1) > 146 and GetSpriteX (1) < 240	and GetSpriteY (1) = 160 			 	//Condição de Angulação do carro para baixo
	SetSpriteAngle (1, angle4)	
endif

if GetSpriteY (1) > 465 and GetSpriteY (1) < 570	and GetSpriteX (1) = 146 			 	//Condição de Angulação do carro para a direita
	SetSpriteAngle (1, angle3)	
endif

SetSpritePosition(1,carrox,carroy)															//Movimentação do carro

return
