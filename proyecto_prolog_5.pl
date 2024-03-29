% RANDOM GENERATOR

useSEED(SEED,ROOF,V_OUT):-set_random(seed(SEED)), V_OUT is random(ROOF).

debugLIST(X,Y,L):-L = [X,Y].

% TDA: PERSONAJE
% FORMATO DEL TDA: [ID,POS_X,POS_Y]



% TDA: SCENE
% FORMATO DEL TDA: [ID,HEIGHT,WIDTH,[QALLY|[ALLY_LIST]]|[QENEMY|[ENEMY_LIST]]]

% CONSTRUCTOR:

newScene(I,H,W,[Q_ALLY|_],[Q_ENEMY|_],S_OUT):-[I,H,W,Q_ALLY,Q_ENEMY] = S_OUT.

% ESCENARIOS PRE-CONSTRUIDOS

newScene(1,5,10, [1,2],[2,[1,1,9], [2,1,10]],_).
newScene(2,5,10, [1,2],[4,[1,1,7], [2,1,8], [3,1,9], [4,1,10]],_).
newScene(3,5,10, [1,2],[5,[1,1,6], [2,1,7], [3,1,8], [4,1,9], [5,1,10]],_).
newScene(4,10,12,[1,2],[4,[1,1,9], [2,1,10],[3,1,11],[4,1,12]],_).
newScene(4,10,12,[1,2],[6,[1,1,7], [2,1,8], [3,1,9], [4,1,10],[5,1,11],[6,1,12]],_).
newScene(6,20,20,[1,2],[8,[1,1,13],[2,1,14],[3,1,15],[4,1,16],[5,1,17],[6,1,18],[7,1,19],[8,1,20]],_).

% PERTENENCIA:

isScene(S_IN):-length(S_IN,5).%, [I,H,W,A|E] = S_OUT, (number(I),I > 0),(number(H),H > 0),(number(W),W > 0),(number(A),A > 0),(number(E),E > 0).

% SELECTORES:

getID(ID,S_OUT):-[ID|_] = S_OUT.

getHEIGHT(H,S_OUT):-[_,H|_] = S_OUT.

getWIDTH(W,S_OUT):-[_,_,W|_] = S_OUT.

getALLY(A,S_OUT):-[_,_,_,A|_] = S_OUT.

getENEMY(E,S_OUT):-[_,_,_,_,E|_] = S_OUT.

getOBSTACLE(O,S_OUT):-[_,_,_,_,_|O] = S_OUT.

% MODIFICADORES:

modID(S_IN,ID,S_OUT):-[_|T] = S_IN, [ID|T] = S_OUT.

modHEIGHT(S_IN,HEIGHT,S_OUT):-[I,_|T] = S_IN, [I,HEIGHT|T] = S_OUT.

modWIDTH(S_IN,WIDTH,S_OUT):-[I,H,_|T] = S_IN, [I,H,WIDTH|T] = S_OUT.

modALLY(S_IN,ALLY,S_OUT):-[I,H,W,_|T] = S_IN, [I,H,W,ALLY|T] = S_OUT.

modENEMY(S_IN,ENEMY,S_OUT):-[I,H,W,A,_,O] = S_IN, [I,H,W,A,ENEMY,O] = S_OUT.

modOBSTACLE(S_IN,OBSTACLE,S_OUT):-[I,H,W,A,E,_] = S_IN, [I,H,W,A,E,OBSTACLE] = S_OUT.

createScene(H,W,Q_ENEMY,_,SEED,S_OUT):-(Q_ENEMY < W/2),useSEED(SEED,6,V_OUT),newScene(V_OUT,H,W,[12],[Q_ENEMY],S_OUT).



/* ESCENARIOS: */

/* IMPLEMENTAR FUNCION CREATE SCENE */

   /* D AFECTA LA CANTIDAD DE PERSONAJES DEL EQUIPO
      DEL JUGADOR Y LA POSICIÓN DE LOS OBSTACULOS */

   /* SEMILLA USADA PARA GENERAR VARIABLES SEUDO ALEATORIAS:
      -POSICION DE OBSTACULOS */

   /* CHEQUEAR SI ES POSIBLE DISPONER A TODOS LOS
      ENEMIGOS EN DICHO ESPACIO */

   /* DE NO SER POSIBLE, RETORNAR NULO */

/* CHECK SCENE */

   /* RECIBE TDA SCENE */

   /* CONSULTAR SI UN ESCENARIO ES VALIDO */

      /* DIMENSIONES VALIDAS */

      /* ENTIDADES VALIDAMENTE UBICADAS,
         SIN SUPERPOSICIÓN ENTRE ELLOS */ 

/* MOVE MEMBER */ 
 
   /* CONSULTA SI ES POSIBLE MOVER UN PERSONAJE
      DE CIERTO EQUIPO EN CIERTA DIRECCION */

   /* VERIFICAR EL DESPLAZAMIENTO, IZQUIERDA O DERECHA */

   /* ENTREGA RESULTADO DE MOVIMIENTO POR MEDIO DE VARIABLE SCENEOUT */

/* SHOOT */

   /* CONSULTA EL VALOR QUE DEBE TOMAR SCENEOUT
      PARA CORRESPONDER AL ESCENARIO TRAS UN DISPARO */

/* UPDATE SCENE */

   /* CONSULTA EL VALOR QUE DEBE TOMAR SCENEOUT
      PARA SER EL ESTADO DEL ESCENARIO AVANZADO UN TIC */

/* SCENE TO STRING */

   /* CONSULTA EL VALOR QUE DEBE TOMAR SCENESTR PARA QUE EL
      PREDICADO, A PARTIR DE SCENE, SEA VERDADERO */

   /* NO USAR PREDICADOS WRITE Y DISPLAY DENTRO DE SCENE TO STRING
      YA QUE LA VARIABLE SCENESTR DEBE SER UN STRING QUE LUEGO SEA
      USADO POR EL PREDICADO WRITE O DISPLAY */

   /* EL STRING DEBE SER IMPRESO POR DICHAS FUNCIONES */
