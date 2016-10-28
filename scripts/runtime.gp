reset
set ylabel 'time(msec)'
set style fill solid
set title 'perfomance comparison'
set term png enhanced font 'Verdana,10'
set output 'runtime.png'

plot [:][0:15000.0]'output.txt' using 2:xtic(1) with histogram title 'original', \
'' using ($0+0.00):($2+0.0535):2 with labels title ' ', \
'' using 3:xtic(1) with histogram title 'optimized'  , \
'' using ($0+0.25):($3-1.1250):3 with labels title ' ', 
