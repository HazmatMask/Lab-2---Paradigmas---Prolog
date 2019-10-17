% RANDOM GENERATOR

useSEED(SEED,FLOOR,ROOF,V_OUT):-set_random(seed(SEED)), V_OUT is (FLOOR+random(ROOF-FLOOR)).

debugLIST(X,Y,L):-L = [X,Y].

% BASE DE CONOCIMIENTO


% TDA: PERSONAJE
% FORMATO DEL TDA: [ID,POS_X,POS_Y]

% TDA: SCENE

% BASE DE CONOCIMIENTO

% DIFICULTAD: 1

scene(1,5,10,  [4,[1,1,1],[1,1,2],[1,1,3],[1,1,4]],   [2,[1,1,9], [1,1,10]]).
scene(2,5,10,  [4,[1,1,1],[1,1,2],[1,1,3],[1,1,4]],   [4,[1,1,7], [2,1,8],  [3,1,9], [4,1,10]]).
scene(3,5,10,  [4,[1,1,1],[1,1,2],[1,1,3],[1,1,4]],   [5,[1,1,6], [2,1,7],  [3,1,8], [4,1,9], [5,1,10]]).
scene(4,10,12,  [4,[1,1,1],[1,1,2],[1,1,3],[1,1,4]],   [4,[1,1,9], [2,1,10], [3,1,11],[4,1,12]]).
scene(5,10,12,  [4,[1,1,1],[1,1,2],[1,1,3],[1,1,4]],   [6,[1,1,7], [2,1,8],  [3,1,9], [4,1,10],[5,1,11],[6,1,12]]).
scene(6,20,20,  [4,[1,1,1],[1,1,2],[1,1,3],[1,1,4]],   [8,[1,1,13],[2,1,14], [3,1,15],[4,1,16],[5,1,17],[6,1,18],[7,1,19],[8,1,20]]).

% DIFICULTAD: 2

scene(1,5,10,  [3,[1,1,1],[1,1,2],[1,1,4]],   [2,[1,1,9], [1,1,10]]).
scene(2,5,10,  [3,[1,1,1],[1,1,2],[1,1,4]],   [4,[1,1,7], [2,1,8],  [3,1,9], [4,1,10]]).
scene(3,5,10,  [3,[1,1,1],[1,1,2],[1,1,4]],   [5,[1,1,6], [2,1,7],  [3,1,8], [4,1,9], [5,1,10]]).
scene(4,10,12,  [3,[1,1,1],[1,1,2],[1,1,4]],   [4,[1,1,9], [2,1,10], [3,1,11],[4,1,12]]).
scene(5,10,12,  [3,[1,1,1],[1,1,2],[1,1,4]],   [6,[1,1,7], [2,1,8],  [3,1,9], [4,1,10],[5,1,11],[6,1,12]]).
scene(6,20,20,  [3,[1,1,1],[1,1,2],[1,1,4]],   [8,[1,1,13],[2,1,14], [3,1,15],[4,1,16],[5,1,17],[6,1,18],[7,1,19],[8,1,20]]).

% DIFICULTAD: 3

scene(1,5,10,  [2,[1,1,1],[1,1,3]],   [2,[1,1,9], [1,1,10]]).
scene(2,5,10,  [2,[1,1,1],[1,1,3]],   [4,[1,1,7], [2,1,8],  [3,1,9], [4,1,10]]).
scene(3,5,10,  [2,[1,1,1],[1,1,3]],   [5,[1,1,6], [2,1,7],  [3,1,8], [4,1,9], [5,1,10]]).
scene(4,10,12,  [2,[1,1,1],[1,1,3]],   [4,[1,1,9], [2,1,10], [3,1,11],[4,1,12]]).
scene(5,10,12,  [2,[1,1,1],[1,1,3]],   [6,[1,1,7], [2,1,8],  [3,1,9], [4,1,10],[5,1,11],[6,1,12]]).
scene(6,20,20,  [2,[1,1,1],[1,1,3]],   [8,[1,1,13],[2,1,14], [3,1,15],[4,1,16],[5,1,17],[6,1,18],[7,1,19],[8,1,20]]).

