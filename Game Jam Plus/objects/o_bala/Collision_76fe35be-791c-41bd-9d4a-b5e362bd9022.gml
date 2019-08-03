
if (choque == 0) && (bounce > 0){

vspeed = -vsp
vsp = vspeed
choque = 2
bounce--

}
else if (bounce <=0){
	instance_destroy()
}