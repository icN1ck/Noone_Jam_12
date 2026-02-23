
if (keyboard_check_pressed(ord("L"))){
image_alpha = 1;
var _inst = instance_nearest(x,y,oMirror_Ida);
x = _inst.x;
y = _inst.y;
}

image_alpha = lerp(image_alpha,0,0.5);	