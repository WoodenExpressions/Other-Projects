////draw_rectangle_outline(x1,y1,x2,y2,width);
x1 = argument0;
y1 = argument1;
x2 = argument2;
y2 = argument3;
width = argument4;
draw_line(x1,y1-1,x2,y1-1);
draw_line(x1,y2+1,x2,y2+1);
draw_line_width(x1,y1,x2,y1,width); //Top
draw_line_width(x1,y1,x1,y2,width); //Left
draw_line_width(x2,y1,x2,y2,width); //Right
draw_line_width(x1,y2,x2,y2,width); //Bottom
