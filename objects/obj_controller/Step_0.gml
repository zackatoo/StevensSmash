/// @description Updates controls

if (active)
{
	if (gamepad)
	{
		// Update gamepad controls
		vert = -gamepad_axis_value(device, keybind.gamepad_vert);
		horz = gamepad_axis_value(device, keybind.gamepad_horz);
		
		pressUp = !pressUp && vert < 0;
		pressDown = !pressDown && vert > 0;
		pressLeft = !pressLeft && horz > 0;
		pressRight = !pressRight && horz < 0;
		
		pressPadUp = gamepad_button_check_pressed(device, keybind.gamepad_up);
		pressPadDown = gamepad_button_check_pressed(device, keybind.gamepad_down);
		pressPadLeft = gamepad_button_check_pressed(device, keybind.gamepad_left);
		pressPadRight = gamepad_button_check_pressed(device, keybind.gamepad_right);
		
		pressEscape = gamepad_button_check_pressed(device, keybind.gamepad_escape);
		pressEnter = gamepad_button_check_pressed(device, keybind.gamepad_enter);
		pressBack = gamepad_button_check_pressed(device, keybind.gamepad_back);
	}
	else
	{
		// Update keyboard controls
		pressUp = keyboard_check_pressed(keybind.keyboard_up);
		pressDown = keyboard_check_pressed(keybind.keyboard_down);
		pressLeft = keyboard_check_pressed(keybind.keyboard_left);
		pressRight = keyboard_check_pressed(keybind.keyboard_right);
		
		pressPadUp = keyboard_check_pressed(keybind.keyboard_pad_up);
		pressPadDown = keyboard_check_pressed(keybind.keyboard_pad_down);
		pressPadLeft = keyboard_check_pressed(keybind.keyboard_pad_left);
		pressPadRight = keyboard_check_pressed(keybind.keyboard_pad_right);
		
		pressEscape = keyboard_check_pressed(keybind.keyboard_escape);
		pressEnter = keyboard_check_pressed(keybind.keyboard_enter);
		pressBack = keyboard_check_pressed(keybind.keyboard_back);
		
		vert = keyboard_check(keybind.keyboard_down) - keyboard_check(keybind.keyboard_up);
		horz = keyboard_check(keybind.keyboard_left) - keyboard_check(keybind.keyboard_right);
	}
}