
if (planeta == 1)
{
	var p = o_planeta_1;
};
else if (planeta == 2)
{
	var p = o_planeta_2;
};

// NOTA:  Recordar que la capa de creacion afecta si las
// cosas aparecen encima o debajo del planeta y otros objetos.
instance_create_depth(p.x, p.y, 111, o_m1_bomb);
instance_destroy();
