///effect_create( effectType, xPosition, yPosition, image_angle );

_e = instance_create_layer(argument1,argument2,"Game",obj_flame);
_e.effectType = argument0;
_e.image_angle = argument3;

return _e;