age40_50 = 50
age50_60 = 65
age60_70 = 32
age70_80 = 6

total = age40_50 + age50_60 + age60_70 + age70_80

set terminal png size 600,600
set output 'ques4d.png'
set size square
set xrange [-1.2:1.2]
set yrange [-1.2:1.2]

unset border
unset tics
unset key

color_age40_50 = "#CC0000"    
color_age50_60 = "#0033CC"    
color_age60_70 = "#009900"    
color_age70_80 = "#CCCC00"   

angle_1 = 360 * age40_50 / total
angle_2 = 360 * age50_60 / total
angle_3 = 360 * age60_70 / total
angle_4 = 360 * age70_80 / total

set object 1 circle at 0,0 size 1 fillcolor rgb color_age40_50 fillstyle solid 1.0 arc [0:angle_1]
set object 2 circle at 0,0 size 1 fillcolor rgb color_age50_60 fillstyle solid 1.0 arc [angle_1:(angle_1 + angle_2)]
set object 3 circle at 0,0 size 1 fillcolor rgb color_age60_70 fillstyle solid 1.0 arc [(angle_1 + angle_2):(angle_1 + angle_2 + angle_3)]
set object 4 circle at 0,0 size 1 fillcolor rgb color_age70_80 fillstyle solid 1.0 arc [(angle_1 + angle_2 + angle_3):(angle_1 + angle_2 + angle_3 + angle_4)]

set label 1 "40-50\n" . age40_50 at -0.8,0.9 tc rgb color_age40_50 font ",10"
set label 2 "50-60\n" . age50_60 at 0.8,0.9 tc rgb color_age50_60 font ",10"
set label 3 "60-70\n" . age60_70 at -1.0,-0.5 tc rgb color_age60_70 font ",10"
set label 4 "70-80\n" . age70_80 at 1.0,-0.5 tc rgb color_age70_80 font ",10"

plot NaN notitle
