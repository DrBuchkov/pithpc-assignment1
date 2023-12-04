set size square
set key off
unset xtics
unset ytics
set xrange [-79:2960]
set yrange [-79:2960]
plot "colourmap.dat" w rgbimage, "velocity.dat" u 1:2:(80*0.75*$3/sqrt($3**2+$4**2)):(80*0.75*$4/sqrt($3**2+$4**2)) with vectors  lc rgb "#7F7F7F"