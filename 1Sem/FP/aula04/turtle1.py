# This program uses the module turtle to draw "turtle graphics"
# For an introduction and examples, read
# https://runestone.academy/runestone/static/thinkcspy/PythonTurtle/toctree.html
# For a summary of the available methods:
# https://runestone.academy/runestone/books/published/thinkcspy/PythonTurtle/SummaryofTurtleMethods.html

import turtle               # allows us to use the turtles library

# Make turtle t draw a square with the given side length
def square(t, side):
    for n in range(4):
        t.forward(side)
        t.left(90)

# Make turtle t draw a spiral.
# The first side should have length = start, the second start+incr, etc.,
# until the length reaches length=end (exclusive).
def spiral(t, start, end, incr):
	t.speed(0)
	t.forward(start)
	for n in range (end):
		t.left(90)
		start=start+incr
		t.forward(start)		

def main():
    print("This program opens a window with a graphical user interface.")
    wn = turtle.Screen()        # creates a graphics window
    alex = turtle.Turtle()      # create a turtle named alex

    spiral(alex, 100, 1000, 10)

    turtle.exitonclick()        # wait for a button click, then close window
    print("The window was closed. Bye!")


main()
