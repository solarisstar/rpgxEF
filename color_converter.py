#! /usr/bin/python


while(True):
	print "Enter a color"
	color = raw_input()
	R = "0x" + color[0:2]
	G = "0x" + color[2:4]
	B = "0x" + color[4:6]
	r = float(int(R,0)) / 255.0
	g = float(int(G,0)) / 255.0
	b = float(int(B,0)) / 255.0
	print "{" + str(r) + "," + str(g) + "," + str(b) + "}" 