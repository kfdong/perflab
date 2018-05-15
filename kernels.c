/********************************************************
 * Kernels to be optimized for the CS:APP Performance Lab
 ********************************************************/

#include <stdio.h>
#include <stdlib.h>
#include "defs.h"

/* 
 * Please fill in the following team struct 
 */
team_t team = {
    "longlivezhangzj",              /* Team name */

    "Kefan Dong",     /* First member full name */
    "kefandong@gmail.com",  /* First member email address */

    "",                   /* Second member full name (leave blank if none) */
    ""                    /* Second member email addr (leave blank if none) */
};

/***************
 * ROTATE KERNEL
 ***************/

/******************************************************
 * Your different versions of the rotate kernel go here
 ******************************************************/

/* 
 * naive_rotate - The naive baseline version of rotate 
 */
char naive_rotate_descr[] = "naive_rotate: Naive baseline implementation";
void naive_rotate(int dim, pixel *src, pixel *dst) 
{
    int i, j;

    for (i = 0; i < dim; i++)
	for (j = 0; j < dim; j++)
	    dst[RIDX(dim-1-j, i, dim)] = src[RIDX(i, j, dim)];
}

/* 
 * rotate - Your current working version of rotate
 * IMPORTANT: This is the version you will be graded on
 */
char rotate_descr[] = "rotate: Current working version";

