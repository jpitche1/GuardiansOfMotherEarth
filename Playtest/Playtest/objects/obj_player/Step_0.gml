image_speed = 0;

if(keyboard_check(ord("A")))
{
x += -move_speed;
image_xscale = 1;
sprite_index = spr_PlayerLeft
image_speed = 1.5;
}

if(keyboard_check(ord("D")))
{
x += move_speed;
image_xscale = -1;
sprite_index = spr_PlayerLeft
image_speed = 1.5;
}

if (keyboard_check(vk_space)) 
{
	if (can_jump and !instance_place(x, y - 1, obj_block)) 
	{
		vspeed = jump_height
		can_jump = false
	}
}

//GRAVITY
if (!instance_place(x, y + 1, obj_block)) 
{
	gravity = 0.5
}
else 
{
	gravity = 0
}

//LIMIT FALL SPEED
if (vspeed > 12) 
{
	vspeed = 12
}