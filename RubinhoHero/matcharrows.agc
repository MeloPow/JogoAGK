matcharrows:

i = i + 1 // cima acerto
a = a + 1 // cima erro
l = l + 1 // esquerda acerto
b = b + 1 // esquerda erro
j = j + 1 // direita acerto
c = c + 1 // direita erro
n = n + 1 // baixo acerto
d = d + 1 // baixo erro

setspritephysicson(6,10)    //Ativa a fisica entre os sprites da seta direita                                                                                                    
setspritephysicson(3,7)     //Ativa a fisica entre os sprites da seta esquerda
setspritephysicson(4,8)     //Ativa a fisica entre os sprites da seta pra baixo
setspritephysicson(5,9)     //Ativa a fisica entre os sprites da seta pra cima
    
    if GetRawKeyPressed (37) and GetSpriteCollision(3,7) = 1			       //Condição de controle da seta esquerda
	    acertos=acertos+1
	    setspritecolor(7, 0, 255, 0, 200)        	  //Condição de cor vermelha da seta                
	    l = 0
	    teste1=1
    endif

    if l >= 20
	   loadsprite(3,"arrow1.png")
       setspritecolor(7, 255, 0, 0, 255)           //Condição de cor verde da seta
    endif
															
    if GetRawKeyPressed (37) = 1 and GetSpriteY(3) >= -1000 and GetSpriteY (3) < 370 and GetSpriteCollision(3,7) = 0 			// Quando o controle é apertado antes
		score = score + 1
		
		if retry=0
			SetMusicFileVolume (1, 0)
			PlayMusic (4)
			retry=1
		endif
			
		if retry=1
			SetMusicFileVolume (1, 100)
		endif
		
		setspritecolor(7, 255, 255, 255, 200)     //Condição que mantém a cor da seta 
		b = 0
    endif

    if b >= 10 and l >= 20
        setspritecolor(7, 255, 255, 255, 255)     //Condição que mantém a cor da seta 
    endif 

    if GetRawKeyPressed (40) and GetSpriteCollision(4,8) = 1                   //Condição de controle da seta pra baixo
	    acertos=acertos+1
	    setspritecolor(8, 0, 255, 0, 200)         //Condição de cor verde da seta  
	    n = 0
	    teste2=1
    endif

    if n >= 20
        setspritecolor(8, 255, 0, 0, 255)         //Condição de cor vermelha da seta
    endif

																															
    if GetRawKeyPressed (40) and GetSpriteY(4) >= -1000 and GetSpriteY (4) < 370 and GetSpriteCollision(4,8) = 0 				// Quando o controle é apertado antes
		score = score + 1
		setspritecolor(8, 255, 255, 255, 200)     //Condição que mantém a cor da seta 
		d = 0
    endif

    if n >= 20 and d >= 10
       setspritecolor(8, 255, 255, 255, 255)      //Condição que mantém a cor da seta 
    endif

    if GetRawKeyPressed (38) and GetSpriteCollision(5,9) = 1                  //Condição de controle da seta pra cima
	    acertos=acertos+1
	    setspritecolor(9, 0, 255, 0, 200)         //Condição de cor verde da seta  
	    i = 0
	    teste3=1
    endif

    if i >= 20
        setspritecolor(9, 255, 0, 0, 255)         //Condição de cor vermelha da seta
    endif
																												
    if GetRawKeyPressed (38) and GetSpriteY(5) >= -1000 and GetSpriteY (5) < 370 and GetSpriteCollision(5,9) = 0 				// Quando o controle é apertado antes
		score = score + 1
		setspritecolor(9, 255, 255, 255, 200)     //Condição que mantém a cor da seta 
		a = 0
    endif		
			
    if i >= 20 and a >= 10
        setspritecolor(9, 255, 255, 255, 255)     //Condição que mantém a cor da seta 
    endif


    if GetRawKeyPressed (39) and GetSpriteCollision(6,10) = 1				//Condição de controle da seta direita
	     acertos=acertos+1
	     setspritecolor(10, 0, 255, 0, 200)       //Condição de cor verde da seta  
	     j = 0
	     teste4=1
    endif
	
    if j >= 20
        setspritecolor(10, 255, 0, 0, 255)        //Condição de cor vermelha da seta
    endif
																															
    if GetRawKeyPressed (39) and GetSpriteY(6) >= -1000 and GetSpriteY (6) < 370 and GetSpriteCollision(6,10) = 0 				// Quando o controle é apertado antes
		score = score + 1
		setspritecolor(10, 255, 255, 255, 200)    //Condição que mantém a cor da seta 
		c = 0
    endif

if j >= 20 and c >= 10
    setspritecolor(10, 255, 255, 255, 255)        //Condição que mantém a cor da seta 
endif

 for ge = 0 to ge = acertos
		CreateText (1, ""+Str(ge))
		SetTextPosition(1, 795,240)				  //Contador de acertos
		settextsize (1, 40)
		SetTextDepth(1,1)
next

for gi = 0 to gi = score
    CreateText (2, "Erros: " +Str(gi))			  //Contador de erros
	SetTextPosition(2, 795,310)
	settextsize (2, 40)
	SetTextDepth(2,1)
next

return