int gcd(int a, int b) { return b == 0 ? a : gcd(b, a % b); }
void rotate(int dim, pixel *src, pixel *dst) 
{
	int i, j;
    for (i = 0; i < dim; i += 16) 
	for (j = 0; j < dim; j++) {
		dst[RIDX(dim-1-j, i + 0, dim)] = src[RIDX(i + 0, j, dim)];
		dst[RIDX(dim-1-j, i + 1, dim)] = src[RIDX(i + 1, j, dim)];
		dst[RIDX(dim-1-j, i + 2, dim)] = src[RIDX(i + 2, j, dim)];
		dst[RIDX(dim-1-j, i + 3, dim)] = src[RIDX(i + 3, j, dim)];
		dst[RIDX(dim-1-j, i + 4, dim)] = src[RIDX(i + 4, j, dim)];
		dst[RIDX(dim-1-j, i + 5, dim)] = src[RIDX(i + 5, j, dim)];
		dst[RIDX(dim-1-j, i + 6, dim)] = src[RIDX(i + 6, j, dim)];
		dst[RIDX(dim-1-j, i + 7, dim)] = src[RIDX(i + 7, j, dim)];
		dst[RIDX(dim-1-j, i + 8, dim)] = src[RIDX(i + 8, j, dim)];
		dst[RIDX(dim-1-j, i + 9, dim)] = src[RIDX(i + 9, j, dim)];
		dst[RIDX(dim-1-j, i + 10, dim)] = src[RIDX(i + 10, j, dim)];
		dst[RIDX(dim-1-j, i + 11, dim)] = src[RIDX(i + 11, j, dim)];
		dst[RIDX(dim-1-j, i + 12, dim)] = src[RIDX(i + 12, j, dim)];
		dst[RIDX(dim-1-j, i + 13, dim)] = src[RIDX(i + 13, j, dim)];
		dst[RIDX(dim-1-j, i + 14, dim)] = src[RIDX(i + 14, j, dim)];
		dst[RIDX(dim-1-j, i + 15, dim)] = src[RIDX(i + 15, j, dim)];
	}
	/*
	int szi = gcd(32, dim), szj = gcd(64, dim);
	if (dim == 1024) szi = 16;
    int i, j, bi, bj;

	if (szi == 32) {
	for (bj = 0; bj < dim; bj += szj)
	for (bi = 0; bi < dim; bi += szi)
	for (j = bj; j < bj + szj; j++) 
	{
		i=bi;
		dst[RIDX(dim-1-j, i + 0, dim)] = src[RIDX(i + 0, j, dim)];
		dst[RIDX(dim-1-j, i + 1, dim)] = src[RIDX(i + 1, j, dim)];
		dst[RIDX(dim-1-j, i + 2, dim)] = src[RIDX(i + 2, j, dim)];
		dst[RIDX(dim-1-j, i + 3, dim)] = src[RIDX(i + 3, j, dim)];
		dst[RIDX(dim-1-j, i + 4, dim)] = src[RIDX(i + 4, j, dim)];
		dst[RIDX(dim-1-j, i + 5, dim)] = src[RIDX(i + 5, j, dim)];
		dst[RIDX(dim-1-j, i + 6, dim)] = src[RIDX(i + 6, j, dim)];
		dst[RIDX(dim-1-j, i + 7, dim)] = src[RIDX(i + 7, j, dim)];
		dst[RIDX(dim-1-j, i + 8, dim)] = src[RIDX(i + 8, j, dim)];
		dst[RIDX(dim-1-j, i + 9, dim)] = src[RIDX(i + 9, j, dim)];
		dst[RIDX(dim-1-j, i + 10, dim)] = src[RIDX(i + 10, j, dim)];
		dst[RIDX(dim-1-j, i + 11, dim)] = src[RIDX(i + 11, j, dim)];
		dst[RIDX(dim-1-j, i + 12, dim)] = src[RIDX(i + 12, j, dim)];
		dst[RIDX(dim-1-j, i + 13, dim)] = src[RIDX(i + 13, j, dim)];
		dst[RIDX(dim-1-j, i + 14, dim)] = src[RIDX(i + 14, j, dim)];
		dst[RIDX(dim-1-j, i + 15, dim)] = src[RIDX(i + 15, j, dim)];
		dst[RIDX(dim-1-j, i + 16, dim)] = src[RIDX(i + 16, j, dim)];
		dst[RIDX(dim-1-j, i + 17, dim)] = src[RIDX(i + 17, j, dim)];
		dst[RIDX(dim-1-j, i + 18, dim)] = src[RIDX(i + 18, j, dim)];
		dst[RIDX(dim-1-j, i + 19, dim)] = src[RIDX(i + 19, j, dim)];
		dst[RIDX(dim-1-j, i + 20, dim)] = src[RIDX(i + 20, j, dim)];
		dst[RIDX(dim-1-j, i + 21, dim)] = src[RIDX(i + 21, j, dim)];
		dst[RIDX(dim-1-j, i + 22, dim)] = src[RIDX(i + 22, j, dim)];
		dst[RIDX(dim-1-j, i + 23, dim)] = src[RIDX(i + 23, j, dim)];
		dst[RIDX(dim-1-j, i + 24, dim)] = src[RIDX(i + 24, j, dim)];
		dst[RIDX(dim-1-j, i + 25, dim)] = src[RIDX(i + 25, j, dim)];
		dst[RIDX(dim-1-j, i + 26, dim)] = src[RIDX(i + 26, j, dim)];
		dst[RIDX(dim-1-j, i + 27, dim)] = src[RIDX(i + 27, j, dim)];
		dst[RIDX(dim-1-j, i + 28, dim)] = src[RIDX(i + 28, j, dim)];
		dst[RIDX(dim-1-j, i + 29, dim)] = src[RIDX(i + 29, j, dim)];
		dst[RIDX(dim-1-j, i + 30, dim)] = src[RIDX(i + 30, j, dim)];
		dst[RIDX(dim-1-j, i + 31, dim)] = src[RIDX(i + 31, j, dim)];
	}
	} else {
	for (bj = 0; bj < dim; bj += szj)
	for (bi = 0; bi < dim; bi += szi)
	for (j = bj; j < bj + szj; j++) 
	{
		i=bi;
		dst[RIDX(dim-1-j, i + 0, dim)] = src[RIDX(i + 0, j, dim)];
		dst[RIDX(dim-1-j, i + 1, dim)] = src[RIDX(i + 1, j, dim)];
		dst[RIDX(dim-1-j, i + 2, dim)] = src[RIDX(i + 2, j, dim)];
		dst[RIDX(dim-1-j, i + 3, dim)] = src[RIDX(i + 3, j, dim)];
		dst[RIDX(dim-1-j, i + 4, dim)] = src[RIDX(i + 4, j, dim)];
		dst[RIDX(dim-1-j, i + 5, dim)] = src[RIDX(i + 5, j, dim)];
		dst[RIDX(dim-1-j, i + 6, dim)] = src[RIDX(i + 6, j, dim)];
		dst[RIDX(dim-1-j, i + 7, dim)] = src[RIDX(i + 7, j, dim)];
		dst[RIDX(dim-1-j, i + 8, dim)] = src[RIDX(i + 8, j, dim)];
		dst[RIDX(dim-1-j, i + 9, dim)] = src[RIDX(i + 9, j, dim)];
		dst[RIDX(dim-1-j, i + 10, dim)] = src[RIDX(i + 10, j, dim)];
		dst[RIDX(dim-1-j, i + 11, dim)] = src[RIDX(i + 11, j, dim)];
		dst[RIDX(dim-1-j, i + 12, dim)] = src[RIDX(i + 12, j, dim)];
		dst[RIDX(dim-1-j, i + 13, dim)] = src[RIDX(i + 13, j, dim)];
		dst[RIDX(dim-1-j, i + 14, dim)] = src[RIDX(i + 14, j, dim)];
		dst[RIDX(dim-1-j, i + 15, dim)] = src[RIDX(i + 15, j, dim)];
	}
	}*/
}

/*********************************************************************
 * register_rotate_functions - Register all of your different versions
 *     of the rotate kernel with the driver by calling the
 *     add_rotate_function() for each test function. When you run the
 *     driver program, it will test and report the performance of each
 *     registered test function.  
 *********************************************************************/

void register_rotate_functions() 
{
    add_rotate_function(&naive_rotate, naive_rotate_descr);   
    add_rotate_function(&rotate, rotate_descr);   
    /* ... Register additional test functions here */
}


/***************
 * SMOOTH KERNEL
 **************/

/***************************************************************
 * Various typedefs and helper functions for the smooth function
 * You may modify these any way you like.
 **************************************************************/

/* A struct used to compute averaged pixel value */
typedef struct {
    int red;
    int green;
    int blue;
    int num;
} pixel_sum;

/* Compute min and max of two integers, respectively */
static int min(int a, int b) { return (a < b ? a : b); }
static int max(int a, int b) { return (a > b ? a : b); }

/* 
 * initialize_pixel_sum - Initializes all fields of sum to 0 
 */
static void initialize_pixel_sum(pixel_sum *sum) 
{
    sum->red = sum->green = sum->blue = 0;
    sum->num = 0;
    return;
}