% DIFICULTAD: 4

scene(1,5,10,  [1,[1,1,3]],   [2,[1,1,9], [1,1,10]]).
scene(2,5,10,  [1,[1,1,3]],   [4,[1,1,7], [2,1,8],  [3,1,9], [4,1,10]]).
scene(3,5,10,  [1,[1,1,3]],   [5,[1,1,6], [2,1,7],  [3,1,8], [4,1,9], [5,1,10]]).
scene(4,10,12,  [1,[1,1,3]],   [4,[1,1,9], [2,1,10], [3,1,11],[4,1,12]]).
scene(5,10,12,  [1,[1,1,3]],   [6,[1,1,7], [2,1,8],  [3,1,9], [4,1,10],[5,1,11],[6,1,12]]).
scene(6,20,20,  [1,[1,1,3]],   [8,[1,1,13],[2,1,14], [3,1,15],[4,1,16],[5,1,17],[6,1,18],[7,1,19],[8,1,20]]).

% FORMATO DEL TDA: [ID,HEIGHT,WIDTH,[QALLY|[ALLY_LIST]]|[QENEMY|[ENEMY_LIST]]]

% CONSTRUCTOR:

newScene(I,H,W,[Q_A|A_LIST],[Q_E|E_LIST],S_OUT):-scene(I,H,W,[Q_A|A_LIST],[Q_E|E_LIST]),S_OUT = [I,H,W,[Q_A|A_LIST],[Q_E|E_LIST]],!.

% PERTENENCIA:

isScene(S_IN):-length(S_IN,5), [I,H,W,_,[Q_E|E_L]] = S_IN,(number(I),I > 0),(number(H),H > 0),(number(W),W > 0),(number(Q_E),Q_E > 0,is_list(E_L),length(E_L,Q_E)).

% SELECTORES:

getID(ID,S_IN):-[ID|_] = S_IN.

getHEIGHT(H,S_IN):-[_|[H|_]] = S_IN.

getWIDTH(W,S_IN):-[_|[_|[W|_]]] = S_IN.

getALLY(A,S_IN):-[_|[_|[_|[A|_]]]] = S_IN.

getENEMYmodule(E,S_IN):-[_|[_|[_|[_|E]]]] = S_IN.

% MODIFICADORES:

modID(S_IN,ID,S_OUT):-[_|T] = S_IN, [ID|T] = S_OUT.

modHEIGHT(S_IN,HEIGHT,S_OUT):-[I,_|T] = S_IN, [I,HEIGHT|T] = S_OUT.

modWIDTH(S_IN,WIDTH,S_OUT):-[I,H,_|T] = S_IN, [I,H,WIDTH|T] = S_OUT.

modALLY(S_IN,ALLY,S_OUT):-[I,H,W,_|T] = S_IN, [I,H,W,ALLY|T] = S_OUT.

modENEMYmodule(S_IN,ENEMY,S_OUT):-[I,H,W,A,_] = S_IN, [I,H,W,A,ENEMY] = S_OUT.


createScene(_,_,_,_,SEED,S_OUT):-   number(SEED),useSEED(SEED,1,6,V_OUT),newScene(V_OUT,_,_,_,_,S_OUT),!.
createScene(_,_,A,D,_,S_OUT):-      number(D),A is 5-D,((D < 2,newScene(_,_,_,[4|_],_,S_OUT));(D > 3,newScene(_,_,_,[1|_],_,S_OUT));(newScene(_,_,_,[A|_],_,S_OUT))),!.
createScene(_,_,E,_,_,S_OUT):-      number(E),newScene(_,_,_,_,[E|_],S_OUT),!.
createScene(_,W,_,_,_,S_OUT):-      number(W),newScene(_,_,W,_,_,S_OUT),!.
createScene(H,_,_,_,_,S_OUT):-      number(H),newScene(_,H,_,_,_,S_OUT),!.


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
