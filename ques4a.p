set terminal pdf
set output "ques4a.pdf"
set boxwidth 0.5
set style fill solid
set xlabel "Gender"
set ylabel "Number of People with Heart Disease"
set title "Gender vs Heart Disease"
set xtics ("Female" 0, "Male" 1)
plot "data1.dat" using 2:1 with boxes lc rgb "blue" notitle

