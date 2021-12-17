clear all
set trace off

cd "D:/Programs/Dropbox/Dropbox/STATA - CLIPLINE"

*net d clipline, from("D:\Programs\Dropbox\Dropbox\STATA - CLIPLINE\installation")
*net install clipline, replace

help clipline



clear
set obs 100
// set seed 2021


// generate random lines
gen id = _n
gen x1 = runiform(1,50)
gen y1 = runiform(1,50)
gen x2 = runiform(1,50)
gen y2 = runiform(1,50)



clipline x1 y1 x2 y2, lines addbox

	twoway ///
		(pcspike y1 x1 y2 x2, lw(thin) lc(gs12)) ///
		(pcspike clip_y1 clip_x1 clip_y2 clip_x2, lw(thin)) ///
		(line box_y box_x, lc(black) lw(thin)) ///
			, legend(off) 


clipline x1 y1 x2 y2, box(5 35 10 40) offset(-0.1) lines addbox

	twoway ///
		(pcspike y1 x1 y2 x2, lw(thin) lc(gs12)) ///
		(pcspike clip_y1 clip_x1 clip_y2 clip_x2, lw(thin)) ///
		(line box_y box_x, lc(black) lw(thin)) ///
			, legend(off) 
		
