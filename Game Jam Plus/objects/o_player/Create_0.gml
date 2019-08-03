

// velocidad de mario
speed_player = 8

// estados los estados son increiblemente utiles para muchas cosas, especialmente animaciones varias
estado_running = false

// la altura del salto de mario
altura_salto = 14


// salto
// el salto de diseño es una pequeña ventana de tiempo despues de dejar 
// de tocarel suelo en la cual aun se puede saltar, ayuda que se sienta bien
salto_de_disign = false;

// puede saltar o no, sualmente depende si toca el suelo o estas pisando un gumpa
puede_saltar = true;

// esto es true solamente al comienzo del salto
jump_start = false;

// direcion en la que se mira
looking_right = true; 
looking_left = false;

// esto evita que el sprite rote al moverse
phy_fixed_rotation = true 


/// se crean las cajas extra de colisiones
instance_create_depth(x,y,-50,o_player_colision_derecha)

instance_create_depth(x,y,-50,o_player_colision_izquierda)

instance_create_depth(x,y,-50,o_player_colision_arriba)

instance_create_depth(x,y,-50,o_player_colision_abajo)

