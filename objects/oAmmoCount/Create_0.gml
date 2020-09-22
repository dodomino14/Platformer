//Find the height and width of the GUI
width = display_get_gui_width();
height = display_get_gui_height();

//Amount of blank space in between each bullet
bulletspacing = 30;

//initializes position for bullets in the GUI
xpos = width-bulletspacing;
ypos = 20;

//Creates a var used for iteration in the draw GUI event
iterator = 0;
