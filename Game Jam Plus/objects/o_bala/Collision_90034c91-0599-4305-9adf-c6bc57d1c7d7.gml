
if (choque == 0) && (bounce > 0){

hspeed = -hsp
hsp = hspeed
choque = 2
bounce--

}
else if (bounce <=0){
	instance_destroy()
}