/* 
 * accumulate_sum - Accumulates field values of p in corresponding 
 * fields of sum 
 */
static void accumulate_sum(pixel_sum *sum, pixel p) 
{
    sum->red += (int) p.red;
    sum->green += (int) p.green;
    sum->blue += (int) p.blue;
    sum->num++;
    return;
}

/* 
 * assign_sum_to_pixel - Computes averaged pixel value in current_pixel 
 */
static void assign_sum_to_pixel(pixel *current_pixel, pixel_sum sum) 
{
    current_pixel->red = (unsigned short) (sum.red/sum.num);
    current_pixel->green = (unsigned short) (sum.green/sum.num);
    current_pixel->blue = (unsigned short) (sum.blue/sum.num);
    return;
}

/* 
 * avg - Returns averaged pixel value at (i,j) 
 */
static pixel avg(int dim, int i, int j, pixel *src) 
{
    int ii, jj;
    pixel_sum sum;
    pixel current_pixel;

    initialize_pixel_sum(&sum);
    for(ii = max(i-1, 0); ii <= min(i+1, dim-1); ii++) 
	for(jj = max(j-1, 0); jj <= min(j+1, dim-1); jj++) 
	    accumulate_sum(&sum, src[RIDX(ii, jj, dim)]);

    assign_sum_to_pixel(&current_pixel, sum);
    return current_pixel;
}

/******************************************************
 * Your different versions of the smooth kernel go here
 ******************************************************/

/*
 * naive_smooth - The naive baseline version of smooth 
 */
char naive_smooth_descr[] = "naive_smooth: Naive baseline implementation";
void naive_smooth(int dim, pixel *src, pixel *dst)
{
	int i, j;
	for (i = 0; i < dim; i++)
	for (j = 0; j < dim; j++)
		dst[RIDX(i, j, dim)] = avg(dim, i, j, src);
}

/*
 * smooth - Your current working version of smooth. 
 * IMPORTANT: This is the version you will be graded on
 */
