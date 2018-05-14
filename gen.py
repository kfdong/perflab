# declare
step = 4
s = '\t'
for i in range((step + 2) * 3):
    s = s + 'tmp' + str(i) + ', ';
s = s[:-2] + ';'
print('unsigned int', s);

# initialize
s = ''
for k in range(step + 2):
    s += '\t\ttmp{} = src[RIDX(0, j + {}, dim)].red + src[RIDX(1, j + {}, dim)].red + src[RIDX(2, j + {}, dim)].red;'.format(k * 3 + 0, k, k, k) + '\n';
    s += '\t\ttmp{} = src[RIDX(0, j + {}, dim)].green + src[RIDX(1, j + {}, dim)].green + src[RIDX(2, j + {}, dim)].green;'.format(k * 3 + 1, k, k, k) + '\n';
    s += '\t\ttmp{} = src[RIDX(0, j + {}, dim)].blue + src[RIDX(1, j + {}, dim)].blue + src[RIDX(2, j + {}, dim)].blue;'.format(k * 3 + 2, k, k, k) + '\n';
print(s);

# init
print('\t\t\tsumr = tmp0 + tmp3 + tmp6;');
print('\t\t\tsumg = tmp1 + tmp4 + tmp7;');
print('\t\t\tsumb = tmp2 + tmp5 + tmp8;');

# calc dst
s = ''
for k in range(step):
    s += '\t\t\tif (j + {} + 1 < dim) {}\n'.format(k, chr(ord('{')));
    s += '\t\t\t\tdst[RIDX(i, j + {} + 1, dim)].red = sumr / 9;\n'.format(k);
    s += '\t\t\t\tsumr += tmp{} - tmp{};\n'.format((k + 3) * 3 + 0, k * 3 + 0);
    s += '\t\t\t\tdst[RIDX(i, j + {} + 1, dim)].green = sumg / 9;\n'.format(k);
    s += '\t\t\t\tsumg += tmp{} - tmp{};\n'.format((k + 3) * 3 + 1, k * 3 + 1);
    s += '\t\t\t\tdst[RIDX(i, j + {} + 1, dim)].blue = sumb / 9;\n'.format(k);
    s += '\t\t\t\tsumb += tmp{} - tmp{};\n'.format((k + 3) * 3 + 2, k * 3 + 2);
    s += '\t\t\t}\n'
print(s)

# calc tmp
s = ''
for k in range(step + 2):
    s += '\t\ttmp{} += src[RIDX(i + 2, j + {}, dim)].red - src[RIDX(i - 1, j + {}, dim)].red;\n'.format(k * 3 + 0, k, k);
    s += '\t\ttmp{} += src[RIDX(i + 2, j + {}, dim)].green - src[RIDX(i - 1, j + {}, dim)].green;\n'.format(k * 3 + 1, k, k);
    s += '\t\ttmp{} += src[RIDX(i + 2, j + {}, dim)].blue - src[RIDX(i - 1, j + {}, dim)].blue;\n'.format(k * 3 + 2, k, k);
print(s)

'''
			tmp[k * 3 + 0] = src[RIDX(0, j + k, dim)].red + src[RIDX(1, j + k, dim)].red + src[RIDX(2, j + k, dim)].red;
			tmp[k * 3 + 1] = src[RIDX(0, j + k, dim)].green + src[RIDX(1, j + k, dim)].green + src[RIDX(2, j + k, dim)].green;
			tmp[k * 3 + 2] = src[RIDX(0, j + k, dim)].blue + src[RIDX(1, j + k, dim)].blue + src[RIDX(2, j + k, dim)].blue;

			sumr = tmp[0 * 3 + 0] + tmp[1 * 3 + 0] + tmp[2 * 3 + 0];
			sumg = tmp[0 * 3 + 1] + tmp[1 * 3 + 1] + tmp[2 * 3 + 1];
			sumb = tmp[0 * 3 + 2] + tmp[1 * 3 + 2] + tmp[2 * 3 + 2];

				dst[RIDX(i, j + k + 1, dim)].red = sumr / 9;
				sumr += tmp[(k + 3) * 3 + 0] - tmp[k * 3 + 0];
				dst[RIDX(i, j + k + 1, dim)].green = sumg / 9;
				sumg += tmp[(k + 3) * 3 + 1] - tmp[k * 3 + 1];
				dst[RIDX(i, j + k + 1, dim)].blue = sumb / 9;
				sumb += tmp[(k + 3) * 3 + 2] - tmp[k * 3 + 2];

				tmp[k * 3 + 0] += src[RIDX(i + 2, j + k, dim)].red - src[RIDX(i - 1, j + k, dim)].red;
				tmp[k * 3 + 1] += src[RIDX(i + 2, j + k, dim)].green - src[RIDX(i - 1, j + k, dim)].green;
				tmp[k * 3 + 2] += src[RIDX(i + 2, j + k, dim)].blue - src[RIDX(i - 1, j + k, dim)].blue;
'''
