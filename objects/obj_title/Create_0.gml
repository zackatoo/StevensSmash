/// @description Creates controller objects

// We will create MAX_PLAYERS + 1 controllers, one for each device and one for the keyboard
keybind = instance_create_depth(0, 0, 0, obj_keybind);

controllers[0] = instance_create_depth(0, 0, 0, obj_controller);
controllers[0].keybind = keybind;

for (var i = 1; i <= MAX_PLAYERS; i++)
{
	controllers[i] = instance_create_depth(0, 0, 0, obj_controller);
	controllers[i].keybind = keybind;
	controllers[i].gamepad = true;
	controllers[i].device = i - 1;
}