char smooth_descr[] = "smooth: Current working version";
void smooth(int dim, pixel *src, pixel *dst) 
{
    int i, j;
	/*
	 * this version speeds up to 36.9 
	 *
	unsigned int tmpr1, tmpb1, tmpg1;
	unsigned int tmpr2, tmpb2, tmpg2;
	unsigned int tmpr3, tmpb3, tmpg3;
	unsigned int tmpr4, tmpb4, tmpg4;

    for (i = 0; i < dim; i += 2) {
		tmpr1 = src[RIDX(i, 0, dim)].red + src[RIDX(i, 1, dim)].red + src[RIDX(i, 2, dim)].red;
		tmpb1 = src[RIDX(i, 0, dim)].blue + src[RIDX(i, 1, dim)].blue + src[RIDX(i, 2, dim)].blue;
		tmpg1 = src[RIDX(i, 0, dim)].green + src[RIDX(i, 1, dim)].green + src[RIDX(i, 2, dim)].green;
		tmpr2 = src[RIDX(i + 1, 0, dim)].red + src[RIDX(i + 1, 1, dim)].red + src[RIDX(i + 1, 2, dim)].red;
		tmpb2 = src[RIDX(i + 1, 0, dim)].blue + src[RIDX(i + 1, 1, dim)].blue + src[RIDX(i + 1, 2, dim)].blue;
		tmpg2 = src[RIDX(i + 1, 0, dim)].green + src[RIDX(i + 1, 1, dim)].green + src[RIDX(i + 1, 2, dim)].green;
		tmpr3 = src[RIDX(i + 2, 0, dim)].red + src[RIDX(i + 2, 1, dim)].red + src[RIDX(i + 2, 2, dim)].red;
		tmpb3 = src[RIDX(i + 2, 0, dim)].blue + src[RIDX(i + 2, 1, dim)].blue + src[RIDX(i + 2, 2, dim)].blue;
		tmpg3 = src[RIDX(i + 2, 0, dim)].green + src[RIDX(i + 2, 1, dim)].green + src[RIDX(i + 2, 2, dim)].green;
		tmpr4 = src[RIDX(i + 3, 0, dim)].red + src[RIDX(i + 3, 1, dim)].red + src[RIDX(i + 3, 2, dim)].red;
		tmpb4 = src[RIDX(i + 3, 0, dim)].blue + src[RIDX(i + 3, 1, dim)].blue + src[RIDX(i + 3, 2, dim)].blue;
		tmpg4 = src[RIDX(i + 3, 0, dim)].green + src[RIDX(i + 3, 1, dim)].green + src[RIDX(i + 3, 2, dim)].green;
		for (j = 1; j < dim; ++j) {
			if (i + 1 < dim) {
				dst[RIDX(i + 1, j, dim)].red = (tmpr1 + tmpr2 + tmpr3) / 9;
				dst[RIDX(i + 1, j, dim)].blue = (tmpb1 + tmpb2 + tmpb3) / 9;
				dst[RIDX(i + 1, j, dim)].green = (tmpg1 + tmpg2 + tmpg3) / 9;
			}
			if (i + 2 < dim) {
				dst[RIDX(i + 2, j, dim)].red = (tmpr2 + tmpr3 + tmpr4) / 9;
				dst[RIDX(i + 2, j, dim)].blue = (tmpb2 + tmpb3 + tmpb4) / 9;
				dst[RIDX(i + 2, j, dim)].green = (tmpg2 + tmpg3 + tmpg4) / 9;
			}

			tmpr1 += src[RIDX(i, j + 2, dim)].red - src[RIDX(i, j - 1, dim)].red;
			tmpb1 += src[RIDX(i, j + 2, dim)].blue - src[RIDX(i, j - 1, dim)].blue;
			tmpg1 += src[RIDX(i, j + 2, dim)].green - src[RIDX(i, j - 1, dim)].green;
			tmpr2 += src[RIDX(i + 1, j + 2, dim)].red - src[RIDX(i + 1, j - 1, dim)].red;
			tmpb2 += src[RIDX(i + 1, j + 2, dim)].blue - src[RIDX(i + 1, j - 1, dim)].blue;
			tmpg2 += src[RIDX(i + 1, j + 2, dim)].green - src[RIDX(i + 1, j - 1, dim)].green;
			tmpr3 += src[RIDX(i + 2, j + 2, dim)].red - src[RIDX(i + 2, j - 1, dim)].red;
			tmpb3 += src[RIDX(i + 2, j + 2, dim)].blue - src[RIDX(i + 2, j - 1, dim)].blue;
			tmpg3 += src[RIDX(i + 2, j + 2, dim)].green - src[RIDX(i + 2, j - 1, dim)].green;
			tmpr4 += src[RIDX(i + 3, j + 2, dim)].red - src[RIDX(i + 3, j - 1, dim)].red;
			tmpb4 += src[RIDX(i + 3, j + 2, dim)].blue - src[RIDX(i + 3, j - 1, dim)].blue;
			tmpg4 += src[RIDX(i + 3, j + 2, dim)].green - src[RIDX(i + 3, j - 1, dim)].green;
		}
	}
	*/


	/*
	 * this version speeds up to 39.3
	 * 
#define steps 16
	unsigned int tmp[(steps + 2) * 3 + 3];
	register unsigned int sumr, sumg, sumb;
	int k;

    for (i = 0; i < dim; i += steps) {
		for (k = 0; k < steps + 2; ++k) {
			tmp[k * 3 + 0] = src[RIDX(i + k, 0, dim)].red + src[RIDX(i + k, 1, dim)].red + src[RIDX(i + k, 2, dim)].red;
			tmp[k * 3 + 1] = src[RIDX(i + k, 0, dim)].green + src[RIDX(i + k, 1, dim)].green + src[RIDX(i + k, 2, dim)].green;
			tmp[k * 3 + 2] = src[RIDX(i + k, 0, dim)].blue + src[RIDX(i + k, 1, dim)].blue + src[RIDX(i + k, 2, dim)].blue;
		}
		for (j = 1; j < dim; ++j) {
			sumr = tmp[0 * 3 + 0] + tmp[1 * 3 + 0] + tmp[2 * 3 + 0];
			sumg = tmp[0 * 3 + 1] + tmp[1 * 3 + 1] + tmp[2 * 3 + 1];
			sumb = tmp[0 * 3 + 2] + tmp[1 * 3 + 2] + tmp[2 * 3 + 2];
			for (k = 0; k < steps; ++k) if (i + k + 1 < dim) {
				dst[RIDX(i + k + 1, j, dim)].red = sumr / 9;
				sumr += tmp[(k + 3) * 3 + 0] - tmp[k * 3 + 0];
				dst[RIDX(i + k + 1, j, dim)].green = sumg / 9;
				sumg += tmp[(k + 3) * 3 + 1] - tmp[k * 3 + 1];
				dst[RIDX(i + k + 1, j, dim)].blue = sumb / 9;
				sumb += tmp[(k + 3) * 3 + 2] - tmp[k * 3 + 2];
			}
			for (k = 0; k < steps + 2; ++k) {
				tmp[k * 3 + 0] += src[RIDX(i + k, j + 2, dim)].red - src[RIDX(i + k, j - 1, dim)].red;
				tmp[k * 3 + 1] += src[RIDX(i + k, j + 2, dim)].green - src[RIDX(i + k, j - 1, dim)].green;
				tmp[k * 3 + 2] += src[RIDX(i + k, j + 2, dim)].blue - src[RIDX(i + k, j - 1, dim)].blue;
			}
		}
	}
	for (i = 0; i < dim; ++i) {
		dst[RIDX(i, 0, dim)] = avg(dim, i, 0, src);
		dst[RIDX(0, i, dim)] = avg(dim, 0, i, src);
		dst[RIDX(i, dim - 1, dim)] = avg(dim, i, dim - 1, src);
		dst[RIDX(dim - 1, i, dim)] = avg(dim, dim - 1, i, src);
	}
	*/

	/*
	 * this version upto 43.2
	 *  */
#define steps 32
	unsigned int tmp[(steps + 2) * 3 + 3];
	register unsigned int sumr, sumg, sumb;
	int k;

    for (j = 0; j < dim; j += steps) {
		for (k = 0; k < steps + 2; ++k) {
			tmp[k * 3 + 0] = src[RIDX(0, j + k, dim)].red + src[RIDX(1, j + k, dim)].red + src[RIDX(2, j + k, dim)].red;
			tmp[k * 3 + 1] = src[RIDX(0, j + k, dim)].green + src[RIDX(1, j + k, dim)].green + src[RIDX(2, j + k, dim)].green;
			tmp[k * 3 + 2] = src[RIDX(0, j + k, dim)].blue + src[RIDX(1, j + k, dim)].blue + src[RIDX(2, j + k, dim)].blue;
		}
		for (i = 1; i < dim - 1; ++i) {
			sumr = tmp[0 * 3 + 0] + tmp[1 * 3 + 0] + tmp[2 * 3 + 0];
			sumg = tmp[0 * 3 + 1] + tmp[1 * 3 + 1] + tmp[2 * 3 + 1];
			sumb = tmp[0 * 3 + 2] + tmp[1 * 3 + 2] + tmp[2 * 3 + 2];
			for (k = 0; k < steps; ++k) if (j + k + 1 < dim) {
				dst[RIDX(i, j + k + 1, dim)].red = sumr / 9;
				sumr += tmp[(k + 3) * 3 + 0] - tmp[k * 3 + 0];
				dst[RIDX(i, j + k + 1, dim)].green = sumg / 9;
				sumg += tmp[(k + 3) * 3 + 1] - tmp[k * 3 + 1];
				dst[RIDX(i, j + k + 1, dim)].blue = sumb / 9;
				sumb += tmp[(k + 3) * 3 + 2] - tmp[k * 3 + 2];
			}
			for (k = 0; k < steps + 2; ++k) {
				tmp[k * 3 + 0] += src[RIDX(i + 2, j + k, dim)].red - src[RIDX(i - 1, j + k, dim)].red;
				tmp[k * 3 + 1] += src[RIDX(i + 2, j + k, dim)].green - src[RIDX(i - 1, j + k, dim)].green;
				tmp[k * 3 + 2] += src[RIDX(i + 2, j + k, dim)].blue - src[RIDX(i - 1, j + k, dim)].blue;
			}
		}
	} 
	/*
	 * this version upto 45.0, however it is slower on the server.
	 *  
	int rr1, rr2, rr3;
	int gr1, gr2, gr3;
	int br1, br2, br3;
	register int sumr, sumg, sumb;

	for (i = 1; i < dim; ++i) {
		rr1 = src[RIDX(i - 1, 0, dim)].red + src[RIDX(i, 0, dim)].red + src[RIDX(i + 1, 0, dim)].red;
		rr2 = src[RIDX(i - 1, 1, dim)].red + src[RIDX(i, 1, dim)].red + src[RIDX(i + 1, 1, dim)].red;
		sumr = rr1 + rr2;
		rr3 = src[RIDX(i - 1, 2, dim)].red + src[RIDX(i, 2, dim)].red + src[RIDX(i + 1, 2, dim)].red;
		sumr += rr3;
		gr1 = src[RIDX(i - 1, 0, dim)].green + src[RIDX(i, 0, dim)].green + src[RIDX(i + 1, 0, dim)].green;
		gr2 = src[RIDX(i - 1, 1, dim)].green + src[RIDX(i, 1, dim)].green + src[RIDX(i + 1, 1, dim)].green;
		sumg = gr1 + gr2;
		gr3 = src[RIDX(i - 1, 2, dim)].green + src[RIDX(i, 2, dim)].green + src[RIDX(i + 1, 2, dim)].green;
		sumg += gr3;
		br1 = src[RIDX(i - 1, 0, dim)].blue + src[RIDX(i, 0, dim)].blue + src[RIDX(i + 1, 0, dim)].blue;
		br2 = src[RIDX(i - 1, 1, dim)].blue + src[RIDX(i, 1, dim)].blue + src[RIDX(i + 1, 1, dim)].blue;
		sumb = br1 + br2;
		br3 = src[RIDX(i - 1, 2, dim)].blue + src[RIDX(i, 2, dim)].blue + src[RIDX(i + 1, 2, dim)].blue;
		sumb += br3;

		for (j = 1; j < dim - 1; j += 3) {
			dst[RIDX(i, j, dim)].red = sumr / 9;
			dst[RIDX(i, j, dim)].green = sumg / 9;
			dst[RIDX(i, j, dim)].blue = sumb / 9;
			sumr -= rr1;
			sumg -= gr1;
			sumb -= br1;
			rr1 = src[RIDX(i - 1, j + 2, dim)].red;
			rr1 += src[RIDX(i, j + 2, dim)].red;
			rr1 += src[RIDX(i + 1, j + 2, dim)].red;
			gr1 = src[RIDX(i - 1, j + 2, dim)].green;
			gr1 += src[RIDX(i, j + 2, dim)].green;
			gr1 += src[RIDX(i + 1, j + 2, dim)].green;
			br1 = src[RIDX(i - 1, j + 2, dim)].blue;
			br1 += src[RIDX(i, j + 2, dim)].blue;
			br1 += src[RIDX(i + 1, j + 2, dim)].blue;
			sumr += rr1;
			sumg += gr1;
			sumb += br1;

			dst[RIDX(i, j + 1, dim)].red = sumr / 9;
			dst[RIDX(i, j + 1, dim)].green = sumg / 9;
			dst[RIDX(i, j + 1, dim)].blue = sumb / 9;
			sumr -= rr2;
			rr2 = src[RIDX(i - 1, j + 3, dim)].red + src[RIDX(i, j + 3, dim)].red + src[RIDX(i + 1, j + 3, dim)].red;
			sumr += rr2;
			sumg -= gr2;
			gr2 = src[RIDX(i - 1, j + 3, dim)].green + src[RIDX(i, j + 3, dim)].green + src[RIDX(i + 1, j + 3, dim)].green;
			sumg += gr2;
			sumb -= br2;
			br2 = src[RIDX(i - 1, j + 3, dim)].blue + src[RIDX(i, j + 3, dim)].blue + src[RIDX(i + 1, j + 3, dim)].blue;
			sumb += br2;

			if (j + 2 >= dim) break;
			dst[RIDX(i, j + 2, dim)].red = sumr / 9;
			dst[RIDX(i, j + 2, dim)].green = sumg / 9;
			dst[RIDX(i, j + 2, dim)].blue = sumb / 9;
			sumr -= rr3;
			rr3 = src[RIDX(i - 1, j + 4, dim)].red + src[RIDX(i, j + 4, dim)].red + src[RIDX(i + 1, j + 4, dim)].red;
			sumr += rr3;
			sumg -= gr3;
			gr3 = src[RIDX(i - 1, j + 4, dim)].green + src[RIDX(i, j + 4, dim)].green + src[RIDX(i + 1, j + 4, dim)].green;
			sumg += gr3;
			sumb -= br3;
			br3 = src[RIDX(i - 1, j + 4, dim)].blue + src[RIDX(i, j + 4, dim)].blue + src[RIDX(i + 1, j + 4, dim)].blue;
			sumb += br3;
		}
	} 

	const int MaxN = (1 << 10) + 3;
	int row[MaxN][3];
	int sumr, sumg, sumb;

	for (j = 0; j < dim; ++j) {
		row[j][0] = src[RIDX(0, j, dim)].red + src[RIDX(1, j, dim)].red + src[RIDX(2, j, dim)].red;
		row[j][1] = src[RIDX(0, j, dim)].green + src[RIDX(1, j, dim)].green + src[RIDX(2, j, dim)].green;
		row[j][2] = src[RIDX(0, j, dim)].blue + src[RIDX(1, j, dim)].blue + src[RIDX(2, j, dim)].blue;
	}
	for (i = 1; i < dim - 1; ++i) {
		sumr = row[0][0] + row[1][0] + row[2][0];
		sumg = row[0][1] + row[1][1] + row[2][1];
		sumb = row[0][2] + row[1][2] + row[2][2];

		for (j = 1; j < dim - 1; ++j) {
			dst[RIDX(i, j, dim)].red = sumr / 9;
			sumr += row[j + 2][0] - row[j - 1][0];
			row[j - 1][0] += src[RIDX(i + 2, j - 1, dim)].red - src[RIDX(i - 1, j - 1, dim)].red;
			dst[RIDX(i, j, dim)].green = sumg / 9;
			sumg += row[j + 2][1] - row[j - 1][1];
			row[j - 1][1] += src[RIDX(i + 2, j - 1, dim)].green - src[RIDX(i - 1, j - 1, dim)].green;
			dst[RIDX(i, j, dim)].blue = sumb / 9;
			sumb += row[j + 2][2] - row[j - 1][2];
			row[j - 1][2] += src[RIDX(i + 2, j - 1, dim)].blue - src[RIDX(i - 1, j - 1, dim)].blue;
		}
		for (j = dim - 1; j <= dim + 1; ++j) {
			row[j - 1][0] += src[RIDX(i + 2, j - 1, dim)].red - src[RIDX(i - 1, j - 1, dim)].red;
			row[j - 1][1] += src[RIDX(i + 2, j - 1, dim)].green - src[RIDX(i - 1, j - 1, dim)].green;
			row[j - 1][2] += src[RIDX(i + 2, j - 1, dim)].blue - src[RIDX(i - 1, j - 1, dim)].blue;
		}
	} */

	//first row
	sumr = src[RIDX(0, 0, dim)].red + src[RIDX(0, 1, dim)].red + src[RIDX(0, 2, dim)].red
		 + src[RIDX(1, 0, dim)].red + src[RIDX(1, 1, dim)].red + src[RIDX(1, 2, dim)].red;
	sumg = src[RIDX(0, 0, dim)].green + src[RIDX(0, 1, dim)].green + src[RIDX(0, 2, dim)].green
		 + src[RIDX(1, 0, dim)].green + src[RIDX(1, 1, dim)].green + src[RIDX(1, 2, dim)].green;
	sumb = src[RIDX(0, 0, dim)].blue + src[RIDX(0, 1, dim)].blue + src[RIDX(0, 2, dim)].blue
		 + src[RIDX(1, 0, dim)].blue + src[RIDX(1, 1, dim)].blue + src[RIDX(1, 2, dim)].blue;
	for (i = 1; i < dim - 1; ++i) {
		dst[RIDX(0, i, dim)].red = sumr / 6;
		dst[RIDX(0, i, dim)].green = sumg / 6;
		dst[RIDX(0, i, dim)].blue = sumb / 6;
		sumr += src[RIDX(0, i + 2, dim)].red + src[RIDX(1, i + 2, dim)].red
			  - src[RIDX(0, i - 1, dim)].red - src[RIDX(1, i - 1, dim)].red;
		sumg += src[RIDX(0, i + 2, dim)].green + src[RIDX(1, i + 2, dim)].green
			  - src[RIDX(0, i - 1, dim)].green - src[RIDX(1, i - 1, dim)].green;
		sumb += src[RIDX(0, i + 2, dim)].blue + src[RIDX(1, i + 2, dim)].blue
			  - src[RIDX(0, i - 1, dim)].blue - src[RIDX(1, i - 1, dim)].blue;
	}
	//last row
	sumr = src[RIDX(dim - 2, 0, dim)].red + src[RIDX(dim - 2, 1, dim)].red + src[RIDX(dim - 2, 2, dim)].red
		 + src[RIDX(dim - 1, 0, dim)].red + src[RIDX(dim - 1, 1, dim)].red + src[RIDX(dim - 1, 2, dim)].red;
	sumg = src[RIDX(dim - 2, 0, dim)].green + src[RIDX(dim - 2, 1, dim)].green + src[RIDX(dim - 2, 2, dim)].green
		 + src[RIDX(dim - 1, 0, dim)].green + src[RIDX(dim - 1, 1, dim)].green + src[RIDX(dim - 1, 2, dim)].green;
	sumb = src[RIDX(dim - 2, 0, dim)].blue + src[RIDX(dim - 2, 1, dim)].blue + src[RIDX(dim - 2, 2, dim)].blue
		 + src[RIDX(dim - 1, 0, dim)].blue + src[RIDX(dim - 1, 1, dim)].blue + src[RIDX(dim - 1, 2, dim)].blue;
	for (i = 1; i < dim - 1; ++i) {
		dst[RIDX(dim - 1, i, dim)].red = sumr / 6;
		dst[RIDX(dim - 1, i, dim)].green = sumg / 6;
		dst[RIDX(dim - 1, i, dim)].blue = sumb / 6;
		sumr += src[RIDX(dim - 1, i + 2, dim)].red + src[RIDX(dim - 2, i + 2, dim)].red
			  - src[RIDX(dim - 1, i - 1, dim)].red - src[RIDX(dim - 2, i - 1, dim)].red;
		sumg += src[RIDX(dim - 1, i + 2, dim)].green + src[RIDX(dim - 2, i + 2, dim)].green
			  - src[RIDX(dim - 1, i - 1, dim)].green - src[RIDX(dim - 2, i - 1, dim)].green;
		sumb += src[RIDX(dim - 1, i + 2, dim)].blue + src[RIDX(dim - 2, i + 2, dim)].blue
			  - src[RIDX(dim - 1, i - 1, dim)].blue - src[RIDX(dim - 2, i - 1, dim)].blue;
	}

	//first col
	sumr = src[RIDX(0, 0, dim)].red + src[RIDX(1, 0, dim)].red + src[RIDX(2, 0, dim)].red
		 + src[RIDX(0, 1, dim)].red + src[RIDX(1, 1, dim)].red + src[RIDX(2, 1, dim)].red;
	sumg = src[RIDX(0, 0, dim)].green + src[RIDX(1, 0, dim)].green + src[RIDX(2, 0, dim)].green
		 + src[RIDX(0, 1, dim)].green + src[RIDX(1, 1, dim)].green + src[RIDX(2, 1, dim)].green;
	sumb = src[RIDX(0, 0, dim)].blue + src[RIDX(1, 0, dim)].blue + src[RIDX(2, 0, dim)].blue
		 + src[RIDX(0, 1, dim)].blue + src[RIDX(1, 1, dim)].blue + src[RIDX(2, 1, dim)].blue;
	for (i = 1; i < dim - 1; ++i) {
		dst[RIDX(i, 0, dim)].red = sumr / 6;
		dst[RIDX(i, 0, dim)].green = sumg / 6;
		dst[RIDX(i, 0, dim)].blue = sumb / 6;
		sumr += src[RIDX(i + 2, 0, dim)].red + src[RIDX(i + 2, 1, dim)].red
			  - src[RIDX(i - 1, 0, dim)].red - src[RIDX(i - 1, 1, dim)].red;
		sumg += src[RIDX(i + 2, 0, dim)].green + src[RIDX(i + 2, 1, dim)].green
			  - src[RIDX(i - 1, 0, dim)].green - src[RIDX(i - 1, 1, dim)].green;
		sumb += src[RIDX(i + 2, 0, dim)].blue + src[RIDX(i + 2, 1, dim)].blue
			  - src[RIDX(i - 1, 0, dim)].blue - src[RIDX(i - 1, 1, dim)].blue;
	} 
	//last col
	sumr = src[RIDX(0, dim - 2, dim)].red + src[RIDX(1, dim - 2, dim)].red + src[RIDX(2, dim - 2, dim)].red
		 + src[RIDX(0, dim - 1, dim)].red + src[RIDX(1, dim - 1, dim)].red + src[RIDX(2, dim - 1, dim)].red;
	sumg = src[RIDX(0, dim - 2, dim)].green + src[RIDX(1, dim - 2, dim)].green + src[RIDX(2, dim - 2, dim)].green
		 + src[RIDX(0, dim - 1, dim)].green + src[RIDX(1, dim - 1, dim)].green + src[RIDX(2, dim - 1, dim)].green;
	sumb = src[RIDX(0, dim - 2, dim)].blue + src[RIDX(1, dim - 2, dim)].blue + src[RIDX(2, dim - 2, dim)].blue
		 + src[RIDX(0, dim - 1, dim)].blue + src[RIDX(1, dim - 1, dim)].blue + src[RIDX(2, dim - 1, dim)].blue;
	for (i = 1; i < dim - 1; ++i) {
		dst[RIDX(i, dim - 1, dim)].red = sumr / 6;
		dst[RIDX(i, dim - 1, dim)].green = sumg / 6;
		dst[RIDX(i, dim - 1, dim)].blue = sumb / 6;
		sumr += src[RIDX(i + 2, dim - 1, dim)].red + src[RIDX(i + 2, dim - 2, dim)].red
			  - src[RIDX(i - 1, dim - 1, dim)].red - src[RIDX(i - 1, dim - 2, dim)].red;
		sumg += src[RIDX(i + 2, dim - 1, dim)].green + src[RIDX(i + 2, dim - 2, dim)].green
			  - src[RIDX(i - 1, dim - 1, dim)].green - src[RIDX(i - 1, dim - 2, dim)].green;
		sumb += src[RIDX(i + 2, dim - 1, dim)].blue + src[RIDX(i + 2, dim - 2, dim)].blue
			  - src[RIDX(i - 1, dim - 1, dim)].blue - src[RIDX(i - 1, dim - 2, dim)].blue;
	}

	dst[RIDX(0, 0, dim)].red = (src[RIDX(0, 0, dim)].red + src[RIDX(0, 1, dim)].red + src[RIDX(1, 0, dim)].red + src[RIDX(1, 1, dim)].red) >> 2;
	dst[RIDX(0, 0, dim)].green = (src[RIDX(0, 0, dim)].green + src[RIDX(0, 1, dim)].green + src[RIDX(1, 0, dim)].green + src[RIDX(1, 1, dim)].green) >> 2;
	dst[RIDX(0, 0, dim)].blue = (src[RIDX(0, 0, dim)].blue + src[RIDX(0, 1, dim)].blue + src[RIDX(1, 0, dim)].blue + src[RIDX(1, 1, dim)].blue) >> 2;

	dst[RIDX(0, dim - 1, dim)].red = (src[RIDX(0, dim - 1, dim)].red + src[RIDX(0, dim - 2, dim)].red + src[RIDX(1, dim - 1, dim)].red + src[RIDX(1, dim - 2, dim)].red) >> 2;
	dst[RIDX(0, dim - 1, dim)].green = (src[RIDX(0, dim - 1, dim)].green + src[RIDX(0, dim - 2, dim)].green + src[RIDX(1, dim - 1, dim)].green + src[RIDX(1, dim - 2, dim)].green) >> 2;
	dst[RIDX(0, dim - 1, dim)].blue = (src[RIDX(0, dim - 1, dim)].blue + src[RIDX(0, dim - 2, dim)].blue + src[RIDX(1, dim - 1, dim)].blue + src[RIDX(1, dim - 2, dim)].blue) >> 2;

	dst[RIDX(dim - 1, 0, dim)].red = (src[RIDX(dim - 1, 0, dim)].red + src[RIDX(dim - 1, 1, dim)].red + src[RIDX(dim - 2, 0, dim)].red + src[RIDX(dim - 2, 1, dim)].red) >> 2;
	dst[RIDX(dim - 1, 0, dim)].green = (src[RIDX(dim - 1, 0, dim)].green + src[RIDX(dim - 1, 1, dim)].green + src[RIDX(dim - 2, 0, dim)].green + src[RIDX(dim - 2, 1, dim)].green) >> 2;
	dst[RIDX(dim - 1, 0, dim)].blue = (src[RIDX(dim - 1, 0, dim)].blue + src[RIDX(dim - 1, 1, dim)].blue + src[RIDX(dim - 2, 0, dim)].blue + src[RIDX(dim - 2, 1, dim)].blue) >> 2;

	dst[RIDX(dim - 1, dim - 1, dim)].red = (src[RIDX(dim - 1, dim - 1, dim)].red + src[RIDX(dim - 1, dim - 2, dim)].red + src[RIDX(dim - 2, dim - 1, dim)].red + src[RIDX(dim - 2, dim - 2, dim)].red) >> 2;
	dst[RIDX(dim - 1, dim - 1, dim)].green = (src[RIDX(dim - 1, dim - 1, dim)].green + src[RIDX(dim - 1, dim - 2, dim)].green + src[RIDX(dim - 2, dim - 1, dim)].green + src[RIDX(dim - 2, dim - 2, dim)].green) >> 2;
	dst[RIDX(dim - 1, dim - 1, dim)].blue = (src[RIDX(dim - 1, dim - 1, dim)].blue + src[RIDX(dim - 1, dim - 2, dim)].blue + src[RIDX(dim - 2, dim - 1, dim)].blue + src[RIDX(dim - 2, dim - 2, dim)].blue) >> 2;
}

/********************************************************************* 
 * register_smooth_functions - Register all of your different versions
 *     of the smooth kernel with the driver by calling the
 *     add_smooth_function() for each test function.  When you run the
 *     driver program, it will test and report the performance of each
 *     registered test function.  
 *********************************************************************/

void register_smooth_functions() {
    add_smooth_function(&smooth, smooth_descr);
    add_smooth_function(&naive_smooth, naive_smooth_descr);
    /* ... Register additional test functions here */
}

