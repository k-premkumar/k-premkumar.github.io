#Setting the terminal
#set term post portrait enha 
#set term post portrait enha color "Times-Roman"  
#set terminal postscript enha eps color 22 
set terminal postscript eps color enhanced dashed dashlength 3.0 linewidth 1.0  butt "Helvetica" 24 
#set terminal postscript eps enhanced  "Helvetica" 24 
#set terminal latex 

#Telling under what name the plot has to be saved
set output "gnuplot_script_example.eps"

#set size square 
#set size ratio 0.75 

set yrange [1e-8:8.1]; 
#set yrange [0:1.3]; 
set xlabel "Time slot, {/Italics k}" font "Helvetica,24" 
set ylabel "Posterior probability, {/Symbol p}_{/Italics k}"   font "Helvetica,24"
#set format x "%.3g" 
set format y "10^{%T}" 
set logscale y
#set yrange [1e-3:1]
#set yrange [0.0001:1]
#set ylabel "Symbol error rate" "Times_Roman 28"
#set xtics nomirror 0,5,20
set xtics nomirror 0,40,180
set ytics nomirror 0,1e-2,3
set mxtics 1 
set mytics 1 


#set key  left bottom Left reverse title '{/Symbol r} = 0.99' box 3
set key right bottom Left samplen 5 spacing 1 width 0 reverse box lt 0 lw 1 
#set title "Distance vs Value"

set label 1 "                                  Threshold, {/Symbol G} = 0.9" at 0.05,1.5 font "Helvetica 20"
#set label 1 "                                  Threshold, {/Symbol G} = 0.99" at 0.05,1.02 font "Helvetica 20"
set grid xtics mxtics ytics mytics lt 0  lw 1 
#set nogrid
#set label 1 "{/SapfDingbats=20 \053}  (1,1) {/Symbol r} = 0.99" at 0.4,.001 font "Times_Roman 28"
#set label 2  "I_{OFF}=1nA" at 0.8,182
#set label 3  "I_{OFF}=100pA" at 5.2,135
#set label 4  "I_{OFF}=33pA" at 5,26
#set label 5  "I_{OFF}=10pA" at 0.8,46
#set label 17 "solid symbol  - set II" at -4,265 
#set label 18 "hollow symbol - set I" at -4,280 
#set label 4 "0.18{/Symbol m}m" at -0.085,150
#set label 5 "0.12{/Symbol m}m" at 0.033,25
#set label 6 "0.09{/Symbol m}m" at -0.045,50
#set label 7 "Towards Source" at -0.2,-29 font "Times_Roman 16"
#set label 8 "Towards Drain" at 0.1,-29 font "Times_Roman 16"
#set label 7 "Distance along the channel({/Symbol m}m)"at 0,-25 center font "Times_Roman 20"
#set label 7 '{/SapfDingbats=10 \275} -- right axis ' at 14,60
#set label 8 '{/ZapfDingbats=10 \156} -- left axis ' at 14,56
#set arrow 1 from 0,0 to 0,-37 nohead
#set arrow 2 from 0.005,-29 to 0.1,-29
#set arrow 3 from -0.005,-29 to -0.1,-29
set noparametric

#set logscale x
#plot  "sopa_21_100_100.dat" using ($1):($2) axes x1y1 title "SOPA 1" with linesp, "sopa_21_099_100.dat" using ($1):($2) axes x1y1 title "SOPA .99" with linesp, "sopa_21_095_100.dat" using ($1):($2) axes x1y1 title "SOPA .95" with linesp,"sopa_21_090_100.dat" using ($1):($2) axes x1y1 title "SOPA .9" with linesp, "stpa_21_100_100.dat" using ($1):($2) axes x1y1 title "STPA 1" with linesp, "stpa_21_099_100.dat" using ($1):($2) axes x1y1 title "STPA .99" with linesp, "stpa_21_095_100.dat" using ($1):($2) axes x1y1 title "StPA .95" with linesp,"stpa_21_090_100.dat" using ($1):($2) axes x1y1 title "STPA .9" with linesp
plot  \
     "../data/simulation_control_M.dat" every 5 using ($1):($2) axes x1y1 \
              title "Optimum M" with linesp lt 1 lw 4 pt 2 ps 1.5, \
     "../data/simulation_control_M_10.dat" every 5 using ($1):($2) axes x1y1 \
              title "M = 10" with linesp lt 3 lw 4 pt 4 ps 1.5,  \
     "../data/simulation_control_M_3.dat" every 5 using ($1):($2) axes x1y1 \
              title "M = 3" with linesp lt 7 lw 4 pt 6 ps 1.5,  \
     "../data/threshold.dat" using ($1):($2) axes x1y1 notitle  with line lt -1 lw 2
#, "sopa.dat" using ($1):($2) axes x1y1 title "SOPA .95" with linesp,"sopa.dat" using ($1):($2) axes x1y1 title "SOPA .9" with linesp, "sopa.dat" using ($1):($2) axes x1y1 title "STPA 1" with linesp, "sopa.dat" using ($1):($2) axes x1y1 title "STPA .99" with linesp, "sopa.dat" using ($1):($2) axes x1y1 title "StPA .95" with linesp,"sopa.dat" using ($1):($2) axes x1y1 title "STPA .9" with linesp
