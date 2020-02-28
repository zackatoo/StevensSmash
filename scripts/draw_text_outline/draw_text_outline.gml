//draw_text_outline(x, y, outline color, string color, string)  
var xx,yy;  
xx = argument[0];  
yy = argument[1];  
  
//Outline  
draw_set_color(argument[2]);  
draw_text(xx+1, yy+1, argument[4]);  
draw_text(xx-1, yy-1, argument[4]);  
draw_text(xx,   yy+1, argument[4]);  
draw_text(xx+1,   yy, argument[4]);  
draw_text(xx,   yy-1, argument[4]);  
draw_text(xx-1,   yy, argument[4]);  
draw_text(xx-1, yy+1, argument[4]);  
draw_text(xx+1, yy-1, argument[4]);  
  
//Text  
draw_set_color(argument[3]);  
draw_text(xx, yy, argument[4]); 