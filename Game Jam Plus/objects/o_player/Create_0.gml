


//evento Crear
// largo del salto de coyote
largo_salto_de_coyote = 4

//velocidad jugador
speed_player = 8


// estados los estados son increiblemente utiles para muchas cosas, especialmente animaciones varias
estado_idle = false;
estado_running = true;
estado_airborne = false;	

// salto
// el salto de coyote es una pequeña ventana de tiempo despues de dejar 
// de tocar el suelo en la cual aun se puede saltar
salto_de_coyote = false;

// puede saltar o no, sualmente depende si toca el suelo o estas pisando un gumpa
puede_saltar = true;

// esto es true solamente al comienzo del salto
jump_start = false;

// direcion en la que se mira 0 es iZquierda y 1 es derecha
mira_direccion = 1;

// esto evita que el sprite rote al moverse
phy_fixed_rotation = true;

//looking right
looking_right = true; 
looking_left = false;