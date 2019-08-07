//permite que exista true random
randomize()

//esto determina el turno, 1 es turno del planeta 1 y 2 es el turno del planeta 2
global.turno = 0

//Esto especifica que planetas 
global.personaje_1 = 0
//1 es cucaracha y 2 es robot

global.personaje_2 = 0
//1 es humano y 2 es lagarto

//esto se vuelve true cuando se obtiene un item
activar_recibir_item = false

//esto crea una nave cuando no existe ninguna ni tampoco ninguna bala
if !instance_exists(o_nave_tienda) and !instance_exists(o_bala)
	{
	instance_create_depth(x+64,y+64,-50,o_nave_tienda)
	}
//Estados
Estado_win = false
Estado_turno = true
Estado_pasando_turno = false