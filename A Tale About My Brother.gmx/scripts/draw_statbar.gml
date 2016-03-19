////draw_statbar(x1,y1,x2,y2,min,percent,max,col,length)
x1 = argument0;
y1 = argument1;
x2 = argument2;
y2 = argument3;
val_min = argument4;
val_percent = argument5;
val_max = argument6;
col = argument7;
length = argument8/100;
draw_set_color(col);
draw_rectangle(x1+1,y1+1,x2+val_percent*length,y2-1,0);
draw_set_color(c_white);
draw_rectangle_outline(x1,y1,x2+length*100,y2,3);
if (val_min != MP && val_min != XP) {
    draw_text(x1+((x2-x1)/4),y1-4,string(val_min) + "/" + string(val_max));
} else if (val_min != MP) {
    draw_text_transformed(x1+((x2-x1)/4),y1,string(val_min) + "/" + string(val_max),1 * (y2 - y1)/25,1 * (y2 - y1)/25,0);
}
