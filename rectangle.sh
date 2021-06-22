#Morium Mostafa Momo
#10492778

# check whether the rectangle file exist

echo ""
if ! [ -f rectangle.txt ] ; then
	echo "rectangle.txt was not found."
	exit 0
else
#using sed command to process input file to formated output file 
	sed -e 's/[,]*[[:blank:]]\+/,/g'\
	    -e 's/Rec/Name:Rec/'    \
	     -e 's/[,]/\tHeight: /' \
	     -e	's/[,]/\tWidth: /'  \
	     -e	's/[,]/\tArea: /'   \
	     -e	's/[,]/\tColour: /' rectangle.txt > rectangle_f.txt # as this is continuous sed command so the comments are below
fi
# end if statement
echo ""
# line 11-replace (a comma and) single/multiple blank(s) with a comma: note using \+ is supported by sed
# line 12-insert Name
# line 13-insert Height
# line 14-insert Width
# line 15-insert Area
# line 16-insert Colour and generating formated output text file named as rectangle_f.txt