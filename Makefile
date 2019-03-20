all:
	../ispc/build/bin/ispc --target=avx2-i32x8 chi2.ispc -h chi2.h -o chi2.o
	clang++ allen_exercise_2.cpp chi2.o -std=c++11