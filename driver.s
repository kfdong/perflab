
driver:     file format elf32-i386


Disassembly of section .init:

080486d0 <_init>:
 80486d0:	53                   	push   %ebx
 80486d1:	83 ec 08             	sub    $0x8,%esp
 80486d4:	e8 17 08 00 00       	call   8048ef0 <__x86.get_pc_thunk.bx>
 80486d9:	81 c3 27 49 00 00    	add    $0x4927,%ebx
 80486df:	8b 83 fc ff ff ff    	mov    -0x4(%ebx),%eax
 80486e5:	85 c0                	test   %eax,%eax
 80486e7:	74 05                	je     80486ee <_init+0x1e>
 80486e9:	e8 a2 01 00 00       	call   8048890 <calloc@plt+0x10>
 80486ee:	83 c4 08             	add    $0x8,%esp
 80486f1:	5b                   	pop    %ebx
 80486f2:	c3                   	ret    

Disassembly of section .plt:

08048700 <strcmp@plt-0x10>:
 8048700:	ff 35 04 d0 04 08    	pushl  0x804d004
 8048706:	ff 25 08 d0 04 08    	jmp    *0x804d008
 804870c:	00 00                	add    %al,(%eax)
	...

08048710 <strcmp@plt>:
 8048710:	ff 25 0c d0 04 08    	jmp    *0x804d00c
 8048716:	68 00 00 00 00       	push   $0x0
 804871b:	e9 e0 ff ff ff       	jmp    8048700 <_init+0x30>

08048720 <times@plt>:
 8048720:	ff 25 10 d0 04 08    	jmp    *0x804d010
 8048726:	68 08 00 00 00       	push   $0x8
 804872b:	e9 d0 ff ff ff       	jmp    8048700 <_init+0x30>

08048730 <free@plt>:
 8048730:	ff 25 14 d0 04 08    	jmp    *0x804d014
 8048736:	68 10 00 00 00       	push   $0x10
 804873b:	e9 c0 ff ff ff       	jmp    8048700 <_init+0x30>

08048740 <fgets@plt>:
 8048740:	ff 25 18 d0 04 08    	jmp    *0x804d018
 8048746:	68 18 00 00 00       	push   $0x18
 804874b:	e9 b0 ff ff ff       	jmp    8048700 <_init+0x30>

08048750 <fclose@plt>:
 8048750:	ff 25 1c d0 04 08    	jmp    *0x804d01c
 8048756:	68 20 00 00 00       	push   $0x20
 804875b:	e9 a0 ff ff ff       	jmp    8048700 <_init+0x30>

08048760 <sleep@plt>:
 8048760:	ff 25 20 d0 04 08    	jmp    *0x804d020
 8048766:	68 28 00 00 00       	push   $0x28
 804876b:	e9 90 ff ff ff       	jmp    8048700 <_init+0x30>

08048770 <pow@plt>:
 8048770:	ff 25 24 d0 04 08    	jmp    *0x804d024
 8048776:	68 30 00 00 00       	push   $0x30
 804877b:	e9 80 ff ff ff       	jmp    8048700 <_init+0x30>

08048780 <__stack_chk_fail@plt>:
 8048780:	ff 25 28 d0 04 08    	jmp    *0x804d028
 8048786:	68 38 00 00 00       	push   $0x38
 804878b:	e9 70 ff ff ff       	jmp    8048700 <_init+0x30>

08048790 <fwrite@plt>:
 8048790:	ff 25 2c d0 04 08    	jmp    *0x804d02c
 8048796:	68 40 00 00 00       	push   $0x40
 804879b:	e9 60 ff ff ff       	jmp    8048700 <_init+0x30>

080487a0 <malloc@plt>:
 80487a0:	ff 25 30 d0 04 08    	jmp    *0x804d030
 80487a6:	68 48 00 00 00       	push   $0x48
 80487ab:	e9 50 ff ff ff       	jmp    8048700 <_init+0x30>

080487b0 <puts@plt>:
 80487b0:	ff 25 34 d0 04 08    	jmp    *0x804d034
 80487b6:	68 50 00 00 00       	push   $0x50
 80487bb:	e9 40 ff ff ff       	jmp    8048700 <_init+0x30>

080487c0 <exit@plt>:
 80487c0:	ff 25 38 d0 04 08    	jmp    *0x804d038
 80487c6:	68 58 00 00 00       	push   $0x58
 80487cb:	e9 30 ff ff ff       	jmp    8048700 <_init+0x30>

080487d0 <srand@plt>:
 80487d0:	ff 25 3c d0 04 08    	jmp    *0x804d03c
 80487d6:	68 60 00 00 00       	push   $0x60
 80487db:	e9 20 ff ff ff       	jmp    8048700 <_init+0x30>

080487e0 <strchr@plt>:
 80487e0:	ff 25 40 d0 04 08    	jmp    *0x804d040
 80487e6:	68 68 00 00 00       	push   $0x68
 80487eb:	e9 10 ff ff ff       	jmp    8048700 <_init+0x30>

080487f0 <__libc_start_main@plt>:
 80487f0:	ff 25 44 d0 04 08    	jmp    *0x804d044
 80487f6:	68 70 00 00 00       	push   $0x70
 80487fb:	e9 00 ff ff ff       	jmp    8048700 <_init+0x30>

08048800 <getopt@plt>:
 8048800:	ff 25 48 d0 04 08    	jmp    *0x804d048
 8048806:	68 78 00 00 00       	push   $0x78
 804880b:	e9 f0 fe ff ff       	jmp    8048700 <_init+0x30>

08048810 <fopen@plt>:
 8048810:	ff 25 4c d0 04 08    	jmp    *0x804d04c
 8048816:	68 80 00 00 00       	push   $0x80
 804881b:	e9 e0 fe ff ff       	jmp    8048700 <_init+0x30>

08048820 <__strdup@plt>:
 8048820:	ff 25 50 d0 04 08    	jmp    *0x804d050
 8048826:	68 88 00 00 00       	push   $0x88
 804882b:	e9 d0 fe ff ff       	jmp    8048700 <_init+0x30>

08048830 <putchar@plt>:
 8048830:	ff 25 54 d0 04 08    	jmp    *0x804d054
 8048836:	68 90 00 00 00       	push   $0x90
 804883b:	e9 c0 fe ff ff       	jmp    8048700 <_init+0x30>

08048840 <rand@plt>:
 8048840:	ff 25 58 d0 04 08    	jmp    *0x804d058
 8048846:	68 98 00 00 00       	push   $0x98
 804884b:	e9 b0 fe ff ff       	jmp    8048700 <_init+0x30>

08048850 <__printf_chk@plt>:
 8048850:	ff 25 5c d0 04 08    	jmp    *0x804d05c
 8048856:	68 a0 00 00 00       	push   $0xa0
 804885b:	e9 a0 fe ff ff       	jmp    8048700 <_init+0x30>

08048860 <__fprintf_chk@plt>:
 8048860:	ff 25 60 d0 04 08    	jmp    *0x804d060
 8048866:	68 a8 00 00 00       	push   $0xa8
 804886b:	e9 90 fe ff ff       	jmp    8048700 <_init+0x30>

08048870 <strtol@plt>:
 8048870:	ff 25 64 d0 04 08    	jmp    *0x804d064
 8048876:	68 b0 00 00 00       	push   $0xb0
 804887b:	e9 80 fe ff ff       	jmp    8048700 <_init+0x30>

08048880 <calloc@plt>:
 8048880:	ff 25 68 d0 04 08    	jmp    *0x804d068
 8048886:	68 b8 00 00 00       	push   $0xb8
 804888b:	e9 70 fe ff ff       	jmp    8048700 <_init+0x30>

Disassembly of section .plt.got:

08048890 <.plt.got>:
 8048890:	ff 25 fc cf 04 08    	jmp    *0x804cffc
 8048896:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

080488a0 <main>:
 80488a0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
 80488a4:	83 e4 f0             	and    $0xfffffff0,%esp
 80488a7:	ff 71 fc             	pushl  -0x4(%ecx)
 80488aa:	55                   	push   %ebp
 80488ab:	89 e5                	mov    %esp,%ebp
 80488ad:	57                   	push   %edi
 80488ae:	56                   	push   %esi
 80488af:	53                   	push   %ebx
 80488b0:	51                   	push   %ecx
 80488b1:	81 ec 38 01 00 00    	sub    $0x138,%esp
 80488b7:	8b 01                	mov    (%ecx),%eax
 80488b9:	89 85 d0 fe ff ff    	mov    %eax,-0x130(%ebp)
 80488bf:	8b 41 04             	mov    0x4(%ecx),%eax
 80488c2:	89 85 d4 fe ff ff    	mov    %eax,-0x12c(%ebp)
 80488c8:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 80488ce:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 80488d1:	31 c0                	xor    %eax,%eax
 80488d3:	e8 c8 17 00 00       	call   804a0a0 <register_rotate_functions>
 80488d8:	e8 f3 17 00 00       	call   804a0d0 <register_smooth_functions>
 80488dd:	c7 85 cc fe ff ff 00 	movl   $0x0,-0x134(%ebp)
 80488e4:	00 00 00 
 80488e7:	c7 85 bc fe ff ff c1 	movl   $0x6c1,-0x144(%ebp)
 80488ee:	06 00 00 
 80488f1:	c7 85 c8 fe ff ff 00 	movl   $0x0,-0x138(%ebp)
 80488f8:	00 00 00 
 80488fb:	c7 85 c0 fe ff ff 00 	movl   $0x0,-0x140(%ebp)
 8048902:	00 00 00 
 8048905:	c7 85 c4 fe ff ff 00 	movl   $0x0,-0x13c(%ebp)
 804890c:	00 00 00 
 804890f:	83 ec 04             	sub    $0x4,%esp
 8048912:	68 bd ab 04 08       	push   $0x804abbd
 8048917:	ff b5 d4 fe ff ff    	pushl  -0x12c(%ebp)
 804891d:	ff b5 d0 fe ff ff    	pushl  -0x130(%ebp)
 8048923:	e8 d8 fe ff ff       	call   8048800 <getopt@plt>
 8048928:	83 c4 10             	add    $0x10,%esp
 804892b:	3c ff                	cmp    $0xff,%al
 804892d:	0f 84 2c 01 00 00    	je     8048a5f <main+0x1bf>
 8048933:	83 e8 64             	sub    $0x64,%eax
 8048936:	3c 10                	cmp    $0x10,%al
 8048938:	77 0e                	ja     8048948 <main+0xa8>
 804893a:	0f b6 c0             	movzbl %al,%eax
 804893d:	ff 24 85 a0 ac 04 08 	jmp    *0x804aca0(,%eax,4)
 8048944:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8048948:	8b 85 d4 fe ff ff    	mov    -0x12c(%ebp),%eax
 804894e:	83 ec 0c             	sub    $0xc,%esp
 8048951:	ff 30                	pushl  (%eax)
 8048953:	e8 48 14 00 00       	call   8049da0 <usage>
 8048958:	c7 85 c4 fe ff ff 01 	movl   $0x1,-0x13c(%ebp)
 804895f:	00 00 00 
 8048962:	eb ab                	jmp    804890f <main+0x6f>
 8048964:	c7 85 c0 fe ff ff 01 	movl   $0x1,-0x140(%ebp)
 804896b:	00 00 00 
 804896e:	eb 9f                	jmp    804890f <main+0x6f>
 8048970:	c7 85 c8 fe ff ff 01 	movl   $0x1,-0x138(%ebp)
 8048977:	00 00 00 
 804897a:	eb 93                	jmp    804890f <main+0x6f>
 804897c:	83 ec 0c             	sub    $0xc,%esp
 804897f:	ff 35 a0 d1 04 08    	pushl  0x804d1a0
 8048985:	e8 96 fe ff ff       	call   8048820 <__strdup@plt>
 804898a:	83 c4 10             	add    $0x10,%esp
 804898d:	89 85 cc fe ff ff    	mov    %eax,-0x134(%ebp)
 8048993:	e9 77 ff ff ff       	jmp    804890f <main+0x6f>
 8048998:	83 ec 0c             	sub    $0xc,%esp
 804899b:	ff 35 a0 d1 04 08    	pushl  0x804d1a0
 80489a1:	e8 7a fe ff ff       	call   8048820 <__strdup@plt>
 80489a6:	89 c3                	mov    %eax,%ebx
 80489a8:	58                   	pop    %eax
 80489a9:	5a                   	pop    %edx
 80489aa:	68 9b ab 04 08       	push   $0x804ab9b
 80489af:	53                   	push   %ebx
 80489b0:	e8 5b fe ff ff       	call   8048810 <fopen@plt>
 80489b5:	83 c4 10             	add    $0x10,%esp
 80489b8:	85 c0                	test   %eax,%eax
 80489ba:	89 c7                	mov    %eax,%edi
 80489bc:	0f 84 02 05 00 00    	je     8048ec4 <main+0x624>
 80489c2:	31 db                	xor    %ebx,%ebx
 80489c4:	83 3d 24 d2 c6 09 00 	cmpl   $0x0,0x9c6d224
 80489cb:	be cc e6 c6 09       	mov    $0x9c6e6cc,%esi
 80489d0:	7e 26                	jle    80489f8 <main+0x158>
 80489d2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 80489d8:	ff 36                	pushl  (%esi)
 80489da:	68 b1 ab 04 08       	push   $0x804abb1
 80489df:	83 c3 01             	add    $0x1,%ebx
 80489e2:	6a 01                	push   $0x1
 80489e4:	57                   	push   %edi
 80489e5:	83 c6 34             	add    $0x34,%esi
 80489e8:	e8 73 fe ff ff       	call   8048860 <__fprintf_chk@plt>
 80489ed:	83 c4 10             	add    $0x10,%esp
 80489f0:	39 1d 24 d2 c6 09    	cmp    %ebx,0x9c6d224
 80489f6:	7f e0                	jg     80489d8 <main+0x138>
 80489f8:	31 db                	xor    %ebx,%ebx
 80489fa:	83 3d 20 d2 c6 09 00 	cmpl   $0x0,0x9c6d220
 8048a01:	be 6c d2 c6 09       	mov    $0x9c6d26c,%esi
 8048a06:	7e 28                	jle    8048a30 <main+0x190>
 8048a08:	90                   	nop
 8048a09:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8048a10:	ff 36                	pushl  (%esi)
 8048a12:	68 b7 ab 04 08       	push   $0x804abb7
 8048a17:	83 c3 01             	add    $0x1,%ebx
 8048a1a:	6a 01                	push   $0x1
 8048a1c:	57                   	push   %edi
 8048a1d:	83 c6 34             	add    $0x34,%esi
 8048a20:	e8 3b fe ff ff       	call   8048860 <__fprintf_chk@plt>
 8048a25:	83 c4 10             	add    $0x10,%esp
 8048a28:	39 1d 20 d2 c6 09    	cmp    %ebx,0x9c6d220
 8048a2e:	7f e0                	jg     8048a10 <main+0x170>
 8048a30:	83 ec 0c             	sub    $0xc,%esp
 8048a33:	57                   	push   %edi
 8048a34:	e8 17 fd ff ff       	call   8048750 <fclose@plt>
 8048a39:	83 c4 10             	add    $0x10,%esp
 8048a3c:	e9 ce fe ff ff       	jmp    804890f <main+0x6f>
 8048a41:	51                   	push   %ecx
 8048a42:	6a 0a                	push   $0xa
 8048a44:	6a 00                	push   $0x0
 8048a46:	ff 35 a0 d1 04 08    	pushl  0x804d1a0
 8048a4c:	e8 1f fe ff ff       	call   8048870 <strtol@plt>
 8048a51:	83 c4 10             	add    $0x10,%esp
 8048a54:	89 85 bc fe ff ff    	mov    %eax,-0x144(%ebp)
 8048a5a:	e9 b0 fe ff ff       	jmp    804890f <main+0x6f>
 8048a5f:	83 bd c4 fe ff ff 00 	cmpl   $0x0,-0x13c(%ebp)
 8048a66:	0f 85 4e 04 00 00    	jne    8048eba <main+0x61a>
 8048a6c:	83 bd c0 fe ff ff 00 	cmpl   $0x0,-0x140(%ebp)
 8048a73:	0f 85 a1 00 00 00    	jne    8048b1a <main+0x27a>
 8048a79:	8b 1d 4c d1 04 08    	mov    0x804d14c,%ebx
 8048a7f:	56                   	push   %esi
 8048a80:	56                   	push   %esi
 8048a81:	53                   	push   %ebx
 8048a82:	68 c8 ab 04 08       	push   $0x804abc8
 8048a87:	e8 84 fc ff ff       	call   8048710 <strcmp@plt>
 8048a8c:	83 c4 10             	add    $0x10,%esp
 8048a8f:	85 c0                	test   %eax,%eax
 8048a91:	0f 84 02 04 00 00    	je     8048e99 <main+0x5f9>
 8048a97:	51                   	push   %ecx
 8048a98:	53                   	push   %ebx
 8048a99:	68 ce ab 04 08       	push   $0x804abce
 8048a9e:	6a 01                	push   $0x1
 8048aa0:	e8 ab fd ff ff       	call   8048850 <__printf_chk@plt>
 8048aa5:	83 c4 0c             	add    $0xc,%esp
 8048aa8:	ff 35 50 d1 04 08    	pushl  0x804d150
 8048aae:	68 dc ab 04 08       	push   $0x804abdc
 8048ab3:	6a 01                	push   $0x1
 8048ab5:	e8 96 fd ff ff       	call   8048850 <__printf_chk@plt>
 8048aba:	83 c4 0c             	add    $0xc,%esp
 8048abd:	ff 35 54 d1 04 08    	pushl  0x804d154
 8048ac3:	68 ea ab 04 08       	push   $0x804abea
 8048ac8:	6a 01                	push   $0x1
 8048aca:	e8 81 fd ff ff       	call   8048850 <__printf_chk@plt>
 8048acf:	a1 58 d1 04 08       	mov    0x804d158,%eax
 8048ad4:	83 c4 10             	add    $0x10,%esp
 8048ad7:	80 38 00             	cmpb   $0x0,(%eax)
 8048ada:	75 0b                	jne    8048ae7 <main+0x247>
 8048adc:	8b 15 5c d1 04 08    	mov    0x804d15c,%edx
 8048ae2:	80 3a 00             	cmpb   $0x0,(%edx)
 8048ae5:	74 26                	je     8048b0d <main+0x26d>
 8048ae7:	52                   	push   %edx
 8048ae8:	50                   	push   %eax
 8048ae9:	68 f7 ab 04 08       	push   $0x804abf7
 8048aee:	6a 01                	push   $0x1
 8048af0:	e8 5b fd ff ff       	call   8048850 <__printf_chk@plt>
 8048af5:	83 c4 0c             	add    $0xc,%esp
 8048af8:	ff 35 5c d1 04 08    	pushl  0x804d15c
 8048afe:	68 05 ac 04 08       	push   $0x804ac05
 8048b03:	6a 01                	push   $0x1
 8048b05:	e8 46 fd ff ff       	call   8048850 <__printf_chk@plt>
 8048b0a:	83 c4 10             	add    $0x10,%esp
 8048b0d:	83 ec 0c             	sub    $0xc,%esp
 8048b10:	6a 0a                	push   $0xa
 8048b12:	e8 19 fd ff ff       	call   8048830 <putchar@plt>
 8048b17:	83 c4 10             	add    $0x10,%esp
 8048b1a:	83 ec 0c             	sub    $0xc,%esp
 8048b1d:	ff b5 bc fe ff ff    	pushl  -0x144(%ebp)
 8048b23:	e8 a8 fc ff ff       	call   80487d0 <srand@plt>
 8048b28:	83 c4 10             	add    $0x10,%esp
 8048b2b:	83 bd c8 fe ff ff 00 	cmpl   $0x0,-0x138(%ebp)
 8048b32:	0f 85 e7 00 00 00    	jne    8048c1f <main+0x37f>
 8048b38:	83 bd cc fe ff ff 00 	cmpl   $0x0,-0x134(%ebp)
 8048b3f:	0f 84 d4 02 00 00    	je     8048e19 <main+0x579>
 8048b45:	50                   	push   %eax
 8048b46:	50                   	push   %eax
 8048b47:	68 36 ac 04 08       	push   $0x804ac36
 8048b4c:	ff b5 cc fe ff ff    	pushl  -0x134(%ebp)
 8048b52:	e8 b9 fc ff ff       	call   8048810 <fopen@plt>
 8048b57:	83 c4 10             	add    $0x10,%esp
 8048b5a:	85 c0                	test   %eax,%eax
 8048b5c:	89 85 d4 fe ff ff    	mov    %eax,-0x12c(%ebp)
 8048b62:	0f 84 0d 03 00 00    	je     8048e75 <main+0x5d5>
 8048b68:	8d 85 e4 fe ff ff    	lea    -0x11c(%ebp),%eax
 8048b6e:	56                   	push   %esi
 8048b6f:	ff b5 d4 fe ff ff    	pushl  -0x12c(%ebp)
 8048b75:	68 00 01 00 00       	push   $0x100
 8048b7a:	50                   	push   %eax
 8048b7b:	e8 c0 fb ff ff       	call   8048740 <fgets@plt>
 8048b80:	8d 95 e4 fe ff ff    	lea    -0x11c(%ebp),%edx
 8048b86:	83 c4 10             	add    $0x10,%esp
 8048b89:	39 d0                	cmp    %edx,%eax
 8048b8b:	0f 85 72 02 00 00    	jne    8048e03 <main+0x563>
 8048b91:	50                   	push   %eax
 8048b92:	50                   	push   %eax
 8048b93:	8d 85 e4 fe ff ff    	lea    -0x11c(%ebp),%eax
 8048b99:	6a 3a                	push   $0x3a
 8048b9b:	50                   	push   %eax
 8048b9c:	e8 3f fc ff ff       	call   80487e0 <strchr@plt>
 8048ba1:	83 c4 10             	add    $0x10,%esp
 8048ba4:	85 c0                	test   %eax,%eax
 8048ba6:	0f 84 1b 02 00 00    	je     8048dc7 <main+0x527>
 8048bac:	c6 00 00             	movb   $0x0,(%eax)
 8048baf:	83 c0 01             	add    $0x1,%eax
 8048bb2:	0f b6 9d e4 fe ff ff 	movzbl -0x11c(%ebp),%ebx
 8048bb9:	89 c6                	mov    %eax,%esi
 8048bbb:	74 14                	je     8048bd1 <main+0x331>
 8048bbd:	50                   	push   %eax
 8048bbe:	50                   	push   %eax
 8048bbf:	6a 0a                	push   $0xa
 8048bc1:	56                   	push   %esi
 8048bc2:	e8 19 fc ff ff       	call   80487e0 <strchr@plt>
 8048bc7:	83 c4 10             	add    $0x10,%esp
 8048bca:	85 c0                	test   %eax,%eax
 8048bcc:	74 03                	je     8048bd1 <main+0x331>
 8048bce:	c6 00 00             	movb   $0x0,(%eax)
 8048bd1:	80 fb 52             	cmp    $0x52,%bl
 8048bd4:	0f 84 ab 01 00 00    	je     8048d85 <main+0x4e5>
 8048bda:	80 fb 53             	cmp    $0x53,%bl
 8048bdd:	75 89                	jne    8048b68 <main+0x2c8>
 8048bdf:	a1 20 d2 c6 09       	mov    0x9c6d220,%eax
 8048be4:	85 c0                	test   %eax,%eax
 8048be6:	7e 80                	jle    8048b68 <main+0x2c8>
 8048be8:	6b c0 34             	imul   $0x34,%eax,%eax
 8048beb:	bb 6c d2 c6 09       	mov    $0x9c6d26c,%ebx
 8048bf0:	8d 3c 18             	lea    (%eax,%ebx,1),%edi
 8048bf3:	90                   	nop
 8048bf4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8048bf8:	83 ec 08             	sub    $0x8,%esp
 8048bfb:	56                   	push   %esi
 8048bfc:	ff 33                	pushl  (%ebx)
 8048bfe:	e8 0d fb ff ff       	call   8048710 <strcmp@plt>
 8048c03:	83 c4 10             	add    $0x10,%esp
 8048c06:	85 c0                	test   %eax,%eax
 8048c08:	75 09                	jne    8048c13 <main+0x373>
 8048c0a:	b8 01 00 00 00       	mov    $0x1,%eax
 8048c0f:	66 89 43 04          	mov    %ax,0x4(%ebx)
 8048c13:	83 c3 34             	add    $0x34,%ebx
 8048c16:	39 fb                	cmp    %edi,%ebx
 8048c18:	75 de                	jne    8048bf8 <main+0x358>
 8048c1a:	e9 49 ff ff ff       	jmp    8048b68 <main+0x2c8>
 8048c1f:	c7 05 24 d2 c6 09 01 	movl   $0x1,0x9c6d224
 8048c26:	00 00 00 
 8048c29:	c7 05 20 d2 c6 09 01 	movl   $0x1,0x9c6d220
 8048c30:	00 00 00 
 8048c33:	c7 05 a0 e6 c6 09 c0 	movl   $0x8049ec0,0x9c6e6a0
 8048c3a:	9e 04 08 
 8048c3d:	c7 05 cc e6 c6 09 12 	movl   $0x804ac12,0x9c6e6cc
 8048c44:	ac 04 08 
 8048c47:	66 c7 05 d0 e6 c6 09 	movw   $0x1,0x9c6e6d0
 8048c4e:	01 00 
 8048c50:	c7 05 40 d2 c6 09 90 	movl   $0x804a090,0x9c6d240
 8048c57:	a0 04 08 
 8048c5a:	c7 05 6c d2 c6 09 24 	movl   $0x804ac24,0x9c6d26c
 8048c61:	ac 04 08 
 8048c64:	66 c7 05 70 d2 c6 09 	movw   $0x1,0x9c6d270
 8048c6b:	01 00 
 8048c6d:	83 ec 0c             	sub    $0xc,%esp
 8048c70:	31 db                	xor    %ebx,%ebx
 8048c72:	be d0 e6 c6 09       	mov    $0x9c6e6d0,%esi
 8048c77:	68 00 40 00 00       	push   $0x4000
 8048c7c:	e8 1f 17 00 00       	call   804a3a0 <set_fcyc_cache_size>
 8048c81:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8048c88:	e8 03 17 00 00       	call   804a390 <set_fcyc_clear_cache>
 8048c8d:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8048c94:	e8 57 17 00 00       	call   804a3f0 <set_fcyc_compensate>
 8048c99:	83 c4 10             	add    $0x10,%esp
 8048c9c:	83 3d 24 d2 c6 09 00 	cmpl   $0x0,0x9c6d224
 8048ca3:	7f 19                	jg     8048cbe <main+0x41e>
 8048ca5:	eb 2b                	jmp    8048cd2 <main+0x432>
 8048ca7:	89 f6                	mov    %esi,%esi
 8048ca9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
 8048cb0:	83 c3 01             	add    $0x1,%ebx
 8048cb3:	83 c6 34             	add    $0x34,%esi
 8048cb6:	39 1d 24 d2 c6 09    	cmp    %ebx,0x9c6d224
 8048cbc:	7e 14                	jle    8048cd2 <main+0x432>
 8048cbe:	66 83 3e 00          	cmpw   $0x0,(%esi)
 8048cc2:	74 ec                	je     8048cb0 <main+0x410>
 8048cc4:	83 ec 0c             	sub    $0xc,%esp
 8048cc7:	53                   	push   %ebx
 8048cc8:	e8 63 0a 00 00       	call   8049730 <test_rotate>
 8048ccd:	83 c4 10             	add    $0x10,%esp
 8048cd0:	eb de                	jmp    8048cb0 <main+0x410>
 8048cd2:	31 db                	xor    %ebx,%ebx
 8048cd4:	83 3d 20 d2 c6 09 00 	cmpl   $0x0,0x9c6d220
 8048cdb:	be 70 d2 c6 09       	mov    $0x9c6d270,%esi
 8048ce0:	7f 14                	jg     8048cf6 <main+0x456>
 8048ce2:	eb 26                	jmp    8048d0a <main+0x46a>
 8048ce4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8048ce8:	83 c3 01             	add    $0x1,%ebx
 8048ceb:	83 c6 34             	add    $0x34,%esi
 8048cee:	39 1d 20 d2 c6 09    	cmp    %ebx,0x9c6d220
 8048cf4:	7e 14                	jle    8048d0a <main+0x46a>
 8048cf6:	66 83 3e 00          	cmpw   $0x0,(%esi)
 8048cfa:	74 ec                	je     8048ce8 <main+0x448>
 8048cfc:	83 ec 0c             	sub    $0xc,%esp
 8048cff:	53                   	push   %ebx
 8048d00:	e8 7b 0d 00 00       	call   8049a80 <test_smooth>
 8048d05:	83 c4 10             	add    $0x10,%esp
 8048d08:	eb de                	jmp    8048ce8 <main+0x448>
 8048d0a:	83 bd c8 fe ff ff 00 	cmpl   $0x0,-0x138(%ebp)
 8048d11:	0f 85 be 00 00 00    	jne    8048dd5 <main+0x535>
 8048d17:	83 ec 0c             	sub    $0xc,%esp
 8048d1a:	68 50 ac 04 08       	push   $0x804ac50
 8048d1f:	e8 8c fa ff ff       	call   80487b0 <puts@plt>
 8048d24:	58                   	pop    %eax
 8048d25:	ff 35 d0 d1 04 08    	pushl  0x804d1d0
 8048d2b:	ff 35 dc d1 04 08    	pushl  0x804d1dc
 8048d31:	ff 35 d8 d1 04 08    	pushl  0x804d1d8
 8048d37:	68 6d ac 04 08       	push   $0x804ac6d
 8048d3c:	6a 01                	push   $0x1
 8048d3e:	e8 0d fb ff ff       	call   8048850 <__printf_chk@plt>
 8048d43:	83 c4 14             	add    $0x14,%esp
 8048d46:	ff 35 c0 d1 04 08    	pushl  0x804d1c0
 8048d4c:	ff 35 cc d1 04 08    	pushl  0x804d1cc
 8048d52:	ff 35 c8 d1 04 08    	pushl  0x804d1c8
 8048d58:	68 83 ac 04 08       	push   $0x804ac83
 8048d5d:	6a 01                	push   $0x1
 8048d5f:	e8 ec fa ff ff       	call   8048850 <__printf_chk@plt>
 8048d64:	83 c4 20             	add    $0x20,%esp
 8048d67:	31 c0                	xor    %eax,%eax
 8048d69:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
 8048d6c:	65 33 0d 14 00 00 00 	xor    %gs:0x14,%ecx
 8048d73:	0f 85 1b 01 00 00    	jne    8048e94 <main+0x5f4>
 8048d79:	8d 65 f0             	lea    -0x10(%ebp),%esp
 8048d7c:	59                   	pop    %ecx
 8048d7d:	5b                   	pop    %ebx
 8048d7e:	5e                   	pop    %esi
 8048d7f:	5f                   	pop    %edi
 8048d80:	5d                   	pop    %ebp
 8048d81:	8d 61 fc             	lea    -0x4(%ecx),%esp
 8048d84:	c3                   	ret    
 8048d85:	a1 24 d2 c6 09       	mov    0x9c6d224,%eax
 8048d8a:	85 c0                	test   %eax,%eax
 8048d8c:	0f 8e d6 fd ff ff    	jle    8048b68 <main+0x2c8>
 8048d92:	6b c0 34             	imul   $0x34,%eax,%eax
 8048d95:	bb cc e6 c6 09       	mov    $0x9c6e6cc,%ebx
 8048d9a:	8d 3c 18             	lea    (%eax,%ebx,1),%edi
 8048d9d:	8d 76 00             	lea    0x0(%esi),%esi
 8048da0:	83 ec 08             	sub    $0x8,%esp
 8048da3:	56                   	push   %esi
 8048da4:	ff 33                	pushl  (%ebx)
 8048da6:	e8 65 f9 ff ff       	call   8048710 <strcmp@plt>
 8048dab:	83 c4 10             	add    $0x10,%esp
 8048dae:	85 c0                	test   %eax,%eax
 8048db0:	75 09                	jne    8048dbb <main+0x51b>
 8048db2:	b8 01 00 00 00       	mov    $0x1,%eax
 8048db7:	66 89 43 04          	mov    %ax,0x4(%ebx)
 8048dbb:	83 c3 34             	add    $0x34,%ebx
 8048dbe:	39 fb                	cmp    %edi,%ebx
 8048dc0:	75 de                	jne    8048da0 <main+0x500>
 8048dc2:	e9 a1 fd ff ff       	jmp    8048b68 <main+0x2c8>
 8048dc7:	0f b6 9d e4 fe ff ff 	movzbl -0x11c(%ebp),%ebx
 8048dce:	31 f6                	xor    %esi,%esi
 8048dd0:	e9 fc fd ff ff       	jmp    8048bd1 <main+0x331>
 8048dd5:	52                   	push   %edx
 8048dd6:	52                   	push   %edx
 8048dd7:	ff 35 cc d1 04 08    	pushl  0x804d1cc
 8048ddd:	ff 35 c8 d1 04 08    	pushl  0x804d1c8
 8048de3:	ff 35 dc d1 04 08    	pushl  0x804d1dc
 8048de9:	ff 35 d8 d1 04 08    	pushl  0x804d1d8
 8048def:	68 38 ac 04 08       	push   $0x804ac38
 8048df4:	6a 01                	push   $0x1
 8048df6:	e8 55 fa ff ff       	call   8048850 <__printf_chk@plt>
 8048dfb:	83 c4 20             	add    $0x20,%esp
 8048dfe:	e9 64 ff ff ff       	jmp    8048d67 <main+0x4c7>
 8048e03:	83 ec 0c             	sub    $0xc,%esp
 8048e06:	ff b5 d4 fe ff ff    	pushl  -0x12c(%ebp)
 8048e0c:	e8 3f f9 ff ff       	call   8048750 <fclose@plt>
 8048e11:	83 c4 10             	add    $0x10,%esp
 8048e14:	e9 54 fe ff ff       	jmp    8048c6d <main+0x3cd>
 8048e19:	8b 15 24 d2 c6 09    	mov    0x9c6d224,%edx
 8048e1f:	85 d2                	test   %edx,%edx
 8048e21:	7e 1d                	jle    8048e40 <main+0x5a0>
 8048e23:	6b d2 34             	imul   $0x34,%edx,%edx
 8048e26:	b8 d0 e6 c6 09       	mov    $0x9c6e6d0,%eax
 8048e2b:	01 c2                	add    %eax,%edx
 8048e2d:	8d 76 00             	lea    0x0(%esi),%esi
 8048e30:	bb 01 00 00 00       	mov    $0x1,%ebx
 8048e35:	83 c0 34             	add    $0x34,%eax
 8048e38:	66 89 58 cc          	mov    %bx,-0x34(%eax)
 8048e3c:	39 d0                	cmp    %edx,%eax
 8048e3e:	75 f0                	jne    8048e30 <main+0x590>
 8048e40:	8b 15 20 d2 c6 09    	mov    0x9c6d220,%edx
 8048e46:	85 d2                	test   %edx,%edx
 8048e48:	0f 8e 1f fe ff ff    	jle    8048c6d <main+0x3cd>
 8048e4e:	6b d2 34             	imul   $0x34,%edx,%edx
 8048e51:	b8 70 d2 c6 09       	mov    $0x9c6d270,%eax
 8048e56:	01 c2                	add    %eax,%edx
 8048e58:	90                   	nop
 8048e59:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8048e60:	b9 01 00 00 00       	mov    $0x1,%ecx
 8048e65:	83 c0 34             	add    $0x34,%eax
 8048e68:	66 89 48 cc          	mov    %cx,-0x34(%eax)
 8048e6c:	39 d0                	cmp    %edx,%eax
 8048e6e:	75 f0                	jne    8048e60 <main+0x5c0>
 8048e70:	e9 f8 fd ff ff       	jmp    8048c6d <main+0x3cd>
 8048e75:	50                   	push   %eax
 8048e76:	ff b5 cc fe ff ff    	pushl  -0x134(%ebp)
 8048e7c:	68 9d ab 04 08       	push   $0x804ab9d
 8048e81:	6a 01                	push   $0x1
 8048e83:	e8 c8 f9 ff ff       	call   8048850 <__printf_chk@plt>
 8048e88:	c7 04 24 fb ff ff ff 	movl   $0xfffffffb,(%esp)
 8048e8f:	e8 2c f9 ff ff       	call   80487c0 <exit@plt>
 8048e94:	e8 e7 f8 ff ff       	call   8048780 <__stack_chk_fail@plt>
 8048e99:	8b 85 d4 fe ff ff    	mov    -0x12c(%ebp),%eax
 8048e9f:	53                   	push   %ebx
 8048ea0:	ff 30                	pushl  (%eax)
 8048ea2:	68 f4 aa 04 08       	push   $0x804aaf4
 8048ea7:	6a 01                	push   $0x1
 8048ea9:	e8 a2 f9 ff ff       	call   8048850 <__printf_chk@plt>
 8048eae:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8048eb5:	e8 06 f9 ff ff       	call   80487c0 <exit@plt>
 8048eba:	83 ec 0c             	sub    $0xc,%esp
 8048ebd:	6a 00                	push   $0x0
 8048ebf:	e8 fc f8 ff ff       	call   80487c0 <exit@plt>
 8048ec4:	57                   	push   %edi
 8048ec5:	53                   	push   %ebx
 8048ec6:	eb b4                	jmp    8048e7c <main+0x5dc>

08048ec8 <_start>:
 8048ec8:	31 ed                	xor    %ebp,%ebp
 8048eca:	5e                   	pop    %esi
 8048ecb:	89 e1                	mov    %esp,%ecx
 8048ecd:	83 e4 f0             	and    $0xfffffff0,%esp
 8048ed0:	50                   	push   %eax
 8048ed1:	54                   	push   %esp
 8048ed2:	52                   	push   %edx
 8048ed3:	68 e0 a7 04 08       	push   $0x804a7e0
 8048ed8:	68 80 a7 04 08       	push   $0x804a780
 8048edd:	51                   	push   %ecx
 8048ede:	56                   	push   %esi
 8048edf:	68 a0 88 04 08       	push   $0x80488a0
 8048ee4:	e8 07 f9 ff ff       	call   80487f0 <__libc_start_main@plt>
 8048ee9:	f4                   	hlt    
 8048eea:	66 90                	xchg   %ax,%ax
 8048eec:	66 90                	xchg   %ax,%ax
 8048eee:	66 90                	xchg   %ax,%ax

08048ef0 <__x86.get_pc_thunk.bx>:
 8048ef0:	8b 1c 24             	mov    (%esp),%ebx
 8048ef3:	c3                   	ret    
 8048ef4:	66 90                	xchg   %ax,%ax
 8048ef6:	66 90                	xchg   %ax,%ax
 8048ef8:	66 90                	xchg   %ax,%ax
 8048efa:	66 90                	xchg   %ax,%ax
 8048efc:	66 90                	xchg   %ax,%ax
 8048efe:	66 90                	xchg   %ax,%ax

08048f00 <deregister_tm_clones>:
 8048f00:	b8 7b d1 04 08       	mov    $0x804d17b,%eax
 8048f05:	2d 78 d1 04 08       	sub    $0x804d178,%eax
 8048f0a:	83 f8 06             	cmp    $0x6,%eax
 8048f0d:	76 1a                	jbe    8048f29 <deregister_tm_clones+0x29>
 8048f0f:	b8 00 00 00 00       	mov    $0x0,%eax
 8048f14:	85 c0                	test   %eax,%eax
 8048f16:	74 11                	je     8048f29 <deregister_tm_clones+0x29>
 8048f18:	55                   	push   %ebp
 8048f19:	89 e5                	mov    %esp,%ebp
 8048f1b:	83 ec 14             	sub    $0x14,%esp
 8048f1e:	68 78 d1 04 08       	push   $0x804d178
 8048f23:	ff d0                	call   *%eax
 8048f25:	83 c4 10             	add    $0x10,%esp
 8048f28:	c9                   	leave  
 8048f29:	f3 c3                	repz ret 
 8048f2b:	90                   	nop
 8048f2c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

08048f30 <register_tm_clones>:
 8048f30:	b8 78 d1 04 08       	mov    $0x804d178,%eax
 8048f35:	2d 78 d1 04 08       	sub    $0x804d178,%eax
 8048f3a:	c1 f8 02             	sar    $0x2,%eax
 8048f3d:	89 c2                	mov    %eax,%edx
 8048f3f:	c1 ea 1f             	shr    $0x1f,%edx
 8048f42:	01 d0                	add    %edx,%eax
 8048f44:	d1 f8                	sar    %eax
 8048f46:	74 1b                	je     8048f63 <register_tm_clones+0x33>
 8048f48:	ba 00 00 00 00       	mov    $0x0,%edx
 8048f4d:	85 d2                	test   %edx,%edx
 8048f4f:	74 12                	je     8048f63 <register_tm_clones+0x33>
 8048f51:	55                   	push   %ebp
 8048f52:	89 e5                	mov    %esp,%ebp
 8048f54:	83 ec 10             	sub    $0x10,%esp
 8048f57:	50                   	push   %eax
 8048f58:	68 78 d1 04 08       	push   $0x804d178
 8048f5d:	ff d2                	call   *%edx
 8048f5f:	83 c4 10             	add    $0x10,%esp
 8048f62:	c9                   	leave  
 8048f63:	f3 c3                	repz ret 
 8048f65:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8048f69:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08048f70 <__do_global_dtors_aux>:
 8048f70:	80 3d a4 d1 04 08 00 	cmpb   $0x0,0x804d1a4
 8048f77:	75 13                	jne    8048f8c <__do_global_dtors_aux+0x1c>
 8048f79:	55                   	push   %ebp
 8048f7a:	89 e5                	mov    %esp,%ebp
 8048f7c:	83 ec 08             	sub    $0x8,%esp
 8048f7f:	e8 7c ff ff ff       	call   8048f00 <deregister_tm_clones>
 8048f84:	c6 05 a4 d1 04 08 01 	movb   $0x1,0x804d1a4
 8048f8b:	c9                   	leave  
 8048f8c:	f3 c3                	repz ret 
 8048f8e:	66 90                	xchg   %ax,%ax

08048f90 <frame_dummy>:
 8048f90:	b8 08 cf 04 08       	mov    $0x804cf08,%eax
 8048f95:	8b 10                	mov    (%eax),%edx
 8048f97:	85 d2                	test   %edx,%edx
 8048f99:	75 05                	jne    8048fa0 <frame_dummy+0x10>
 8048f9b:	eb 93                	jmp    8048f30 <register_tm_clones>
 8048f9d:	8d 76 00             	lea    0x0(%esi),%esi
 8048fa0:	ba 00 00 00 00       	mov    $0x0,%edx
 8048fa5:	85 d2                	test   %edx,%edx
 8048fa7:	74 f2                	je     8048f9b <frame_dummy+0xb>
 8048fa9:	55                   	push   %ebp
 8048faa:	89 e5                	mov    %esp,%ebp
 8048fac:	83 ec 14             	sub    $0x14,%esp
 8048faf:	50                   	push   %eax
 8048fb0:	ff d2                	call   *%edx
 8048fb2:	83 c4 10             	add    $0x10,%esp
 8048fb5:	c9                   	leave  
 8048fb6:	e9 75 ff ff ff       	jmp    8048f30 <register_tm_clones>
 8048fbb:	66 90                	xchg   %ax,%ax
 8048fbd:	66 90                	xchg   %ax,%ax
 8048fbf:	90                   	nop

08048fc0 <func_wrapper>:
 8048fc0:	83 ec 10             	sub    $0x10,%esp
 8048fc3:	8b 44 24 14          	mov    0x14(%esp),%eax
 8048fc7:	ff 70 0c             	pushl  0xc(%eax)
 8048fca:	ff 70 08             	pushl  0x8(%eax)
 8048fcd:	8b 50 04             	mov    0x4(%eax),%edx
 8048fd0:	ff 32                	pushl  (%edx)
 8048fd2:	ff 10                	call   *(%eax)
 8048fd4:	83 c4 1c             	add    $0x1c,%esp
 8048fd7:	c3                   	ret    
 8048fd8:	90                   	nop
 8048fd9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

08048fe0 <create>:
 8048fe0:	89 c2                	mov    %eax,%edx
 8048fe2:	c7 05 e8 d1 04 08 00 	movl   $0x804d200,0x804d1e8
 8048fe9:	d2 04 08 
 8048fec:	0f af d0             	imul   %eax,%edx
 8048fef:	8d 14 52             	lea    (%edx,%edx,2),%edx
 8048ff2:	01 d2                	add    %edx,%edx
 8048ff4:	8d 8a 00 d2 04 08    	lea    0x804d200(%edx),%ecx
 8048ffa:	01 ca                	add    %ecx,%edx
 8048ffc:	85 c0                	test   %eax,%eax
 8048ffe:	89 0d e0 d1 04 08    	mov    %ecx,0x804d1e0
 8049004:	89 15 e4 d1 04 08    	mov    %edx,0x804d1e4
 804900a:	0f 8e d6 00 00 00    	jle    80490e6 <create+0x106>
 8049010:	55                   	push   %ebp
 8049011:	57                   	push   %edi
 8049012:	8d 3c 40             	lea    (%eax,%eax,2),%edi
 8049015:	56                   	push   %esi
 8049016:	53                   	push   %ebx
 8049017:	bb 00 d2 04 08       	mov    $0x804d200,%ebx
 804901c:	83 ec 2c             	sub    $0x2c,%esp
 804901f:	89 44 24 1c          	mov    %eax,0x1c(%esp)
 8049023:	8d 04 3f             	lea    (%edi,%edi,1),%eax
 8049026:	89 54 24 10          	mov    %edx,0x10(%esp)
 804902a:	89 4c 24 14          	mov    %ecx,0x14(%esp)
 804902e:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
 8049035:	00 
 8049036:	89 44 24 18          	mov    %eax,0x18(%esp)
 804903a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8049040:	8b 44 24 18          	mov    0x18(%esp),%eax
 8049044:	8b 7c 24 14          	mov    0x14(%esp),%edi
 8049048:	8b 6c 24 10          	mov    0x10(%esp),%ebp
 804904c:	8d 34 18             	lea    (%eax,%ebx,1),%esi
 804904f:	90                   	nop
 8049050:	e8 eb f7 ff ff       	call   8048840 <rand@plt>
 8049055:	99                   	cltd   
 8049056:	83 c3 06             	add    $0x6,%ebx
 8049059:	83 c5 06             	add    $0x6,%ebp
 804905c:	c1 ea 10             	shr    $0x10,%edx
 804905f:	83 c7 06             	add    $0x6,%edi
 8049062:	01 d0                	add    %edx,%eax
 8049064:	0f b7 c0             	movzwl %ax,%eax
 8049067:	29 d0                	sub    %edx,%eax
 8049069:	66 89 43 fa          	mov    %ax,-0x6(%ebx)
 804906d:	e8 ce f7 ff ff       	call   8048840 <rand@plt>
 8049072:	99                   	cltd   
 8049073:	c1 ea 10             	shr    $0x10,%edx
 8049076:	01 d0                	add    %edx,%eax
 8049078:	0f b7 c0             	movzwl %ax,%eax
 804907b:	29 d0                	sub    %edx,%eax
 804907d:	66 89 43 fc          	mov    %ax,-0x4(%ebx)
 8049081:	e8 ba f7 ff ff       	call   8048840 <rand@plt>
 8049086:	99                   	cltd   
 8049087:	31 c9                	xor    %ecx,%ecx
 8049089:	c1 ea 10             	shr    $0x10,%edx
 804908c:	01 d0                	add    %edx,%eax
 804908e:	0f b7 c0             	movzwl %ax,%eax
 8049091:	29 d0                	sub    %edx,%eax
 8049093:	0f b7 53 fa          	movzwl -0x6(%ebx),%edx
 8049097:	66 89 43 fe          	mov    %ax,-0x2(%ebx)
 804909b:	66 89 55 fa          	mov    %dx,-0x6(%ebp)
 804909f:	0f b7 53 fc          	movzwl -0x4(%ebx),%edx
 80490a3:	66 89 45 fe          	mov    %ax,-0x2(%ebp)
 80490a7:	31 c0                	xor    %eax,%eax
 80490a9:	66 89 55 fc          	mov    %dx,-0x4(%ebp)
 80490ad:	31 d2                	xor    %edx,%edx
 80490af:	66 89 47 fa          	mov    %ax,-0x6(%edi)
 80490b3:	66 89 57 fc          	mov    %dx,-0x4(%edi)
 80490b7:	66 89 4f fe          	mov    %cx,-0x2(%edi)
 80490bb:	39 f3                	cmp    %esi,%ebx
 80490bd:	75 91                	jne    8049050 <create+0x70>
 80490bf:	83 44 24 0c 01       	addl   $0x1,0xc(%esp)
 80490c4:	8b 74 24 18          	mov    0x18(%esp),%esi
 80490c8:	8b 44 24 0c          	mov    0xc(%esp),%eax
 80490cc:	01 74 24 10          	add    %esi,0x10(%esp)
 80490d0:	01 74 24 14          	add    %esi,0x14(%esp)
 80490d4:	39 44 24 1c          	cmp    %eax,0x1c(%esp)
 80490d8:	0f 85 62 ff ff ff    	jne    8049040 <create+0x60>
 80490de:	83 c4 2c             	add    $0x2c,%esp
 80490e1:	5b                   	pop    %ebx
 80490e2:	5e                   	pop    %esi
 80490e3:	5f                   	pop    %edi
 80490e4:	5d                   	pop    %ebp
 80490e5:	c3                   	ret    
 80490e6:	f3 c3                	repz ret 
 80490e8:	90                   	nop
 80490e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

080490f0 <check_orig>:
 80490f0:	85 c0                	test   %eax,%eax
 80490f2:	0f 8e a7 00 00 00    	jle    804919f <check_orig+0xaf>
 80490f8:	55                   	push   %ebp
 80490f9:	57                   	push   %edi
 80490fa:	89 c7                	mov    %eax,%edi
 80490fc:	56                   	push   %esi
 80490fd:	53                   	push   %ebx
 80490fe:	8d 04 40             	lea    (%eax,%eax,2),%eax
 8049101:	83 ec 1c             	sub    $0x1c,%esp
 8049104:	8b 15 e8 d1 04 08    	mov    0x804d1e8,%edx
 804910a:	8b 2d e4 d1 04 08    	mov    0x804d1e4,%ebp
 8049110:	01 c0                	add    %eax,%eax
 8049112:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 8049119:	00 
 804911a:	89 44 24 0c          	mov    %eax,0xc(%esp)
 804911e:	8b 44 24 0c          	mov    0xc(%esp),%eax
 8049122:	8d 34 10             	lea    (%eax,%edx,1),%esi
 8049125:	89 e8                	mov    %ebp,%eax
 8049127:	eb 1b                	jmp    8049144 <check_orig+0x54>
 8049129:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8049130:	0f b7 58 04          	movzwl 0x4(%eax),%ebx
 8049134:	66 39 5a 04          	cmp    %bx,0x4(%edx)
 8049138:	75 22                	jne    804915c <check_orig+0x6c>
 804913a:	83 c2 06             	add    $0x6,%edx
 804913d:	83 c0 06             	add    $0x6,%eax
 8049140:	39 d6                	cmp    %edx,%esi
 8049142:	74 44                	je     8049188 <check_orig+0x98>
 8049144:	0f b7 08             	movzwl (%eax),%ecx
 8049147:	66 39 0a             	cmp    %cx,(%edx)
 804914a:	0f b7 48 02          	movzwl 0x2(%eax),%ecx
 804914e:	0f 95 c3             	setne  %bl
 8049151:	66 39 4a 02          	cmp    %cx,0x2(%edx)
 8049155:	0f 95 c1             	setne  %cl
 8049158:	08 cb                	or     %cl,%bl
 804915a:	74 d4                	je     8049130 <check_orig+0x40>
 804915c:	83 ec 0c             	sub    $0xc,%esp
 804915f:	6a 0a                	push   $0xa
 8049161:	e8 ca f6 ff ff       	call   8048830 <putchar@plt>
 8049166:	c7 04 24 08 a8 04 08 	movl   $0x804a808,(%esp)
 804916d:	e8 3e f6 ff ff       	call   80487b0 <puts@plt>
 8049172:	83 c4 10             	add    $0x10,%esp
 8049175:	b8 01 00 00 00       	mov    $0x1,%eax
 804917a:	83 c4 1c             	add    $0x1c,%esp
 804917d:	5b                   	pop    %ebx
 804917e:	5e                   	pop    %esi
 804917f:	5f                   	pop    %edi
 8049180:	5d                   	pop    %ebp
 8049181:	c3                   	ret    
 8049182:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8049188:	83 44 24 08 01       	addl   $0x1,0x8(%esp)
 804918d:	03 6c 24 0c          	add    0xc(%esp),%ebp
 8049191:	89 f2                	mov    %esi,%edx
 8049193:	8b 44 24 08          	mov    0x8(%esp),%eax
 8049197:	39 c7                	cmp    %eax,%edi
 8049199:	75 83                	jne    804911e <check_orig+0x2e>
 804919b:	31 c0                	xor    %eax,%eax
 804919d:	eb db                	jmp    804917a <check_orig+0x8a>
 804919f:	31 c0                	xor    %eax,%eax
 80491a1:	c3                   	ret    
 80491a2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 80491a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

080491b0 <check_rotate>:
 80491b0:	55                   	push   %ebp
 80491b1:	57                   	push   %edi
 80491b2:	56                   	push   %esi
 80491b3:	53                   	push   %ebx
 80491b4:	89 c3                	mov    %eax,%ebx
 80491b6:	83 ec 4c             	sub    $0x4c,%esp
 80491b9:	89 44 24 10          	mov    %eax,0x10(%esp)
 80491bd:	e8 2e ff ff ff       	call   80490f0 <check_orig>
 80491c2:	85 c0                	test   %eax,%eax
 80491c4:	0f 85 d0 01 00 00    	jne    804939a <check_rotate+0x1ea>
 80491ca:	85 db                	test   %ebx,%ebx
 80491cc:	89 d9                	mov    %ebx,%ecx
 80491ce:	0f 8e 35 01 00 00    	jle    8049309 <check_rotate+0x159>
 80491d4:	8d 43 ff             	lea    -0x1(%ebx),%eax
 80491d7:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
 80491de:	00 
 80491df:	c7 44 24 20 00 00 00 	movl   $0x0,0x20(%esp)
 80491e6:	00 
 80491e7:	c7 44 24 1c 00 00 00 	movl   $0x0,0x1c(%esp)
 80491ee:	00 
 80491ef:	c7 44 24 18 00 00 00 	movl   $0x0,0x18(%esp)
 80491f6:	00 
 80491f7:	89 c3                	mov    %eax,%ebx
 80491f9:	89 44 24 3c          	mov    %eax,0x3c(%esp)
 80491fd:	8d 04 49             	lea    (%ecx,%ecx,2),%eax
 8049200:	01 c0                	add    %eax,%eax
 8049202:	89 44 24 38          	mov    %eax,0x38(%esp)
 8049206:	a1 e8 d1 04 08       	mov    0x804d1e8,%eax
 804920b:	89 44 24 30          	mov    %eax,0x30(%esp)
 804920f:	89 d8                	mov    %ebx,%eax
 8049211:	0f af c1             	imul   %ecx,%eax
 8049214:	8d 14 40             	lea    (%eax,%eax,2),%edx
 8049217:	a1 e0 d1 04 08       	mov    0x804d1e0,%eax
 804921c:	8d 44 50 02          	lea    0x2(%eax,%edx,2),%eax
 8049220:	89 44 24 34          	mov    %eax,0x34(%esp)
 8049224:	6b c1 fa             	imul   $0xfffffffa,%ecx,%eax
 8049227:	89 44 24 14          	mov    %eax,0x14(%esp)
 804922b:	90                   	nop
 804922c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8049230:	8b 74 24 34          	mov    0x34(%esp),%esi
 8049234:	8b 7c 24 30          	mov    0x30(%esp),%edi
 8049238:	31 ed                	xor    %ebp,%ebp
 804923a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8049240:	0f b7 47 04          	movzwl 0x4(%edi),%eax
 8049244:	0f b7 4f 02          	movzwl 0x2(%edi),%ecx
 8049248:	0f b7 1f             	movzwl (%edi),%ebx
 804924b:	66 89 44 24 08       	mov    %ax,0x8(%esp)
 8049250:	0f b7 46 fe          	movzwl -0x2(%esi),%eax
 8049254:	66 89 44 24 04       	mov    %ax,0x4(%esp)
 8049259:	0f b7 06             	movzwl (%esi),%eax
 804925c:	66 89 44 24 06       	mov    %ax,0x6(%esp)
 8049261:	66 3b 4c 24 06       	cmp    0x6(%esp),%cx
 8049266:	0f b7 46 02          	movzwl 0x2(%esi),%eax
 804926a:	0f 95 44 24 0b       	setne  0xb(%esp)
 804926f:	66 3b 5c 24 04       	cmp    0x4(%esp),%bx
 8049274:	89 c2                	mov    %eax,%edx
 8049276:	0f b6 44 24 0b       	movzbl 0xb(%esp),%eax
 804927b:	0f 95 44 24 0b       	setne  0xb(%esp)
 8049280:	0a 44 24 0b          	or     0xb(%esp),%al
 8049284:	75 07                	jne    804928d <check_rotate+0xdd>
 8049286:	66 39 54 24 08       	cmp    %dx,0x8(%esp)
 804928b:	74 3e                	je     80492cb <check_rotate+0x11b>
 804928d:	0f b7 44 24 06       	movzwl 0x6(%esp),%eax
 8049292:	83 44 24 18 01       	addl   $0x1,0x18(%esp)
 8049297:	66 89 54 24 2e       	mov    %dx,0x2e(%esp)
 804929c:	66 89 4c 24 24       	mov    %cx,0x24(%esp)
 80492a1:	66 89 5c 24 28       	mov    %bx,0x28(%esp)
 80492a6:	89 6c 24 20          	mov    %ebp,0x20(%esp)
 80492aa:	66 89 44 24 2c       	mov    %ax,0x2c(%esp)
 80492af:	0f b7 44 24 04       	movzwl 0x4(%esp),%eax
 80492b4:	66 89 44 24 2a       	mov    %ax,0x2a(%esp)
 80492b9:	0f b7 44 24 08       	movzwl 0x8(%esp),%eax
 80492be:	66 89 44 24 26       	mov    %ax,0x26(%esp)
 80492c3:	8b 44 24 0c          	mov    0xc(%esp),%eax
 80492c7:	89 44 24 1c          	mov    %eax,0x1c(%esp)
 80492cb:	83 c5 01             	add    $0x1,%ebp
 80492ce:	83 c7 06             	add    $0x6,%edi
 80492d1:	03 74 24 14          	add    0x14(%esp),%esi
 80492d5:	39 6c 24 10          	cmp    %ebp,0x10(%esp)
 80492d9:	0f 85 61 ff ff ff    	jne    8049240 <check_rotate+0x90>
 80492df:	83 44 24 0c 01       	addl   $0x1,0xc(%esp)
 80492e4:	8b 5c 24 38          	mov    0x38(%esp),%ebx
 80492e8:	8b 44 24 0c          	mov    0xc(%esp),%eax
 80492ec:	01 5c 24 30          	add    %ebx,0x30(%esp)
 80492f0:	83 44 24 34 06       	addl   $0x6,0x34(%esp)
 80492f5:	39 44 24 10          	cmp    %eax,0x10(%esp)
 80492f9:	0f 85 31 ff ff ff    	jne    8049230 <check_rotate+0x80>
 80492ff:	8b 5c 24 18          	mov    0x18(%esp),%ebx
 8049303:	31 c0                	xor    %eax,%eax
 8049305:	85 db                	test   %ebx,%ebx
 8049307:	75 08                	jne    8049311 <check_rotate+0x161>
 8049309:	83 c4 4c             	add    $0x4c,%esp
 804930c:	5b                   	pop    %ebx
 804930d:	5e                   	pop    %esi
 804930e:	5f                   	pop    %edi
 804930f:	5d                   	pop    %ebp
 8049310:	c3                   	ret    
 8049311:	83 ec 0c             	sub    $0xc,%esp
 8049314:	6a 0a                	push   $0xa
 8049316:	e8 15 f5 ff ff       	call   8048830 <putchar@plt>
 804931b:	53                   	push   %ebx
 804931c:	ff 74 24 24          	pushl  0x24(%esp)
 8049320:	68 30 a8 04 08       	push   $0x804a830
 8049325:	6a 01                	push   $0x1
 8049327:	e8 24 f5 ff ff       	call   8048850 <__printf_chk@plt>
 804932c:	83 c4 14             	add    $0x14,%esp
 804932f:	68 50 a8 04 08       	push   $0x804a850
 8049334:	e8 77 f4 ff ff       	call   80487b0 <puts@plt>
 8049339:	83 c4 0c             	add    $0xc,%esp
 804933c:	0f b7 44 24 2a       	movzwl 0x2a(%esp),%eax
 8049341:	50                   	push   %eax
 8049342:	0f b7 44 24 2c       	movzwl 0x2c(%esp),%eax
 8049347:	50                   	push   %eax
 8049348:	0f b7 44 24 34       	movzwl 0x34(%esp),%eax
 804934d:	50                   	push   %eax
 804934e:	8b 74 24 30          	mov    0x30(%esp),%esi
 8049352:	56                   	push   %esi
 8049353:	8b 7c 24 30          	mov    0x30(%esp),%edi
 8049357:	57                   	push   %edi
 8049358:	68 88 a8 04 08       	push   $0x804a888
 804935d:	6a 01                	push   $0x1
 804935f:	e8 ec f4 ff ff       	call   8048850 <__printf_chk@plt>
 8049364:	83 c4 1c             	add    $0x1c,%esp
 8049367:	0f b7 44 24 32       	movzwl 0x32(%esp),%eax
 804936c:	50                   	push   %eax
 804936d:	0f b7 44 24 34       	movzwl 0x34(%esp),%eax
 8049372:	50                   	push   %eax
 8049373:	0f b7 44 24 36       	movzwl 0x36(%esp),%eax
 8049378:	50                   	push   %eax
 8049379:	57                   	push   %edi
 804937a:	8b 44 24 50          	mov    0x50(%esp),%eax
 804937e:	29 f0                	sub    %esi,%eax
 8049380:	50                   	push   %eax
 8049381:	68 b4 a8 04 08       	push   $0x804a8b4
 8049386:	6a 01                	push   $0x1
 8049388:	e8 c3 f4 ff ff       	call   8048850 <__printf_chk@plt>
 804938d:	83 c4 20             	add    $0x20,%esp
 8049390:	89 d8                	mov    %ebx,%eax
 8049392:	83 c4 4c             	add    $0x4c,%esp
 8049395:	5b                   	pop    %ebx
 8049396:	5e                   	pop    %esi
 8049397:	5f                   	pop    %edi
 8049398:	5d                   	pop    %ebp
 8049399:	c3                   	ret    
 804939a:	83 c4 4c             	add    $0x4c,%esp
 804939d:	b8 01 00 00 00       	mov    $0x1,%eax
 80493a2:	5b                   	pop    %ebx
 80493a3:	5e                   	pop    %esi
 80493a4:	5f                   	pop    %edi
 80493a5:	5d                   	pop    %ebp
 80493a6:	c3                   	ret    
 80493a7:	89 f6                	mov    %esi,%esi
 80493a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

080493b0 <check_smooth>:
 80493b0:	55                   	push   %ebp
 80493b1:	57                   	push   %edi
 80493b2:	56                   	push   %esi
 80493b3:	53                   	push   %ebx
 80493b4:	89 c3                	mov    %eax,%ebx
 80493b6:	83 ec 7c             	sub    $0x7c,%esp
 80493b9:	89 44 24 14          	mov    %eax,0x14(%esp)
 80493bd:	e8 2e fd ff ff       	call   80490f0 <check_orig>
 80493c2:	85 c0                	test   %eax,%eax
 80493c4:	0f 85 46 02 00 00    	jne    8049610 <check_smooth+0x260>
 80493ca:	85 db                	test   %ebx,%ebx
 80493cc:	0f 8e 23 02 00 00    	jle    80495f5 <check_smooth+0x245>
 80493d2:	a1 e8 d1 04 08       	mov    0x804d1e8,%eax
 80493d7:	c7 44 24 3c 00 00 00 	movl   $0x0,0x3c(%esp)
 80493de:	00 
 80493df:	c7 44 24 48 00 00 00 	movl   $0x0,0x48(%esp)
 80493e6:	00 
 80493e7:	c7 44 24 44 00 00 00 	movl   $0x0,0x44(%esp)
 80493ee:	00 
 80493ef:	c7 44 24 40 00 00 00 	movl   $0x0,0x40(%esp)
 80493f6:	00 
 80493f7:	89 44 24 28          	mov    %eax,0x28(%esp)
 80493fb:	8d 43 ff             	lea    -0x1(%ebx),%eax
 80493fe:	89 44 24 4c          	mov    %eax,0x4c(%esp)
 8049402:	8d 04 5b             	lea    (%ebx,%ebx,2),%eax
 8049405:	01 c0                	add    %eax,%eax
 8049407:	89 44 24 6c          	mov    %eax,0x6c(%esp)
 804940b:	a1 e0 d1 04 08       	mov    0x804d1e0,%eax
 8049410:	89 44 24 64          	mov    %eax,0x64(%esp)
 8049414:	8b 74 24 3c          	mov    0x3c(%esp),%esi
 8049418:	8b 5c 24 4c          	mov    0x4c(%esp),%ebx
 804941c:	c7 44 24 2c 00 00 00 	movl   $0x0,0x2c(%esp)
 8049423:	00 
 8049424:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
 804942b:	00 
 804942c:	89 f0                	mov    %esi,%eax
 804942e:	83 c0 01             	add    $0x1,%eax
 8049431:	39 c3                	cmp    %eax,%ebx
 8049433:	89 44 24 68          	mov    %eax,0x68(%esp)
 8049437:	0f 4e c3             	cmovle %ebx,%eax
 804943a:	89 c3                	mov    %eax,%ebx
 804943c:	89 44 24 60          	mov    %eax,0x60(%esp)
 8049440:	89 f0                	mov    %esi,%eax
 8049442:	83 e8 01             	sub    $0x1,%eax
 8049445:	83 fe 01             	cmp    $0x1,%esi
 8049448:	be 00 00 00 00       	mov    $0x0,%esi
 804944d:	0f 4e c6             	cmovle %esi,%eax
 8049450:	89 44 24 38          	mov    %eax,0x38(%esp)
 8049454:	0f af 44 24 14       	imul   0x14(%esp),%eax
 8049459:	89 44 24 5c          	mov    %eax,0x5c(%esp)
 804945d:	8b 44 24 64          	mov    0x64(%esp),%eax
 8049461:	89 44 24 34          	mov    %eax,0x34(%esp)
 8049465:	89 d8                	mov    %ebx,%eax
 8049467:	83 c0 01             	add    $0x1,%eax
 804946a:	89 44 24 1c          	mov    %eax,0x1c(%esp)
 804946e:	8b 44 24 2c          	mov    0x2c(%esp),%eax
 8049472:	8b 5c 24 4c          	mov    0x4c(%esp),%ebx
 8049476:	83 c0 01             	add    $0x1,%eax
 8049479:	39 d8                	cmp    %ebx,%eax
 804947b:	89 44 24 30          	mov    %eax,0x30(%esp)
 804947f:	0f 4e d8             	cmovle %eax,%ebx
 8049482:	89 5c 24 10          	mov    %ebx,0x10(%esp)
 8049486:	8b 5c 24 60          	mov    0x60(%esp),%ebx
 804948a:	39 5c 24 38          	cmp    %ebx,0x38(%esp)
 804948e:	0f 8f 69 01 00 00    	jg     80495fd <check_smooth+0x24d>
 8049494:	8b 7c 24 10          	mov    0x10(%esp),%edi
 8049498:	8b 44 24 38          	mov    0x38(%esp),%eax
 804949c:	31 f6                	xor    %esi,%esi
 804949e:	8b 6c 24 5c          	mov    0x5c(%esp),%ebp
 80494a2:	31 db                	xor    %ebx,%ebx
 80494a4:	c7 44 24 18 00 00 00 	movl   $0x0,0x18(%esp)
 80494ab:	00 
 80494ac:	83 c7 01             	add    $0x1,%edi
 80494af:	89 44 24 08          	mov    %eax,0x8(%esp)
 80494b3:	31 c0                	xor    %eax,%eax
 80494b5:	89 7c 24 20          	mov    %edi,0x20(%esp)
 80494b9:	2b 7c 24 0c          	sub    0xc(%esp),%edi
 80494bd:	89 7c 24 24          	mov    %edi,0x24(%esp)
 80494c1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 80494c8:	8b 7c 24 0c          	mov    0xc(%esp),%edi
 80494cc:	39 7c 24 10          	cmp    %edi,0x10(%esp)
 80494d0:	7c 3e                	jl     8049510 <check_smooth+0x160>
 80494d2:	8b 4c 24 20          	mov    0x20(%esp),%ecx
 80494d6:	8d 14 2f             	lea    (%edi,%ebp,1),%edx
 80494d9:	8b 7c 24 28          	mov    0x28(%esp),%edi
 80494dd:	8d 14 52             	lea    (%edx,%edx,2),%edx
 80494e0:	01 e9                	add    %ebp,%ecx
 80494e2:	8d 0c 49             	lea    (%ecx,%ecx,2),%ecx
 80494e5:	8d 14 57             	lea    (%edi,%edx,2),%edx
 80494e8:	8d 3c 4f             	lea    (%edi,%ecx,2),%edi
 80494eb:	90                   	nop
 80494ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 80494f0:	0f b7 0a             	movzwl (%edx),%ecx
 80494f3:	83 c2 06             	add    $0x6,%edx
 80494f6:	01 c8                	add    %ecx,%eax
 80494f8:	0f b7 4a fc          	movzwl -0x4(%edx),%ecx
 80494fc:	01 cb                	add    %ecx,%ebx
 80494fe:	0f b7 4a fe          	movzwl -0x2(%edx),%ecx
 8049502:	01 ce                	add    %ecx,%esi
 8049504:	39 d7                	cmp    %edx,%edi
 8049506:	75 e8                	jne    80494f0 <check_smooth+0x140>
 8049508:	8b 54 24 24          	mov    0x24(%esp),%edx
 804950c:	01 54 24 18          	add    %edx,0x18(%esp)
 8049510:	83 44 24 08 01       	addl   $0x1,0x8(%esp)
 8049515:	03 6c 24 14          	add    0x14(%esp),%ebp
 8049519:	8b 7c 24 08          	mov    0x8(%esp),%edi
 804951d:	3b 7c 24 1c          	cmp    0x1c(%esp),%edi
 8049521:	75 a5                	jne    80494c8 <check_smooth+0x118>
 8049523:	8b 4c 24 18          	mov    0x18(%esp),%ecx
 8049527:	99                   	cltd   
 8049528:	f7 f9                	idiv   %ecx
 804952a:	89 c7                	mov    %eax,%edi
 804952c:	89 d8                	mov    %ebx,%eax
 804952e:	99                   	cltd   
 804952f:	f7 f9                	idiv   %ecx
 8049531:	89 c3                	mov    %eax,%ebx
 8049533:	89 f0                	mov    %esi,%eax
 8049535:	8b 74 24 34          	mov    0x34(%esp),%esi
 8049539:	99                   	cltd   
 804953a:	f7 f9                	idiv   %ecx
 804953c:	0f b7 56 02          	movzwl 0x2(%esi),%edx
 8049540:	66 39 da             	cmp    %bx,%dx
 8049543:	89 c5                	mov    %eax,%ebp
 8049545:	0f b7 06             	movzwl (%esi),%eax
 8049548:	0f 95 44 24 0c       	setne  0xc(%esp)
 804954d:	0f b7 76 04          	movzwl 0x4(%esi),%esi
 8049551:	66 39 f8             	cmp    %di,%ax
 8049554:	0f 95 c1             	setne  %cl
 8049557:	0a 4c 24 0c          	or     0xc(%esp),%cl
 804955b:	66 89 74 24 08       	mov    %si,0x8(%esp)
 8049560:	75 07                	jne    8049569 <check_smooth+0x1b9>
 8049562:	66 39 6c 24 08       	cmp    %bp,0x8(%esp)
 8049567:	74 38                	je     80495a1 <check_smooth+0x1f1>
 8049569:	66 89 44 24 58       	mov    %ax,0x58(%esp)
 804956e:	8b 44 24 2c          	mov    0x2c(%esp),%eax
 8049572:	0f b7 74 24 08       	movzwl 0x8(%esp),%esi
 8049577:	83 44 24 40 01       	addl   $0x1,0x40(%esp)
 804957c:	66 89 54 24 56       	mov    %dx,0x56(%esp)
 8049581:	66 89 6c 24 54       	mov    %bp,0x54(%esp)
 8049586:	89 44 24 48          	mov    %eax,0x48(%esp)
 804958a:	8b 44 24 3c          	mov    0x3c(%esp),%eax
 804958e:	66 89 5c 24 50       	mov    %bx,0x50(%esp)
 8049593:	66 89 74 24 52       	mov    %si,0x52(%esp)
 8049598:	66 89 7c 24 5a       	mov    %di,0x5a(%esp)
 804959d:	89 44 24 44          	mov    %eax,0x44(%esp)
 80495a1:	83 44 24 34 06       	addl   $0x6,0x34(%esp)
 80495a6:	8b 5c 24 30          	mov    0x30(%esp),%ebx
 80495aa:	39 5c 24 14          	cmp    %ebx,0x14(%esp)
 80495ae:	74 21                	je     80495d1 <check_smooth+0x221>
 80495b0:	8b 74 24 30          	mov    0x30(%esp),%esi
 80495b4:	bb 00 00 00 00       	mov    $0x0,%ebx
 80495b9:	89 f0                	mov    %esi,%eax
 80495bb:	89 74 24 2c          	mov    %esi,0x2c(%esp)
 80495bf:	83 e8 01             	sub    $0x1,%eax
 80495c2:	83 fe 02             	cmp    $0x2,%esi
 80495c5:	0f 4c c3             	cmovl  %ebx,%eax
 80495c8:	89 44 24 0c          	mov    %eax,0xc(%esp)
 80495cc:	e9 9d fe ff ff       	jmp    804946e <check_smooth+0xbe>
 80495d1:	8b 44 24 68          	mov    0x68(%esp),%eax
 80495d5:	8b 5c 24 6c          	mov    0x6c(%esp),%ebx
 80495d9:	01 5c 24 64          	add    %ebx,0x64(%esp)
 80495dd:	39 44 24 14          	cmp    %eax,0x14(%esp)
 80495e1:	89 44 24 3c          	mov    %eax,0x3c(%esp)
 80495e5:	0f 85 29 fe ff ff    	jne    8049414 <check_smooth+0x64>
 80495eb:	8b 5c 24 40          	mov    0x40(%esp),%ebx
 80495ef:	31 c0                	xor    %eax,%eax
 80495f1:	85 db                	test   %ebx,%ebx
 80495f3:	75 28                	jne    804961d <check_smooth+0x26d>
 80495f5:	83 c4 7c             	add    $0x7c,%esp
 80495f8:	5b                   	pop    %ebx
 80495f9:	5e                   	pop    %esi
 80495fa:	5f                   	pop    %edi
 80495fb:	5d                   	pop    %ebp
 80495fc:	c3                   	ret    
 80495fd:	31 f6                	xor    %esi,%esi
 80495ff:	31 db                	xor    %ebx,%ebx
 8049601:	c7 44 24 18 00 00 00 	movl   $0x0,0x18(%esp)
 8049608:	00 
 8049609:	31 c0                	xor    %eax,%eax
 804960b:	e9 13 ff ff ff       	jmp    8049523 <check_smooth+0x173>
 8049610:	83 c4 7c             	add    $0x7c,%esp
 8049613:	b8 01 00 00 00       	mov    $0x1,%eax
 8049618:	5b                   	pop    %ebx
 8049619:	5e                   	pop    %esi
 804961a:	5f                   	pop    %edi
 804961b:	5d                   	pop    %ebp
 804961c:	c3                   	ret    
 804961d:	83 ec 0c             	sub    $0xc,%esp
 8049620:	6a 0a                	push   $0xa
 8049622:	e8 09 f2 ff ff       	call   8048830 <putchar@plt>
 8049627:	53                   	push   %ebx
 8049628:	ff 74 24 28          	pushl  0x28(%esp)
 804962c:	68 30 a8 04 08       	push   $0x804a830
 8049631:	6a 01                	push   $0x1
 8049633:	e8 18 f2 ff ff       	call   8048850 <__printf_chk@plt>
 8049638:	83 c4 14             	add    $0x14,%esp
 804963b:	68 26 ab 04 08       	push   $0x804ab26
 8049640:	e8 6b f1 ff ff       	call   80487b0 <puts@plt>
 8049645:	83 c4 0c             	add    $0xc,%esp
 8049648:	0f b7 44 24 56       	movzwl 0x56(%esp),%eax
 804964d:	50                   	push   %eax
 804964e:	0f b7 44 24 5e       	movzwl 0x5e(%esp),%eax
 8049653:	50                   	push   %eax
 8049654:	0f b7 44 24 64       	movzwl 0x64(%esp),%eax
 8049659:	50                   	push   %eax
 804965a:	8b 7c 24 58          	mov    0x58(%esp),%edi
 804965e:	57                   	push   %edi
 804965f:	8b 74 24 58          	mov    0x58(%esp),%esi
 8049663:	56                   	push   %esi
 8049664:	68 e0 a8 04 08       	push   $0x804a8e0
 8049669:	6a 01                	push   $0x1
 804966b:	e8 e0 f1 ff ff       	call   8048850 <__printf_chk@plt>
 8049670:	83 c4 1c             	add    $0x1c,%esp
 8049673:	0f b7 44 24 58       	movzwl 0x58(%esp),%eax
 8049678:	50                   	push   %eax
 8049679:	0f b7 44 24 58       	movzwl 0x58(%esp),%eax
 804967e:	50                   	push   %eax
 804967f:	0f b7 44 24 66       	movzwl 0x66(%esp),%eax
 8049684:	50                   	push   %eax
 8049685:	57                   	push   %edi
 8049686:	56                   	push   %esi
 8049687:	68 14 a9 04 08       	push   $0x804a914
 804968c:	6a 01                	push   $0x1
 804968e:	e8 bd f1 ff ff       	call   8048850 <__printf_chk@plt>
 8049693:	83 c4 20             	add    $0x20,%esp
 8049696:	89 d8                	mov    %ebx,%eax
 8049698:	83 c4 7c             	add    $0x7c,%esp
 804969b:	5b                   	pop    %ebx
 804969c:	5e                   	pop    %esi
 804969d:	5f                   	pop    %edi
 804969e:	5d                   	pop    %ebp
 804969f:	c3                   	ret    

080496a0 <add_smooth_function>:
 80496a0:	a1 20 d2 c6 09       	mov    0x9c6d220,%eax
 80496a5:	53                   	push   %ebx
 80496a6:	8b 5c 24 08          	mov    0x8(%esp),%ebx
 80496aa:	6b c8 34             	imul   $0x34,%eax,%ecx
 80496ad:	83 c0 01             	add    $0x1,%eax
 80496b0:	a3 20 d2 c6 09       	mov    %eax,0x9c6d220
 80496b5:	8d 91 40 d2 c6 09    	lea    0x9c6d240(%ecx),%edx
 80496bb:	89 99 40 d2 c6 09    	mov    %ebx,0x9c6d240(%ecx)
 80496c1:	8b 4c 24 0c          	mov    0xc(%esp),%ecx
 80496c5:	89 4a 2c             	mov    %ecx,0x2c(%edx)
 80496c8:	31 c9                	xor    %ecx,%ecx
 80496ca:	66 89 4a 30          	mov    %cx,0x30(%edx)
 80496ce:	5b                   	pop    %ebx
 80496cf:	c3                   	ret    

080496d0 <add_rotate_function>:
 80496d0:	a1 24 d2 c6 09       	mov    0x9c6d224,%eax
 80496d5:	53                   	push   %ebx
 80496d6:	8b 5c 24 08          	mov    0x8(%esp),%ebx
 80496da:	6b c8 34             	imul   $0x34,%eax,%ecx
 80496dd:	83 c0 01             	add    $0x1,%eax
 80496e0:	a3 24 d2 c6 09       	mov    %eax,0x9c6d224
 80496e5:	8d 91 a0 e6 c6 09    	lea    0x9c6e6a0(%ecx),%edx
 80496eb:	89 99 a0 e6 c6 09    	mov    %ebx,0x9c6e6a0(%ecx)
 80496f1:	8b 4c 24 0c          	mov    0xc(%esp),%ecx
 80496f5:	89 4a 2c             	mov    %ecx,0x2c(%edx)
 80496f8:	31 c9                	xor    %ecx,%ecx
 80496fa:	66 89 4a 30          	mov    %cx,0x30(%edx)
 80496fe:	5b                   	pop    %ebx
 80496ff:	c3                   	ret    

08049700 <run_rotate_benchmark>:
 8049700:	83 ec 10             	sub    $0x10,%esp
 8049703:	6b 44 24 14 34       	imul   $0x34,0x14(%esp),%eax
 8049708:	ff 35 e0 d1 04 08    	pushl  0x804d1e0
 804970e:	ff 35 e8 d1 04 08    	pushl  0x804d1e8
 8049714:	ff 74 24 20          	pushl  0x20(%esp)
 8049718:	ff 90 a0 e6 c6 09    	call   *0x9c6e6a0(%eax)
 804971e:	83 c4 1c             	add    $0x1c,%esp
 8049721:	c3                   	ret    
 8049722:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8049729:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08049730 <test_rotate>:
 8049730:	55                   	push   %ebp
 8049731:	57                   	push   %edi
 8049732:	56                   	push   %esi
 8049733:	53                   	push   %ebx
 8049734:	31 f6                	xor    %esi,%esi
 8049736:	83 ec 3c             	sub    $0x3c,%esp
 8049739:	6b 6c 24 50 34       	imul   $0x34,0x50(%esp),%ebp
 804973e:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 8049744:	89 44 24 2c          	mov    %eax,0x2c(%esp)
 8049748:	31 c0                	xor    %eax,%eax
 804974a:	8b 85 cc e6 c6 09    	mov    0x9c6e6cc(%ebp),%eax
 8049750:	89 ef                	mov    %ebp,%edi
 8049752:	89 44 24 0c          	mov    %eax,0xc(%esp)
 8049756:	b8 60 00 00 00       	mov    $0x60,%eax
 804975b:	e8 80 f8 ff ff       	call   8048fe0 <create>
 8049760:	8d 87 a0 e6 c6 09    	lea    0x9c6e6a0(%edi),%eax
 8049766:	83 ec 04             	sub    $0x4,%esp
 8049769:	89 44 24 04          	mov    %eax,0x4(%esp)
 804976d:	ff 35 e0 d1 04 08    	pushl  0x804d1e0
 8049773:	ff 35 e8 d1 04 08    	pushl  0x804d1e8
 8049779:	6a 60                	push   $0x60
 804977b:	ff 97 a0 e6 c6 09    	call   *0x9c6e6a0(%edi)
 8049781:	b8 60 00 00 00       	mov    $0x60,%eax
 8049786:	e8 25 fa ff ff       	call   80491b0 <check_rotate>
 804978b:	83 c4 10             	add    $0x10,%esp
 804978e:	85 c0                	test   %eax,%eax
 8049790:	0f 85 6a 02 00 00    	jne    8049a00 <test_rotate+0x2d0>
 8049796:	8b 9e 7c ad 04 08    	mov    0x804ad7c(%esi),%ebx
 804979c:	89 d8                	mov    %ebx,%eax
 804979e:	e8 3d f8 ff ff       	call   8048fe0 <create>
 80497a3:	83 ec 04             	sub    $0x4,%esp
 80497a6:	ff 35 e0 d1 04 08    	pushl  0x804d1e0
 80497ac:	ff 35 e8 d1 04 08    	pushl  0x804d1e8
 80497b2:	53                   	push   %ebx
 80497b3:	ff 97 a0 e6 c6 09    	call   *0x9c6e6a0(%edi)
 80497b9:	89 d8                	mov    %ebx,%eax
 80497bb:	e8 f0 f9 ff ff       	call   80491b0 <check_rotate>
 80497c0:	83 c4 10             	add    $0x10,%esp
 80497c3:	85 c0                	test   %eax,%eax
 80497c5:	0f 85 55 02 00 00    	jne    8049a20 <test_rotate+0x2f0>
 80497cb:	8b 87 a0 e6 c6 09    	mov    0x9c6e6a0(%edi),%eax
 80497d1:	89 1c 24             	mov    %ebx,(%esp)
 80497d4:	db 04 24             	fildl  (%esp)
 80497d7:	89 5c 24 18          	mov    %ebx,0x18(%esp)
 80497db:	89 44 24 1c          	mov    %eax,0x1c(%esp)
 80497df:	8d 44 24 18          	lea    0x18(%esp),%eax
 80497e3:	d9 c0                	fld    %st(0)
 80497e5:	89 44 24 20          	mov    %eax,0x20(%esp)
 80497e9:	a1 e8 d1 04 08       	mov    0x804d1e8,%eax
 80497ee:	de c9                	fmulp  %st,%st(1)
 80497f0:	89 44 24 24          	mov    %eax,0x24(%esp)
 80497f4:	a1 e0 d1 04 08       	mov    0x804d1e0,%eax
 80497f9:	dd 1c 24             	fstpl  (%esp)
 80497fc:	89 44 24 28          	mov    %eax,0x28(%esp)
 8049800:	89 d8                	mov    %ebx,%eax
 8049802:	e8 d9 f7 ff ff       	call   8048fe0 <create>
 8049807:	83 ec 08             	sub    $0x8,%esp
 804980a:	8d 44 24 24          	lea    0x24(%esp),%eax
 804980e:	50                   	push   %eax
 804980f:	68 c0 8f 04 08       	push   $0x8048fc0
 8049814:	e8 57 0a 00 00       	call   804a270 <fcyc_v>
 8049819:	dc 74 24 10          	fdivl  0x10(%esp)
 804981d:	83 c4 10             	add    $0x10,%esp
 8049820:	dd 9c 75 a4 e6 c6 09 	fstpl  0x9c6e6a4(%ebp,%esi,2)
 8049827:	83 c6 04             	add    $0x4,%esi
 804982a:	83 fe 14             	cmp    $0x14,%esi
 804982d:	0f 85 23 ff ff ff    	jne    8049756 <test_rotate+0x26>
 8049833:	83 ec 04             	sub    $0x4,%esp
 8049836:	bb 7c ad 04 08       	mov    $0x804ad7c,%ebx
 804983b:	be 90 ad 04 08       	mov    $0x804ad90,%esi
 8049840:	ff 74 24 10          	pushl  0x10(%esp)
 8049844:	68 2d ab 04 08       	push   $0x804ab2d
 8049849:	6a 01                	push   $0x1
 804984b:	e8 00 f0 ff ff       	call   8048850 <__printf_chk@plt>
 8049850:	58                   	pop    %eax
 8049851:	5a                   	pop    %edx
 8049852:	68 44 ab 04 08       	push   $0x804ab44
 8049857:	6a 01                	push   $0x1
 8049859:	e8 f2 ef ff ff       	call   8048850 <__printf_chk@plt>
 804985e:	83 c4 10             	add    $0x10,%esp
 8049861:	b8 40 00 00 00       	mov    $0x40,%eax
 8049866:	83 ec 04             	sub    $0x4,%esp
 8049869:	83 c3 04             	add    $0x4,%ebx
 804986c:	50                   	push   %eax
 804986d:	68 49 ab 04 08       	push   $0x804ab49
 8049872:	6a 01                	push   $0x1
 8049874:	e8 d7 ef ff ff       	call   8048850 <__printf_chk@plt>
 8049879:	83 c4 10             	add    $0x10,%esp
 804987c:	39 de                	cmp    %ebx,%esi
 804987e:	74 08                	je     8049888 <test_rotate+0x158>
 8049880:	8b 03                	mov    (%ebx),%eax
 8049882:	eb e2                	jmp    8049866 <test_rotate+0x136>
 8049884:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8049888:	83 ec 0c             	sub    $0xc,%esp
 804988b:	31 db                	xor    %ebx,%ebx
 804988d:	68 4d ab 04 08       	push   $0x804ab4d
 8049892:	e8 19 ef ff ff       	call   80487b0 <puts@plt>
 8049897:	5e                   	pop    %esi
 8049898:	5f                   	pop    %edi
 8049899:	68 53 ab 04 08       	push   $0x804ab53
 804989e:	6a 01                	push   $0x1
 80498a0:	e8 ab ef ff ff       	call   8048850 <__printf_chk@plt>
 80498a5:	83 c4 10             	add    $0x10,%esp
 80498a8:	ff b4 dd a8 e6 c6 09 	pushl  0x9c6e6a8(%ebp,%ebx,8)
 80498af:	ff b4 dd a4 e6 c6 09 	pushl  0x9c6e6a4(%ebp,%ebx,8)
 80498b6:	83 c3 01             	add    $0x1,%ebx
 80498b9:	68 5d ab 04 08       	push   $0x804ab5d
 80498be:	6a 01                	push   $0x1
 80498c0:	e8 8b ef ff ff       	call   8048850 <__printf_chk@plt>
 80498c5:	83 c4 10             	add    $0x10,%esp
 80498c8:	83 fb 05             	cmp    $0x5,%ebx
 80498cb:	75 db                	jne    80498a8 <test_rotate+0x178>
 80498cd:	83 ec 0c             	sub    $0xc,%esp
 80498d0:	be 68 ad 04 08       	mov    $0x804ad68,%esi
 80498d5:	6a 0a                	push   $0xa
 80498d7:	e8 54 ef ff ff       	call   8048830 <putchar@plt>
 80498dc:	59                   	pop    %ecx
 80498dd:	5b                   	pop    %ebx
 80498de:	68 63 ab 04 08       	push   $0x804ab63
 80498e3:	6a 01                	push   $0x1
 80498e5:	bb 40 ad 04 08       	mov    $0x804ad40,%ebx
 80498ea:	e8 61 ef ff ff       	call   8048850 <__printf_chk@plt>
 80498ef:	dd 05 90 ad 04 08    	fldl   0x804ad90
 80498f5:	83 c4 10             	add    $0x10,%esp
 80498f8:	83 ec 08             	sub    $0x8,%esp
 80498fb:	83 c3 08             	add    $0x8,%ebx
 80498fe:	dd 1c 24             	fstpl  (%esp)
 8049901:	68 5d ab 04 08       	push   $0x804ab5d
 8049906:	6a 01                	push   $0x1
 8049908:	e8 43 ef ff ff       	call   8048850 <__printf_chk@plt>
 804990d:	83 c4 10             	add    $0x10,%esp
 8049910:	39 de                	cmp    %ebx,%esi
 8049912:	74 0c                	je     8049920 <test_rotate+0x1f0>
 8049914:	dd 03                	fldl   (%ebx)
 8049916:	eb e0                	jmp    80498f8 <test_rotate+0x1c8>
 8049918:	90                   	nop
 8049919:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8049920:	83 ec 0c             	sub    $0xc,%esp
 8049923:	31 db                	xor    %ebx,%ebx
 8049925:	6a 0a                	push   $0xa
 8049927:	e8 04 ef ff ff       	call   8048830 <putchar@plt>
 804992c:	58                   	pop    %eax
 804992d:	5a                   	pop    %edx
 804992e:	68 71 ab 04 08       	push   $0x804ab71
 8049933:	6a 01                	push   $0x1
 8049935:	e8 16 ef ff ff       	call   8048850 <__printf_chk@plt>
 804993a:	d9 e8                	fld1   
 804993c:	83 c4 10             	add    $0x10,%esp
 804993f:	dd 84 1d a4 e6 c6 09 	fldl   0x9c6e6a4(%ebp,%ebx,1)
 8049946:	d9 ee                	fldz   
 8049948:	d9 c9                	fxch   %st(1)
 804994a:	db e9                	fucomi %st(1),%st
 804994c:	dd d9                	fstp   %st(1)
 804994e:	0f 86 cf 00 00 00    	jbe    8049a23 <test_rotate+0x2f3>
 8049954:	dc bb 40 ad 04 08    	fdivrl 0x804ad40(%ebx)
 804995a:	83 ec 08             	sub    $0x8,%esp
 804995d:	83 c3 08             	add    $0x8,%ebx
 8049960:	dc c9                	fmul   %st,%st(1)
 8049962:	d9 c9                	fxch   %st(1)
 8049964:	dd 5c 24 08          	fstpl  0x8(%esp)
 8049968:	dd 1c 24             	fstpl  (%esp)
 804996b:	68 5d ab 04 08       	push   $0x804ab5d
 8049970:	6a 01                	push   $0x1
 8049972:	e8 d9 ee ff ff       	call   8048850 <__printf_chk@plt>
 8049977:	83 c4 10             	add    $0x10,%esp
 804997a:	83 fb 28             	cmp    $0x28,%ebx
 804997d:	dd 04 24             	fldl   (%esp)
 8049980:	75 bd                	jne    804993f <test_rotate+0x20f>
 8049982:	68 99 99 c9 3f       	push   $0x3fc99999
 8049987:	68 9a 99 99 99       	push   $0x9999999a
 804998c:	83 ec 08             	sub    $0x8,%esp
 804998f:	dd 1c 24             	fstpl  (%esp)
 8049992:	e8 d9 ed ff ff       	call   8048770 <pow@plt>
 8049997:	83 ec 08             	sub    $0x8,%esp
 804999a:	dd 14 24             	fstl   (%esp)
 804999d:	dd 5c 24 18          	fstpl  0x18(%esp)
 80499a1:	68 5d ab 04 08       	push   $0x804ab5d
 80499a6:	6a 01                	push   $0x1
 80499a8:	e8 a3 ee ff ff       	call   8048850 <__printf_chk@plt>
 80499ad:	83 c4 14             	add    $0x14,%esp
 80499b0:	68 81 ac 04 08       	push   $0x804ac81
 80499b5:	e8 f6 ed ff ff       	call   80487b0 <puts@plt>
 80499ba:	dd 05 d8 d1 04 08    	fldl   0x804d1d8
 80499c0:	83 c4 10             	add    $0x10,%esp
 80499c3:	dd 04 24             	fldl   (%esp)
 80499c6:	db e9                	fucomi %st(1),%st
 80499c8:	dd d9                	fstp   %st(1)
 80499ca:	76 1c                	jbe    80499e8 <test_rotate+0x2b8>
 80499cc:	6b 44 24 50 34       	imul   $0x34,0x50(%esp),%eax
 80499d1:	dd 1d d8 d1 04 08    	fstpl  0x804d1d8
 80499d7:	8b 80 cc e6 c6 09    	mov    0x9c6e6cc(%eax),%eax
 80499dd:	a3 d0 d1 04 08       	mov    %eax,0x804d1d0
 80499e2:	eb 06                	jmp    80499ea <test_rotate+0x2ba>
 80499e4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 80499e8:	dd d8                	fstp   %st(0)
 80499ea:	8b 44 24 2c          	mov    0x2c(%esp),%eax
 80499ee:	65 33 05 14 00 00 00 	xor    %gs:0x14,%eax
 80499f5:	75 49                	jne    8049a40 <test_rotate+0x310>
 80499f7:	83 c4 3c             	add    $0x3c,%esp
 80499fa:	5b                   	pop    %ebx
 80499fb:	5e                   	pop    %esi
 80499fc:	5f                   	pop    %edi
 80499fd:	5d                   	pop    %ebp
 80499fe:	c3                   	ret    
 80499ff:	90                   	nop
 8049a00:	6a 60                	push   $0x60
 8049a02:	8b 44 24 04          	mov    0x4(%esp),%eax
 8049a06:	ff 70 2c             	pushl  0x2c(%eax)
 8049a09:	68 4c a9 04 08       	push   $0x804a94c
 8049a0e:	6a 01                	push   $0x1
 8049a10:	e8 3b ee ff ff       	call   8048850 <__printf_chk@plt>
 8049a15:	83 c4 10             	add    $0x10,%esp
 8049a18:	eb d0                	jmp    80499ea <test_rotate+0x2ba>
 8049a1a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8049a20:	53                   	push   %ebx
 8049a21:	eb df                	jmp    8049a02 <test_rotate+0x2d2>
 8049a23:	dd d8                	fstp   %st(0)
 8049a25:	dd d8                	fstp   %st(0)
 8049a27:	83 ec 0c             	sub    $0xc,%esp
 8049a2a:	68 88 a9 04 08       	push   $0x804a988
 8049a2f:	e8 7c ed ff ff       	call   80487b0 <puts@plt>
 8049a34:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8049a3b:	e8 80 ed ff ff       	call   80487c0 <exit@plt>
 8049a40:	e8 3b ed ff ff       	call   8048780 <__stack_chk_fail@plt>
 8049a45:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8049a49:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08049a50 <run_smooth_benchmark>:
 8049a50:	83 ec 10             	sub    $0x10,%esp
 8049a53:	6b 44 24 14 34       	imul   $0x34,0x14(%esp),%eax
 8049a58:	ff 35 e0 d1 04 08    	pushl  0x804d1e0
 8049a5e:	ff 35 e8 d1 04 08    	pushl  0x804d1e8
 8049a64:	ff 74 24 20          	pushl  0x20(%esp)
 8049a68:	ff 90 40 d2 c6 09    	call   *0x9c6d240(%eax)
 8049a6e:	83 c4 1c             	add    $0x1c,%esp
 8049a71:	c3                   	ret    
 8049a72:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8049a79:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08049a80 <test_smooth>:
 8049a80:	55                   	push   %ebp
 8049a81:	57                   	push   %edi
 8049a82:	56                   	push   %esi
 8049a83:	53                   	push   %ebx
 8049a84:	31 f6                	xor    %esi,%esi
 8049a86:	83 ec 3c             	sub    $0x3c,%esp
 8049a89:	6b 6c 24 50 34       	imul   $0x34,0x50(%esp),%ebp
 8049a8e:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 8049a94:	89 44 24 2c          	mov    %eax,0x2c(%esp)
 8049a98:	31 c0                	xor    %eax,%eax
 8049a9a:	8b 85 6c d2 c6 09    	mov    0x9c6d26c(%ebp),%eax
 8049aa0:	89 ef                	mov    %ebp,%edi
 8049aa2:	89 44 24 0c          	mov    %eax,0xc(%esp)
 8049aa6:	b8 60 00 00 00       	mov    $0x60,%eax
 8049aab:	e8 30 f5 ff ff       	call   8048fe0 <create>
 8049ab0:	8d 87 40 d2 c6 09    	lea    0x9c6d240(%edi),%eax
 8049ab6:	83 ec 04             	sub    $0x4,%esp
 8049ab9:	89 44 24 04          	mov    %eax,0x4(%esp)
 8049abd:	ff 35 e0 d1 04 08    	pushl  0x804d1e0
 8049ac3:	ff 35 e8 d1 04 08    	pushl  0x804d1e8
 8049ac9:	6a 60                	push   $0x60
 8049acb:	ff 97 40 d2 c6 09    	call   *0x9c6d240(%edi)
 8049ad1:	b8 60 00 00 00       	mov    $0x60,%eax
 8049ad6:	e8 d5 f8 ff ff       	call   80493b0 <check_smooth>
 8049adb:	83 c4 10             	add    $0x10,%esp
 8049ade:	85 c0                	test   %eax,%eax
 8049ae0:	0f 85 6a 02 00 00    	jne    8049d50 <test_smooth+0x2d0>
 8049ae6:	8b 9e 68 ad 04 08    	mov    0x804ad68(%esi),%ebx
 8049aec:	89 d8                	mov    %ebx,%eax
 8049aee:	e8 ed f4 ff ff       	call   8048fe0 <create>
 8049af3:	83 ec 04             	sub    $0x4,%esp
 8049af6:	ff 35 e0 d1 04 08    	pushl  0x804d1e0
 8049afc:	ff 35 e8 d1 04 08    	pushl  0x804d1e8
 8049b02:	53                   	push   %ebx
 8049b03:	ff 97 40 d2 c6 09    	call   *0x9c6d240(%edi)
 8049b09:	89 d8                	mov    %ebx,%eax
 8049b0b:	e8 a0 f8 ff ff       	call   80493b0 <check_smooth>
 8049b10:	83 c4 10             	add    $0x10,%esp
 8049b13:	85 c0                	test   %eax,%eax
 8049b15:	0f 85 55 02 00 00    	jne    8049d70 <test_smooth+0x2f0>
 8049b1b:	8b 87 40 d2 c6 09    	mov    0x9c6d240(%edi),%eax
 8049b21:	89 1c 24             	mov    %ebx,(%esp)
 8049b24:	db 04 24             	fildl  (%esp)
 8049b27:	89 5c 24 18          	mov    %ebx,0x18(%esp)
 8049b2b:	89 44 24 1c          	mov    %eax,0x1c(%esp)
 8049b2f:	8d 44 24 18          	lea    0x18(%esp),%eax
 8049b33:	d9 c0                	fld    %st(0)
 8049b35:	89 44 24 20          	mov    %eax,0x20(%esp)
 8049b39:	a1 e8 d1 04 08       	mov    0x804d1e8,%eax
 8049b3e:	de c9                	fmulp  %st,%st(1)
 8049b40:	89 44 24 24          	mov    %eax,0x24(%esp)
 8049b44:	a1 e0 d1 04 08       	mov    0x804d1e0,%eax
 8049b49:	dd 1c 24             	fstpl  (%esp)
 8049b4c:	89 44 24 28          	mov    %eax,0x28(%esp)
 8049b50:	89 d8                	mov    %ebx,%eax
 8049b52:	e8 89 f4 ff ff       	call   8048fe0 <create>
 8049b57:	83 ec 08             	sub    $0x8,%esp
 8049b5a:	8d 44 24 24          	lea    0x24(%esp),%eax
 8049b5e:	50                   	push   %eax
 8049b5f:	68 c0 8f 04 08       	push   $0x8048fc0
 8049b64:	e8 07 07 00 00       	call   804a270 <fcyc_v>
 8049b69:	dc 74 24 10          	fdivl  0x10(%esp)
 8049b6d:	83 c4 10             	add    $0x10,%esp
 8049b70:	dd 9c 75 44 d2 c6 09 	fstpl  0x9c6d244(%ebp,%esi,2)
 8049b77:	83 c6 04             	add    $0x4,%esi
 8049b7a:	83 fe 14             	cmp    $0x14,%esi
 8049b7d:	0f 85 23 ff ff ff    	jne    8049aa6 <test_smooth+0x26>
 8049b83:	83 ec 04             	sub    $0x4,%esp
 8049b86:	bb 68 ad 04 08       	mov    $0x804ad68,%ebx
 8049b8b:	be 7c ad 04 08       	mov    $0x804ad7c,%esi
 8049b90:	ff 74 24 10          	pushl  0x10(%esp)
 8049b94:	68 7a ab 04 08       	push   $0x804ab7a
 8049b99:	6a 01                	push   $0x1
 8049b9b:	e8 b0 ec ff ff       	call   8048850 <__printf_chk@plt>
 8049ba0:	58                   	pop    %eax
 8049ba1:	5a                   	pop    %edx
 8049ba2:	68 44 ab 04 08       	push   $0x804ab44
 8049ba7:	6a 01                	push   $0x1
 8049ba9:	e8 a2 ec ff ff       	call   8048850 <__printf_chk@plt>
 8049bae:	83 c4 10             	add    $0x10,%esp
 8049bb1:	b8 20 00 00 00       	mov    $0x20,%eax
 8049bb6:	83 ec 04             	sub    $0x4,%esp
 8049bb9:	83 c3 04             	add    $0x4,%ebx
 8049bbc:	50                   	push   %eax
 8049bbd:	68 49 ab 04 08       	push   $0x804ab49
 8049bc2:	6a 01                	push   $0x1
 8049bc4:	e8 87 ec ff ff       	call   8048850 <__printf_chk@plt>
 8049bc9:	83 c4 10             	add    $0x10,%esp
 8049bcc:	39 de                	cmp    %ebx,%esi
 8049bce:	74 08                	je     8049bd8 <test_smooth+0x158>
 8049bd0:	8b 03                	mov    (%ebx),%eax
 8049bd2:	eb e2                	jmp    8049bb6 <test_smooth+0x136>
 8049bd4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8049bd8:	83 ec 0c             	sub    $0xc,%esp
 8049bdb:	31 db                	xor    %ebx,%ebx
 8049bdd:	68 4d ab 04 08       	push   $0x804ab4d
 8049be2:	e8 c9 eb ff ff       	call   80487b0 <puts@plt>
 8049be7:	5e                   	pop    %esi
 8049be8:	5f                   	pop    %edi
 8049be9:	68 53 ab 04 08       	push   $0x804ab53
 8049bee:	6a 01                	push   $0x1
 8049bf0:	e8 5b ec ff ff       	call   8048850 <__printf_chk@plt>
 8049bf5:	83 c4 10             	add    $0x10,%esp
 8049bf8:	ff b4 dd 48 d2 c6 09 	pushl  0x9c6d248(%ebp,%ebx,8)
 8049bff:	ff b4 dd 44 d2 c6 09 	pushl  0x9c6d244(%ebp,%ebx,8)
 8049c06:	83 c3 01             	add    $0x1,%ebx
 8049c09:	68 5d ab 04 08       	push   $0x804ab5d
 8049c0e:	6a 01                	push   $0x1
 8049c10:	e8 3b ec ff ff       	call   8048850 <__printf_chk@plt>
 8049c15:	83 c4 10             	add    $0x10,%esp
 8049c18:	83 fb 05             	cmp    $0x5,%ebx
 8049c1b:	75 db                	jne    8049bf8 <test_smooth+0x178>
 8049c1d:	83 ec 0c             	sub    $0xc,%esp
 8049c20:	be 28 ad 04 08       	mov    $0x804ad28,%esi
 8049c25:	6a 0a                	push   $0xa
 8049c27:	e8 04 ec ff ff       	call   8048830 <putchar@plt>
 8049c2c:	59                   	pop    %ecx
 8049c2d:	5b                   	pop    %ebx
 8049c2e:	68 63 ab 04 08       	push   $0x804ab63
 8049c33:	6a 01                	push   $0x1
 8049c35:	bb 00 ad 04 08       	mov    $0x804ad00,%ebx
 8049c3a:	e8 11 ec ff ff       	call   8048850 <__printf_chk@plt>
 8049c3f:	d9 05 98 ad 04 08    	flds   0x804ad98
 8049c45:	83 c4 10             	add    $0x10,%esp
 8049c48:	83 ec 08             	sub    $0x8,%esp
 8049c4b:	83 c3 08             	add    $0x8,%ebx
 8049c4e:	dd 1c 24             	fstpl  (%esp)
 8049c51:	68 5d ab 04 08       	push   $0x804ab5d
 8049c56:	6a 01                	push   $0x1
 8049c58:	e8 f3 eb ff ff       	call   8048850 <__printf_chk@plt>
 8049c5d:	83 c4 10             	add    $0x10,%esp
 8049c60:	39 de                	cmp    %ebx,%esi
 8049c62:	74 0c                	je     8049c70 <test_smooth+0x1f0>
 8049c64:	dd 03                	fldl   (%ebx)
 8049c66:	eb e0                	jmp    8049c48 <test_smooth+0x1c8>
 8049c68:	90                   	nop
 8049c69:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8049c70:	83 ec 0c             	sub    $0xc,%esp
 8049c73:	31 db                	xor    %ebx,%ebx
 8049c75:	6a 0a                	push   $0xa
 8049c77:	e8 b4 eb ff ff       	call   8048830 <putchar@plt>
 8049c7c:	58                   	pop    %eax
 8049c7d:	5a                   	pop    %edx
 8049c7e:	68 71 ab 04 08       	push   $0x804ab71
 8049c83:	6a 01                	push   $0x1
 8049c85:	e8 c6 eb ff ff       	call   8048850 <__printf_chk@plt>
 8049c8a:	d9 e8                	fld1   
 8049c8c:	83 c4 10             	add    $0x10,%esp
 8049c8f:	dd 84 1d 44 d2 c6 09 	fldl   0x9c6d244(%ebp,%ebx,1)
 8049c96:	d9 ee                	fldz   
 8049c98:	d9 c9                	fxch   %st(1)
 8049c9a:	db e9                	fucomi %st(1),%st
 8049c9c:	dd d9                	fstp   %st(1)
 8049c9e:	0f 86 cf 00 00 00    	jbe    8049d73 <test_smooth+0x2f3>
 8049ca4:	dc bb 00 ad 04 08    	fdivrl 0x804ad00(%ebx)
 8049caa:	83 ec 08             	sub    $0x8,%esp
 8049cad:	83 c3 08             	add    $0x8,%ebx
 8049cb0:	dc c9                	fmul   %st,%st(1)
 8049cb2:	d9 c9                	fxch   %st(1)
 8049cb4:	dd 5c 24 08          	fstpl  0x8(%esp)
 8049cb8:	dd 1c 24             	fstpl  (%esp)
 8049cbb:	68 5d ab 04 08       	push   $0x804ab5d
 8049cc0:	6a 01                	push   $0x1
 8049cc2:	e8 89 eb ff ff       	call   8048850 <__printf_chk@plt>
 8049cc7:	83 c4 10             	add    $0x10,%esp
 8049cca:	83 fb 28             	cmp    $0x28,%ebx
 8049ccd:	dd 04 24             	fldl   (%esp)
 8049cd0:	75 bd                	jne    8049c8f <test_smooth+0x20f>
 8049cd2:	68 99 99 c9 3f       	push   $0x3fc99999
 8049cd7:	68 9a 99 99 99       	push   $0x9999999a
 8049cdc:	83 ec 08             	sub    $0x8,%esp
 8049cdf:	dd 1c 24             	fstpl  (%esp)
 8049ce2:	e8 89 ea ff ff       	call   8048770 <pow@plt>
 8049ce7:	83 ec 08             	sub    $0x8,%esp
 8049cea:	dd 14 24             	fstl   (%esp)
 8049ced:	dd 5c 24 18          	fstpl  0x18(%esp)
 8049cf1:	68 5d ab 04 08       	push   $0x804ab5d
 8049cf6:	6a 01                	push   $0x1
 8049cf8:	e8 53 eb ff ff       	call   8048850 <__printf_chk@plt>
 8049cfd:	83 c4 14             	add    $0x14,%esp
 8049d00:	68 81 ac 04 08       	push   $0x804ac81
 8049d05:	e8 a6 ea ff ff       	call   80487b0 <puts@plt>
 8049d0a:	dd 05 c8 d1 04 08    	fldl   0x804d1c8
 8049d10:	83 c4 10             	add    $0x10,%esp
 8049d13:	dd 04 24             	fldl   (%esp)
 8049d16:	db e9                	fucomi %st(1),%st
 8049d18:	dd d9                	fstp   %st(1)
 8049d1a:	76 1c                	jbe    8049d38 <test_smooth+0x2b8>
 8049d1c:	6b 44 24 50 34       	imul   $0x34,0x50(%esp),%eax
 8049d21:	dd 1d c8 d1 04 08    	fstpl  0x804d1c8
 8049d27:	8b 80 6c d2 c6 09    	mov    0x9c6d26c(%eax),%eax
 8049d2d:	a3 c0 d1 04 08       	mov    %eax,0x804d1c0
 8049d32:	eb 06                	jmp    8049d3a <test_smooth+0x2ba>
 8049d34:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8049d38:	dd d8                	fstp   %st(0)
 8049d3a:	8b 44 24 2c          	mov    0x2c(%esp),%eax
 8049d3e:	65 33 05 14 00 00 00 	xor    %gs:0x14,%eax
 8049d45:	75 49                	jne    8049d90 <test_smooth+0x310>
 8049d47:	83 c4 3c             	add    $0x3c,%esp
 8049d4a:	5b                   	pop    %ebx
 8049d4b:	5e                   	pop    %esi
 8049d4c:	5f                   	pop    %edi
 8049d4d:	5d                   	pop    %ebp
 8049d4e:	c3                   	ret    
 8049d4f:	90                   	nop
 8049d50:	6a 60                	push   $0x60
 8049d52:	8b 44 24 04          	mov    0x4(%esp),%eax
 8049d56:	ff 70 2c             	pushl  0x2c(%eax)
 8049d59:	68 4c a9 04 08       	push   $0x804a94c
 8049d5e:	6a 01                	push   $0x1
 8049d60:	e8 eb ea ff ff       	call   8048850 <__printf_chk@plt>
 8049d65:	83 c4 10             	add    $0x10,%esp
 8049d68:	eb d0                	jmp    8049d3a <test_smooth+0x2ba>
 8049d6a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8049d70:	53                   	push   %ebx
 8049d71:	eb df                	jmp    8049d52 <test_smooth+0x2d2>
 8049d73:	dd d8                	fstp   %st(0)
 8049d75:	dd d8                	fstp   %st(0)
 8049d77:	83 ec 0c             	sub    $0xc,%esp
 8049d7a:	68 88 a9 04 08       	push   $0x804a988
 8049d7f:	e8 2c ea ff ff       	call   80487b0 <puts@plt>
 8049d84:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8049d8b:	e8 30 ea ff ff       	call   80487c0 <exit@plt>
 8049d90:	e8 eb e9 ff ff       	call   8048780 <__stack_chk_fail@plt>
 8049d95:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8049d99:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08049da0 <usage>:
 8049da0:	83 ec 0c             	sub    $0xc,%esp
 8049da3:	ff 74 24 10          	pushl  0x10(%esp)
 8049da7:	68 b0 a9 04 08       	push   $0x804a9b0
 8049dac:	6a 01                	push   $0x1
 8049dae:	ff 35 80 d1 04 08    	pushl  0x804d180
 8049db4:	e8 a7 ea ff ff       	call   8048860 <__fprintf_chk@plt>
 8049db9:	ff 35 80 d1 04 08    	pushl  0x804d180
 8049dbf:	6a 09                	push   $0x9
 8049dc1:	6a 01                	push   $0x1
 8049dc3:	68 91 ab 04 08       	push   $0x804ab91
 8049dc8:	e8 c3 e9 ff ff       	call   8048790 <fwrite@plt>
 8049dcd:	83 c4 20             	add    $0x20,%esp
 8049dd0:	ff 35 80 d1 04 08    	pushl  0x804d180
 8049dd6:	6a 20                	push   $0x20
 8049dd8:	6a 01                	push   $0x1
 8049dda:	68 e4 a9 04 08       	push   $0x804a9e4
 8049ddf:	e8 ac e9 ff ff       	call   8048790 <fwrite@plt>
 8049de4:	ff 35 80 d1 04 08    	pushl  0x804d180
 8049dea:	6a 2f                	push   $0x2f
 8049dec:	6a 01                	push   $0x1
 8049dee:	68 08 aa 04 08       	push   $0x804aa08
 8049df3:	e8 98 e9 ff ff       	call   8048790 <fwrite@plt>
 8049df8:	83 c4 20             	add    $0x20,%esp
 8049dfb:	ff 35 80 d1 04 08    	pushl  0x804d180
 8049e01:	6a 40                	push   $0x40
 8049e03:	6a 01                	push   $0x1
 8049e05:	68 38 aa 04 08       	push   $0x804aa38
 8049e0a:	e8 81 e9 ff ff       	call   8048790 <fwrite@plt>
 8049e0f:	ff 35 80 d1 04 08    	pushl  0x804d180
 8049e15:	6a 3b                	push   $0x3b
 8049e17:	6a 01                	push   $0x1
 8049e19:	68 7c aa 04 08       	push   $0x804aa7c
 8049e1e:	e8 6d e9 ff ff       	call   8048790 <fwrite@plt>
 8049e23:	83 c4 20             	add    $0x20,%esp
 8049e26:	ff 35 80 d1 04 08    	pushl  0x804d180
 8049e2c:	6a 3b                	push   $0x3b
 8049e2e:	6a 01                	push   $0x1
 8049e30:	68 b8 aa 04 08       	push   $0x804aab8
 8049e35:	e8 56 e9 ff ff       	call   8048790 <fwrite@plt>
 8049e3a:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8049e41:	e8 7a e9 ff ff       	call   80487c0 <exit@plt>
 8049e46:	66 90                	xchg   %ax,%ax
 8049e48:	66 90                	xchg   %ax,%ax
 8049e4a:	66 90                	xchg   %ax,%ax
 8049e4c:	66 90                	xchg   %ax,%ax
 8049e4e:	66 90                	xchg   %ax,%ax

08049e50 <naive_rotate>:
 8049e50:	55                   	push   %ebp
 8049e51:	57                   	push   %edi
 8049e52:	56                   	push   %esi
 8049e53:	53                   	push   %ebx
 8049e54:	83 ec 04             	sub    $0x4,%esp
 8049e57:	8b 74 24 18          	mov    0x18(%esp),%esi
 8049e5b:	8b 54 24 20          	mov    0x20(%esp),%edx
 8049e5f:	85 f6                	test   %esi,%esi
 8049e61:	7e 50                	jle    8049eb3 <naive_rotate+0x63>
 8049e63:	8d 46 ff             	lea    -0x1(%esi),%eax
 8049e66:	8d 1c 76             	lea    (%esi,%esi,2),%ebx
 8049e69:	0f af c6             	imul   %esi,%eax
 8049e6c:	01 db                	add    %ebx,%ebx
 8049e6e:	8d 0c 40             	lea    (%eax,%eax,2),%ecx
 8049e71:	01 f0                	add    %esi,%eax
 8049e73:	8d 04 40             	lea    (%eax,%eax,2),%eax
 8049e76:	8d 3c 4a             	lea    (%edx,%ecx,2),%edi
 8049e79:	8b 4c 24 1c          	mov    0x1c(%esp),%ecx
 8049e7d:	6b f6 fa             	imul   $0xfffffffa,%esi,%esi
 8049e80:	8d 2c 42             	lea    (%edx,%eax,2),%ebp
 8049e83:	90                   	nop
 8049e84:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8049e88:	89 fa                	mov    %edi,%edx
 8049e8a:	31 c0                	xor    %eax,%eax
 8049e8c:	89 3c 24             	mov    %edi,(%esp)
 8049e8f:	90                   	nop
 8049e90:	8b 3c 01             	mov    (%ecx,%eax,1),%edi
 8049e93:	89 3a                	mov    %edi,(%edx)
 8049e95:	0f b7 7c 01 04       	movzwl 0x4(%ecx,%eax,1),%edi
 8049e9a:	83 c0 06             	add    $0x6,%eax
 8049e9d:	66 89 7a 04          	mov    %di,0x4(%edx)
 8049ea1:	01 f2                	add    %esi,%edx
 8049ea3:	39 c3                	cmp    %eax,%ebx
 8049ea5:	75 e9                	jne    8049e90 <naive_rotate+0x40>
 8049ea7:	8b 3c 24             	mov    (%esp),%edi
 8049eaa:	01 d9                	add    %ebx,%ecx
 8049eac:	83 c7 06             	add    $0x6,%edi
 8049eaf:	39 ef                	cmp    %ebp,%edi
 8049eb1:	75 d5                	jne    8049e88 <naive_rotate+0x38>
 8049eb3:	83 c4 04             	add    $0x4,%esp
 8049eb6:	5b                   	pop    %ebx
 8049eb7:	5e                   	pop    %esi
 8049eb8:	5f                   	pop    %edi
 8049eb9:	5d                   	pop    %ebp
 8049eba:	c3                   	ret    
 8049ebb:	90                   	nop
 8049ebc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

08049ec0 <rotate>:
 8049ec0:	eb 8e                	jmp    8049e50 <naive_rotate>
 8049ec2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8049ec9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08049ed0 <naive_smooth>:
 8049ed0:	55                   	push   %ebp
 8049ed1:	57                   	push   %edi
 8049ed2:	56                   	push   %esi
 8049ed3:	53                   	push   %ebx
 8049ed4:	83 ec 40             	sub    $0x40,%esp
 8049ed7:	8b 44 24 54          	mov    0x54(%esp),%eax
 8049edb:	85 c0                	test   %eax,%eax
 8049edd:	0f 8e 88 01 00 00    	jle    804a06b <naive_smooth+0x19b>
 8049ee3:	8b 44 24 54          	mov    0x54(%esp),%eax
 8049ee7:	c7 44 24 34 00 00 00 	movl   $0x0,0x34(%esp)
 8049eee:	00 
 8049eef:	83 e8 01             	sub    $0x1,%eax
 8049ef2:	89 44 24 28          	mov    %eax,0x28(%esp)
 8049ef6:	8b 44 24 54          	mov    0x54(%esp),%eax
 8049efa:	8d 04 40             	lea    (%eax,%eax,2),%eax
 8049efd:	01 c0                	add    %eax,%eax
 8049eff:	89 44 24 3c          	mov    %eax,0x3c(%esp)
 8049f03:	8b 44 24 5c          	mov    0x5c(%esp),%eax
 8049f07:	89 44 24 38          	mov    %eax,0x38(%esp)
 8049f0b:	83 44 24 34 01       	addl   $0x1,0x34(%esp)
 8049f10:	8b 5c 24 28          	mov    0x28(%esp),%ebx
 8049f14:	bf 00 00 00 00       	mov    $0x0,%edi
 8049f19:	8b 74 24 34          	mov    0x34(%esp),%esi
 8049f1d:	c7 44 24 18 01 00 00 	movl   $0x1,0x18(%esp)
 8049f24:	00 
 8049f25:	89 f0                	mov    %esi,%eax
 8049f27:	83 e8 02             	sub    $0x2,%eax
 8049f2a:	0f 49 f8             	cmovns %eax,%edi
 8049f2d:	39 f3                	cmp    %esi,%ebx
 8049f2f:	89 f0                	mov    %esi,%eax
 8049f31:	0f 4e c3             	cmovle %ebx,%eax
 8049f34:	89 7c 24 20          	mov    %edi,0x20(%esp)
 8049f38:	8b 5c 24 38          	mov    0x38(%esp),%ebx
 8049f3c:	0f af 7c 24 54       	imul   0x54(%esp),%edi
 8049f41:	89 44 24 30          	mov    %eax,0x30(%esp)
 8049f45:	83 c0 01             	add    $0x1,%eax
 8049f48:	89 5c 24 1c          	mov    %ebx,0x1c(%esp)
 8049f4c:	89 44 24 10          	mov    %eax,0x10(%esp)
 8049f50:	89 7c 24 2c          	mov    %edi,0x2c(%esp)
 8049f54:	8b 5c 24 30          	mov    0x30(%esp),%ebx
 8049f58:	39 5c 24 20          	cmp    %ebx,0x20(%esp)
 8049f5c:	8b 44 24 18          	mov    0x18(%esp),%eax
 8049f60:	89 44 24 24          	mov    %eax,0x24(%esp)
 8049f64:	0f 8f 09 01 00 00    	jg     804a073 <naive_smooth+0x1a3>
 8049f6a:	89 c3                	mov    %eax,%ebx
 8049f6c:	8b 6c 24 2c          	mov    0x2c(%esp),%ebp
 8049f70:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 8049f77:	00 
 8049f78:	83 eb 02             	sub    $0x2,%ebx
 8049f7b:	89 de                	mov    %ebx,%esi
 8049f7d:	bb 00 00 00 00       	mov    $0x0,%ebx
 8049f82:	0f 49 de             	cmovns %esi,%ebx
 8049f85:	8b 74 24 28          	mov    0x28(%esp),%esi
 8049f89:	89 d9                	mov    %ebx,%ecx
 8049f8b:	89 5c 24 08          	mov    %ebx,0x8(%esp)
 8049f8f:	89 c3                	mov    %eax,%ebx
 8049f91:	39 c6                	cmp    %eax,%esi
 8049f93:	8b 44 24 20          	mov    0x20(%esp),%eax
 8049f97:	0f 4e de             	cmovle %esi,%ebx
 8049f9a:	31 f6                	xor    %esi,%esi
 8049f9c:	89 df                	mov    %ebx,%edi
 8049f9e:	89 5c 24 0c          	mov    %ebx,0xc(%esp)
 8049fa2:	31 db                	xor    %ebx,%ebx
 8049fa4:	8d 57 01             	lea    0x1(%edi),%edx
 8049fa7:	89 04 24             	mov    %eax,(%esp)
 8049faa:	31 c0                	xor    %eax,%eax
 8049fac:	29 ca                	sub    %ecx,%edx
 8049fae:	89 54 24 14          	mov    %edx,0x14(%esp)
 8049fb2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8049fb8:	8b 7c 24 08          	mov    0x8(%esp),%edi
 8049fbc:	8b 4c 24 0c          	mov    0xc(%esp),%ecx
 8049fc0:	39 cf                	cmp    %ecx,%edi
 8049fc2:	7f 45                	jg     804a009 <naive_smooth+0x139>
 8049fc4:	8d 54 3d 00          	lea    0x0(%ebp,%edi,1),%edx
 8049fc8:	8b 7c 24 58          	mov    0x58(%esp),%edi
 8049fcc:	8d 0c 29             	lea    (%ecx,%ebp,1),%ecx
 8049fcf:	8d 14 52             	lea    (%edx,%edx,2),%edx
 8049fd2:	8d 0c 49             	lea    (%ecx,%ecx,2),%ecx
 8049fd5:	8d 54 57 02          	lea    0x2(%edi,%edx,2),%edx
 8049fd9:	8b 7c 24 58          	mov    0x58(%esp),%edi
 8049fdd:	8d 7c 4f 08          	lea    0x8(%edi,%ecx,2),%edi
 8049fe1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8049fe8:	0f b7 4a fe          	movzwl -0x2(%edx),%ecx
 8049fec:	83 c2 06             	add    $0x6,%edx
 8049fef:	01 c8                	add    %ecx,%eax
 8049ff1:	0f b7 4a fa          	movzwl -0x6(%edx),%ecx
 8049ff5:	01 ce                	add    %ecx,%esi
 8049ff7:	0f b7 4a fc          	movzwl -0x4(%edx),%ecx
 8049ffb:	01 cb                	add    %ecx,%ebx
 8049ffd:	39 d7                	cmp    %edx,%edi
 8049fff:	75 e7                	jne    8049fe8 <naive_smooth+0x118>
 804a001:	8b 54 24 14          	mov    0x14(%esp),%edx
 804a005:	01 54 24 04          	add    %edx,0x4(%esp)
 804a009:	83 04 24 01          	addl   $0x1,(%esp)
 804a00d:	03 6c 24 54          	add    0x54(%esp),%ebp
 804a011:	8b 3c 24             	mov    (%esp),%edi
 804a014:	3b 7c 24 10          	cmp    0x10(%esp),%edi
 804a018:	75 9e                	jne    8049fb8 <naive_smooth+0xe8>
 804a01a:	8b 4c 24 04          	mov    0x4(%esp),%ecx
 804a01e:	99                   	cltd   
 804a01f:	8b 7c 24 1c          	mov    0x1c(%esp),%edi
 804a023:	83 44 24 18 01       	addl   $0x1,0x18(%esp)
 804a028:	f7 f9                	idiv   %ecx
 804a02a:	83 c7 06             	add    $0x6,%edi
 804a02d:	66 89 47 fa          	mov    %ax,-0x6(%edi)
 804a031:	89 f0                	mov    %esi,%eax
 804a033:	99                   	cltd   
 804a034:	f7 f9                	idiv   %ecx
 804a036:	66 89 47 fc          	mov    %ax,-0x4(%edi)
 804a03a:	89 d8                	mov    %ebx,%eax
 804a03c:	99                   	cltd   
 804a03d:	f7 f9                	idiv   %ecx
 804a03f:	66 89 47 fe          	mov    %ax,-0x2(%edi)
 804a043:	8b 44 24 24          	mov    0x24(%esp),%eax
 804a047:	39 44 24 54          	cmp    %eax,0x54(%esp)
 804a04b:	89 7c 24 1c          	mov    %edi,0x1c(%esp)
 804a04f:	0f 8f ff fe ff ff    	jg     8049f54 <naive_smooth+0x84>
 804a055:	8b 5c 24 3c          	mov    0x3c(%esp),%ebx
 804a059:	8b 44 24 34          	mov    0x34(%esp),%eax
 804a05d:	01 5c 24 38          	add    %ebx,0x38(%esp)
 804a061:	39 44 24 54          	cmp    %eax,0x54(%esp)
 804a065:	0f 85 a0 fe ff ff    	jne    8049f0b <naive_smooth+0x3b>
 804a06b:	83 c4 40             	add    $0x40,%esp
 804a06e:	5b                   	pop    %ebx
 804a06f:	5e                   	pop    %esi
 804a070:	5f                   	pop    %edi
 804a071:	5d                   	pop    %ebp
 804a072:	c3                   	ret    
 804a073:	31 db                	xor    %ebx,%ebx
 804a075:	31 f6                	xor    %esi,%esi
 804a077:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 804a07e:	00 
 804a07f:	31 c0                	xor    %eax,%eax
 804a081:	eb 97                	jmp    804a01a <naive_smooth+0x14a>
 804a083:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 804a089:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

0804a090 <smooth>:
 804a090:	e9 3b fe ff ff       	jmp    8049ed0 <naive_smooth>
 804a095:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 804a099:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

0804a0a0 <register_rotate_functions>:
 804a0a0:	83 ec 14             	sub    $0x14,%esp
 804a0a3:	68 20 d1 04 08       	push   $0x804d120
 804a0a8:	68 50 9e 04 08       	push   $0x8049e50
 804a0ad:	e8 1e f6 ff ff       	call   80496d0 <add_rotate_function>
 804a0b2:	58                   	pop    %eax
 804a0b3:	5a                   	pop    %edx
 804a0b4:	68 00 d1 04 08       	push   $0x804d100
 804a0b9:	68 c0 9e 04 08       	push   $0x8049ec0
 804a0be:	e8 0d f6 ff ff       	call   80496d0 <add_rotate_function>
 804a0c3:	83 c4 1c             	add    $0x1c,%esp
 804a0c6:	c3                   	ret    
 804a0c7:	89 f6                	mov    %esi,%esi
 804a0c9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

0804a0d0 <register_smooth_functions>:
 804a0d0:	83 ec 14             	sub    $0x14,%esp
 804a0d3:	68 a0 d0 04 08       	push   $0x804d0a0
 804a0d8:	68 90 a0 04 08       	push   $0x804a090
 804a0dd:	e8 be f5 ff ff       	call   80496a0 <add_smooth_function>
 804a0e2:	58                   	pop    %eax
 804a0e3:	5a                   	pop    %edx
 804a0e4:	68 c0 d0 04 08       	push   $0x804d0c0
 804a0e9:	68 d0 9e 04 08       	push   $0x8049ed0
 804a0ee:	e8 ad f5 ff ff       	call   80496a0 <add_smooth_function>
 804a0f3:	83 c4 1c             	add    $0x1c,%esp
 804a0f6:	c3                   	ret    
 804a0f7:	66 90                	xchg   %ax,%ax
 804a0f9:	66 90                	xchg   %ax,%ax
 804a0fb:	66 90                	xchg   %ax,%ax
 804a0fd:	66 90                	xchg   %ax,%ax
 804a0ff:	90                   	nop

0804a100 <add_sample>:
 804a100:	8b 0d f4 fa c6 09    	mov    0x9c6faf4,%ecx
 804a106:	a1 74 d1 04 08       	mov    0x804d174,%eax
 804a10b:	56                   	push   %esi
 804a10c:	53                   	push   %ebx
 804a10d:	8b 15 f8 fa c6 09    	mov    0x9c6faf8,%edx
 804a113:	39 c1                	cmp    %eax,%ecx
 804a115:	dd 44 24 0c          	fldl   0xc(%esp)
 804a119:	7d 75                	jge    804a190 <add_sample+0x90>
 804a11b:	dd 1c ca             	fstpl  (%edx,%ecx,8)
 804a11e:	89 c8                	mov    %ecx,%eax
 804a120:	83 c1 01             	add    $0x1,%ecx
 804a123:	85 c0                	test   %eax,%eax
 804a125:	89 0d f4 fa c6 09    	mov    %ecx,0x9c6faf4
 804a12b:	7e 5f                	jle    804a18c <add_sample+0x8c>
 804a12d:	8d 0c c5 f8 ff ff ff 	lea    -0x8(,%eax,8),%ecx
 804a134:	8d 1c 0a             	lea    (%edx,%ecx,1),%ebx
 804a137:	8d 74 0a 08          	lea    0x8(%edx,%ecx,1),%esi
 804a13b:	dd 03                	fldl   (%ebx)
 804a13d:	dd 06                	fldl   (%esi)
 804a13f:	d9 c9                	fxch   %st(1)
 804a141:	db e9                	fucomi %st(1),%st
 804a143:	76 37                	jbe    804a17c <add_sample+0x7c>
 804a145:	d9 c9                	fxch   %st(1)
 804a147:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
 804a14e:	f7 d9                	neg    %ecx
 804a150:	01 cb                	add    %ecx,%ebx
 804a152:	01 f1                	add    %esi,%ecx
 804a154:	eb 19                	jmp    804a16f <add_sample+0x6f>
 804a156:	8d 76 00             	lea    0x0(%esi),%esi
 804a159:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
 804a160:	dd 44 c2 f8          	fldl   -0x8(%edx,%eax,8)
 804a164:	dd 04 c2             	fldl   (%edx,%eax,8)
 804a167:	d9 c9                	fxch   %st(1)
 804a169:	db e9                	fucomi %st(1),%st
 804a16b:	76 1b                	jbe    804a188 <add_sample+0x88>
 804a16d:	d9 c9                	fxch   %st(1)
 804a16f:	dd 1c c3             	fstpl  (%ebx,%eax,8)
 804a172:	dd 1c c1             	fstpl  (%ecx,%eax,8)
 804a175:	83 e8 01             	sub    $0x1,%eax
 804a178:	75 e6                	jne    804a160 <add_sample+0x60>
 804a17a:	eb 10                	jmp    804a18c <add_sample+0x8c>
 804a17c:	dd d8                	fstp   %st(0)
 804a17e:	dd d8                	fstp   %st(0)
 804a180:	eb 0a                	jmp    804a18c <add_sample+0x8c>
 804a182:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 804a188:	dd d8                	fstp   %st(0)
 804a18a:	dd d8                	fstp   %st(0)
 804a18c:	5b                   	pop    %ebx
 804a18d:	5e                   	pop    %esi
 804a18e:	c3                   	ret    
 804a18f:	90                   	nop
 804a190:	8d 98 ff ff ff 1f    	lea    0x1fffffff(%eax),%ebx
 804a196:	dd 04 da             	fldl   (%edx,%ebx,8)
 804a199:	df e9                	fucomip %st(1),%st
 804a19b:	76 13                	jbe    804a1b0 <add_sample+0xb0>
 804a19d:	83 e8 01             	sub    $0x1,%eax
 804a1a0:	dd 1c da             	fstpl  (%edx,%ebx,8)
 804a1a3:	e9 78 ff ff ff       	jmp    804a120 <add_sample+0x20>
 804a1a8:	90                   	nop
 804a1a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 804a1b0:	dd d8                	fstp   %st(0)
 804a1b2:	83 c1 01             	add    $0x1,%ecx
 804a1b5:	5b                   	pop    %ebx
 804a1b6:	89 0d f4 fa c6 09    	mov    %ecx,0x9c6faf4
 804a1bc:	5e                   	pop    %esi
 804a1bd:	c3                   	ret    
 804a1be:	66 90                	xchg   %ax,%ax

0804a1c0 <has_converged>:
 804a1c0:	8b 15 74 d1 04 08    	mov    0x804d174,%edx
 804a1c6:	31 c0                	xor    %eax,%eax
 804a1c8:	39 15 f4 fa c6 09    	cmp    %edx,0x9c6faf4
 804a1ce:	7c 1e                	jl     804a1ee <has_converged+0x2e>
 804a1d0:	d9 e8                	fld1   
 804a1d2:	a1 f8 fa c6 09       	mov    0x9c6faf8,%eax
 804a1d7:	dc 05 68 d1 04 08    	faddl  0x804d168
 804a1dd:	dc 08                	fmull  (%eax)
 804a1df:	dd 44 d0 f8          	fldl   -0x8(%eax,%edx,8)
 804a1e3:	d9 c9                	fxch   %st(1)
 804a1e5:	31 c0                	xor    %eax,%eax
 804a1e7:	df e9                	fucomip %st(1),%st
 804a1e9:	dd d8                	fstp   %st(0)
 804a1eb:	0f 93 c0             	setae  %al
 804a1ee:	f3 c3                	repz ret 

0804a1f0 <clear>:
 804a1f0:	57                   	push   %edi
 804a1f1:	a1 fc fa c6 09       	mov    0x9c6fafc,%eax
 804a1f6:	56                   	push   %esi
 804a1f7:	8b 35 60 d1 04 08    	mov    0x804d160,%esi
 804a1fd:	53                   	push   %ebx
 804a1fe:	8b 3d 64 d1 04 08    	mov    0x804d164,%edi
 804a204:	8b 1d f0 fa c6 09    	mov    0x9c6faf0,%ebx
 804a20a:	c1 ee 02             	shr    $0x2,%esi
 804a20d:	85 c0                	test   %eax,%eax
 804a20f:	74 21                	je     804a232 <clear+0x42>
 804a211:	83 e7 fc             	and    $0xfffffffc,%edi
 804a214:	89 fa                	mov    %edi,%edx
 804a216:	01 c2                	add    %eax,%edx
 804a218:	39 c2                	cmp    %eax,%edx
 804a21a:	76 0c                	jbe    804a228 <clear+0x38>
 804a21c:	c1 e6 02             	shl    $0x2,%esi
 804a21f:	90                   	nop
 804a220:	03 18                	add    (%eax),%ebx
 804a222:	01 f0                	add    %esi,%eax
 804a224:	39 c2                	cmp    %eax,%edx
 804a226:	77 f8                	ja     804a220 <clear+0x30>
 804a228:	89 1d f0 fa c6 09    	mov    %ebx,0x9c6faf0
 804a22e:	5b                   	pop    %ebx
 804a22f:	5e                   	pop    %esi
 804a230:	5f                   	pop    %edi
 804a231:	c3                   	ret    
 804a232:	83 ec 0c             	sub    $0xc,%esp
 804a235:	57                   	push   %edi
 804a236:	e8 65 e5 ff ff       	call   80487a0 <malloc@plt>
 804a23b:	83 c4 10             	add    $0x10,%esp
 804a23e:	85 c0                	test   %eax,%eax
 804a240:	a3 fc fa c6 09       	mov    %eax,0x9c6fafc
 804a245:	75 ca                	jne    804a211 <clear+0x21>
 804a247:	ff 35 80 d1 04 08    	pushl  0x804d180
 804a24d:	6a 3e                	push   $0x3e
 804a24f:	6a 01                	push   $0x1
 804a251:	68 cc ad 04 08       	push   $0x804adcc
 804a256:	e8 35 e5 ff ff       	call   8048790 <fwrite@plt>
 804a25b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 804a262:	e8 59 e5 ff ff       	call   80487c0 <exit@plt>
 804a267:	89 f6                	mov    %esi,%esi
 804a269:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

0804a270 <fcyc_v>:
 804a270:	56                   	push   %esi
 804a271:	53                   	push   %ebx
 804a272:	83 ec 14             	sub    $0x14,%esp
 804a275:	a1 f8 fa c6 09       	mov    0x9c6faf8,%eax
 804a27a:	8b 5c 24 20          	mov    0x20(%esp),%ebx
 804a27e:	8b 74 24 24          	mov    0x24(%esp),%esi
 804a282:	85 c0                	test   %eax,%eax
 804a284:	74 0c                	je     804a292 <fcyc_v+0x22>
 804a286:	83 ec 0c             	sub    $0xc,%esp
 804a289:	50                   	push   %eax
 804a28a:	e8 a1 e4 ff ff       	call   8048730 <free@plt>
 804a28f:	83 c4 10             	add    $0x10,%esp
 804a292:	83 ec 08             	sub    $0x8,%esp
 804a295:	6a 08                	push   $0x8
 804a297:	ff 35 74 d1 04 08    	pushl  0x804d174
 804a29d:	e8 de e5 ff ff       	call   8048880 <calloc@plt>
 804a2a2:	8b 0d 04 fb c6 09    	mov    0x9c6fb04,%ecx
 804a2a8:	83 c4 10             	add    $0x10,%esp
 804a2ab:	a3 f8 fa c6 09       	mov    %eax,0x9c6faf8
 804a2b0:	c7 05 f4 fa c6 09 00 	movl   $0x0,0x9c6faf4
 804a2b7:	00 00 00 
 804a2ba:	85 c9                	test   %ecx,%ecx
 804a2bc:	0f 84 84 00 00 00    	je     804a346 <fcyc_v+0xd6>
 804a2c2:	eb 35                	jmp    804a2f9 <fcyc_v+0x89>
 804a2c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 804a2c8:	e8 f3 02 00 00       	call   804a5c0 <start_comp_counter>
 804a2cd:	83 ec 0c             	sub    $0xc,%esp
 804a2d0:	56                   	push   %esi
 804a2d1:	ff d3                	call   *%ebx
 804a2d3:	e8 48 04 00 00       	call   804a720 <get_comp_counter>
 804a2d8:	dd 1c 24             	fstpl  (%esp)
 804a2db:	e8 20 fe ff ff       	call   804a100 <add_sample>
 804a2e0:	e8 db fe ff ff       	call   804a1c0 <has_converged>
 804a2e5:	83 c4 10             	add    $0x10,%esp
 804a2e8:	85 c0                	test   %eax,%eax
 804a2ea:	75 6c                	jne    804a358 <fcyc_v+0xe8>
 804a2ec:	a1 70 d1 04 08       	mov    0x804d170,%eax
 804a2f1:	39 05 f4 fa c6 09    	cmp    %eax,0x9c6faf4
 804a2f7:	7d 5f                	jge    804a358 <fcyc_v+0xe8>
 804a2f9:	8b 15 00 fb c6 09    	mov    0x9c6fb00,%edx
 804a2ff:	85 d2                	test   %edx,%edx
 804a301:	74 c5                	je     804a2c8 <fcyc_v+0x58>
 804a303:	e8 e8 fe ff ff       	call   804a1f0 <clear>
 804a308:	eb be                	jmp    804a2c8 <fcyc_v+0x58>
 804a30a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 804a310:	e8 db fe ff ff       	call   804a1f0 <clear>
 804a315:	e8 36 01 00 00       	call   804a450 <start_counter>
 804a31a:	83 ec 0c             	sub    $0xc,%esp
 804a31d:	56                   	push   %esi
 804a31e:	ff d3                	call   *%ebx
 804a320:	e8 4b 01 00 00       	call   804a470 <get_counter>
 804a325:	dd 1c 24             	fstpl  (%esp)
 804a328:	e8 d3 fd ff ff       	call   804a100 <add_sample>
 804a32d:	e8 8e fe ff ff       	call   804a1c0 <has_converged>
 804a332:	83 c4 10             	add    $0x10,%esp
 804a335:	85 c0                	test   %eax,%eax
 804a337:	75 1f                	jne    804a358 <fcyc_v+0xe8>
 804a339:	a1 70 d1 04 08       	mov    0x804d170,%eax
 804a33e:	39 05 f4 fa c6 09    	cmp    %eax,0x9c6faf4
 804a344:	7d 12                	jge    804a358 <fcyc_v+0xe8>
 804a346:	a1 00 fb c6 09       	mov    0x9c6fb00,%eax
 804a34b:	85 c0                	test   %eax,%eax
 804a34d:	74 c6                	je     804a315 <fcyc_v+0xa5>
 804a34f:	eb bf                	jmp    804a310 <fcyc_v+0xa0>
 804a351:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 804a358:	a1 f8 fa c6 09       	mov    0x9c6faf8,%eax
 804a35d:	83 ec 0c             	sub    $0xc,%esp
 804a360:	dd 00                	fldl   (%eax)
 804a362:	dd 5c 24 14          	fstpl  0x14(%esp)
 804a366:	50                   	push   %eax
 804a367:	e8 c4 e3 ff ff       	call   8048730 <free@plt>
 804a36c:	c7 05 f8 fa c6 09 00 	movl   $0x0,0x9c6faf8
 804a373:	00 00 00 
 804a376:	dd 44 24 18          	fldl   0x18(%esp)
 804a37a:	83 c4 24             	add    $0x24,%esp
 804a37d:	5b                   	pop    %ebx
 804a37e:	5e                   	pop    %esi
 804a37f:	c3                   	ret    

0804a380 <fcyc>:
 804a380:	e9 eb fe ff ff       	jmp    804a270 <fcyc_v>
 804a385:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 804a389:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

0804a390 <set_fcyc_clear_cache>:
 804a390:	8b 44 24 04          	mov    0x4(%esp),%eax
 804a394:	a3 00 fb c6 09       	mov    %eax,0x9c6fb00
 804a399:	c3                   	ret    
 804a39a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

0804a3a0 <set_fcyc_cache_size>:
 804a3a0:	83 ec 0c             	sub    $0xc,%esp
 804a3a3:	8b 44 24 10          	mov    0x10(%esp),%eax
 804a3a7:	39 05 64 d1 04 08    	cmp    %eax,0x804d164
 804a3ad:	74 24                	je     804a3d3 <set_fcyc_cache_size+0x33>
 804a3af:	a3 64 d1 04 08       	mov    %eax,0x804d164
 804a3b4:	a1 fc fa c6 09       	mov    0x9c6fafc,%eax
 804a3b9:	85 c0                	test   %eax,%eax
 804a3bb:	74 16                	je     804a3d3 <set_fcyc_cache_size+0x33>
 804a3bd:	83 ec 0c             	sub    $0xc,%esp
 804a3c0:	50                   	push   %eax
 804a3c1:	e8 6a e3 ff ff       	call   8048730 <free@plt>
 804a3c6:	c7 05 fc fa c6 09 00 	movl   $0x0,0x9c6fafc
 804a3cd:	00 00 00 
 804a3d0:	83 c4 10             	add    $0x10,%esp
 804a3d3:	83 c4 0c             	add    $0xc,%esp
 804a3d6:	c3                   	ret    
 804a3d7:	89 f6                	mov    %esi,%esi
 804a3d9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

0804a3e0 <set_fcyc_cache_block>:
 804a3e0:	8b 44 24 04          	mov    0x4(%esp),%eax
 804a3e4:	a3 60 d1 04 08       	mov    %eax,0x804d160
 804a3e9:	c3                   	ret    
 804a3ea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

0804a3f0 <set_fcyc_compensate>:
 804a3f0:	8b 44 24 04          	mov    0x4(%esp),%eax
 804a3f4:	a3 04 fb c6 09       	mov    %eax,0x9c6fb04
 804a3f9:	c3                   	ret    
 804a3fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

0804a400 <set_fcyc_k>:
 804a400:	8b 44 24 04          	mov    0x4(%esp),%eax
 804a404:	a3 74 d1 04 08       	mov    %eax,0x804d174
 804a409:	c3                   	ret    
 804a40a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

0804a410 <set_fcyc_maxsamples>:
 804a410:	8b 44 24 04          	mov    0x4(%esp),%eax
 804a414:	a3 70 d1 04 08       	mov    %eax,0x804d170
 804a419:	c3                   	ret    
 804a41a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

0804a420 <set_fcyc_epsilon>:
 804a420:	dd 44 24 04          	fldl   0x4(%esp)
 804a424:	dd 1d 68 d1 04 08    	fstpl  0x804d168
 804a42a:	c3                   	ret    
 804a42b:	66 90                	xchg   %ax,%ax
 804a42d:	66 90                	xchg   %ax,%ax
 804a42f:	90                   	nop

0804a430 <access_counter>:
 804a430:	53                   	push   %ebx
 804a431:	0f 31                	rdtsc  
 804a433:	89 d3                	mov    %edx,%ebx
 804a435:	89 c1                	mov    %eax,%ecx
 804a437:	8b 44 24 08          	mov    0x8(%esp),%eax
 804a43b:	89 18                	mov    %ebx,(%eax)
 804a43d:	8b 44 24 0c          	mov    0xc(%esp),%eax
 804a441:	89 08                	mov    %ecx,(%eax)
 804a443:	5b                   	pop    %ebx
 804a444:	c3                   	ret    
 804a445:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 804a449:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

0804a450 <start_counter>:
 804a450:	53                   	push   %ebx
 804a451:	0f 31                	rdtsc  
 804a453:	89 d3                	mov    %edx,%ebx
 804a455:	89 c1                	mov    %eax,%ecx
 804a457:	89 1d 1c fb c6 09    	mov    %ebx,0x9c6fb1c
 804a45d:	89 0d 18 fb c6 09    	mov    %ecx,0x9c6fb18
 804a463:	5b                   	pop    %ebx
 804a464:	c3                   	ret    
 804a465:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 804a469:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

0804a470 <get_counter>:
 804a470:	53                   	push   %ebx
 804a471:	0f 31                	rdtsc  
 804a473:	89 d1                	mov    %edx,%ecx
 804a475:	89 c3                	mov    %eax,%ebx
 804a477:	83 ec 18             	sub    $0x18,%esp
 804a47a:	89 d8                	mov    %ebx,%eax
 804a47c:	2b 05 18 fb c6 09    	sub    0x9c6fb18,%eax
 804a482:	2b 0d 1c fb c6 09    	sub    0x9c6fb1c,%ecx
 804a488:	31 d2                	xor    %edx,%edx
 804a48a:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 804a491:	00 
 804a492:	39 d8                	cmp    %ebx,%eax
 804a494:	0f 97 c2             	seta   %dl
 804a497:	29 d1                	sub    %edx,%ecx
 804a499:	89 0c 24             	mov    %ecx,(%esp)
 804a49c:	df 2c 24             	fildll (%esp)
 804a49f:	89 04 24             	mov    %eax,(%esp)
 804a4a2:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 804a4a9:	00 
 804a4aa:	d8 0d 58 ae 04 08    	fmuls  0x804ae58
 804a4b0:	d8 0d 5c ae 04 08    	fmuls  0x804ae5c
 804a4b6:	df 2c 24             	fildll (%esp)
 804a4b9:	de c1                	faddp  %st,%st(1)
 804a4bb:	d9 ee                	fldz   
 804a4bd:	df e9                	fucomip %st(1),%st
 804a4bf:	77 0f                	ja     804a4d0 <get_counter+0x60>
 804a4c1:	83 c4 18             	add    $0x18,%esp
 804a4c4:	5b                   	pop    %ebx
 804a4c5:	c3                   	ret    
 804a4c6:	8d 76 00             	lea    0x0(%esi),%esi
 804a4c9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
 804a4d0:	83 ec 14             	sub    $0x14,%esp
 804a4d3:	dd 14 24             	fstl   (%esp)
 804a4d6:	dd 5c 24 14          	fstpl  0x14(%esp)
 804a4da:	68 0c ae 04 08       	push   $0x804ae0c
 804a4df:	6a 01                	push   $0x1
 804a4e1:	ff 35 80 d1 04 08    	pushl  0x804d180
 804a4e7:	e8 74 e3 ff ff       	call   8048860 <__fprintf_chk@plt>
 804a4ec:	83 c4 20             	add    $0x20,%esp
 804a4ef:	dd 04 24             	fldl   (%esp)
 804a4f2:	83 c4 18             	add    $0x18,%esp
 804a4f5:	5b                   	pop    %ebx
 804a4f6:	c3                   	ret    
 804a4f7:	89 f6                	mov    %esi,%esi
 804a4f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

0804a500 <ovhd>:
 804a500:	53                   	push   %ebx
 804a501:	0f 31                	rdtsc  
 804a503:	89 d3                	mov    %edx,%ebx
 804a505:	89 c1                	mov    %eax,%ecx
 804a507:	83 ec 08             	sub    $0x8,%esp
 804a50a:	89 1d 1c fb c6 09    	mov    %ebx,0x9c6fb1c
 804a510:	89 0d 18 fb c6 09    	mov    %ecx,0x9c6fb18
 804a516:	e8 55 ff ff ff       	call   804a470 <get_counter>
 804a51b:	dd d8                	fstp   %st(0)
 804a51d:	0f 31                	rdtsc  
 804a51f:	89 d3                	mov    %edx,%ebx
 804a521:	89 c1                	mov    %eax,%ecx
 804a523:	89 1d 1c fb c6 09    	mov    %ebx,0x9c6fb1c
 804a529:	89 0d 18 fb c6 09    	mov    %ecx,0x9c6fb18
 804a52f:	83 c4 08             	add    $0x8,%esp
 804a532:	5b                   	pop    %ebx
 804a533:	e9 38 ff ff ff       	jmp    804a470 <get_counter>
 804a538:	90                   	nop
 804a539:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

0804a540 <mhz_full>:
 804a540:	53                   	push   %ebx
 804a541:	0f 31                	rdtsc  
 804a543:	89 d3                	mov    %edx,%ebx
 804a545:	89 c1                	mov    %eax,%ecx
 804a547:	83 ec 24             	sub    $0x24,%esp
 804a54a:	89 0d 18 fb c6 09    	mov    %ecx,0x9c6fb18
 804a550:	89 1d 1c fb c6 09    	mov    %ebx,0x9c6fb1c
 804a556:	ff 74 24 30          	pushl  0x30(%esp)
 804a55a:	e8 01 e2 ff ff       	call   8048760 <sleep@plt>
 804a55f:	e8 0c ff ff ff       	call   804a470 <get_counter>
 804a564:	db 44 24 34          	fildl  0x34(%esp)
 804a568:	83 c4 10             	add    $0x10,%esp
 804a56b:	8b 44 24 20          	mov    0x20(%esp),%eax
 804a56f:	d8 0d 60 ae 04 08    	fmuls  0x804ae60
 804a575:	85 c0                	test   %eax,%eax
 804a577:	de f9                	fdivrp %st,%st(1)
 804a579:	74 1d                	je     804a598 <mhz_full+0x58>
 804a57b:	83 ec 08             	sub    $0x8,%esp
 804a57e:	dd 14 24             	fstl   (%esp)
 804a581:	dd 5c 24 10          	fstpl  0x10(%esp)
 804a585:	68 34 ae 04 08       	push   $0x804ae34
 804a58a:	6a 01                	push   $0x1
 804a58c:	e8 bf e2 ff ff       	call   8048850 <__printf_chk@plt>
 804a591:	83 c4 10             	add    $0x10,%esp
 804a594:	dd 44 24 08          	fldl   0x8(%esp)
 804a598:	83 c4 18             	add    $0x18,%esp
 804a59b:	5b                   	pop    %ebx
 804a59c:	c3                   	ret    
 804a59d:	8d 76 00             	lea    0x0(%esi),%esi

0804a5a0 <mhz>:
 804a5a0:	83 ec 14             	sub    $0x14,%esp
 804a5a3:	6a 02                	push   $0x2
 804a5a5:	ff 74 24 1c          	pushl  0x1c(%esp)
 804a5a9:	e8 92 ff ff ff       	call   804a540 <mhz_full>
 804a5ae:	83 c4 1c             	add    $0x1c,%esp
 804a5b1:	c3                   	ret    
 804a5b2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 804a5b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

0804a5c0 <start_comp_counter>:
 804a5c0:	57                   	push   %edi
 804a5c1:	56                   	push   %esi
 804a5c2:	d9 ee                	fldz   
 804a5c4:	53                   	push   %ebx
 804a5c5:	83 ec 30             	sub    $0x30,%esp
 804a5c8:	dd 05 10 fb c6 09    	fldl   0x9c6fb10
 804a5ce:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 804a5d4:	89 44 24 2c          	mov    %eax,0x2c(%esp)
 804a5d8:	31 c0                	xor    %eax,%eax
 804a5da:	df e9                	fucomip %st(1),%st
 804a5dc:	dd d8                	fstp   %st(0)
 804a5de:	7a 02                	jp     804a5e2 <start_comp_counter+0x22>
 804a5e0:	74 4e                	je     804a630 <start_comp_counter+0x70>
 804a5e2:	8d 74 24 1c          	lea    0x1c(%esp),%esi
 804a5e6:	eb 08                	jmp    804a5f0 <start_comp_counter+0x30>
 804a5e8:	dd d8                	fstp   %st(0)
 804a5ea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 804a5f0:	83 ec 0c             	sub    $0xc,%esp
 804a5f3:	56                   	push   %esi
 804a5f4:	e8 27 e1 ff ff       	call   8048720 <times@plt>
 804a5f9:	8b 44 24 2c          	mov    0x2c(%esp),%eax
 804a5fd:	83 c4 10             	add    $0x10,%esp
 804a600:	a3 08 fb c6 09       	mov    %eax,0x9c6fb08
 804a605:	0f 31                	rdtsc  
 804a607:	89 d3                	mov    %edx,%ebx
 804a609:	89 c1                	mov    %eax,%ecx
 804a60b:	8b 44 24 2c          	mov    0x2c(%esp),%eax
 804a60f:	65 33 05 14 00 00 00 	xor    %gs:0x14,%eax
 804a616:	89 1d 1c fb c6 09    	mov    %ebx,0x9c6fb1c
 804a61c:	89 0d 18 fb c6 09    	mov    %ecx,0x9c6fb18
 804a622:	0f 85 e4 00 00 00    	jne    804a70c <start_comp_counter+0x14c>
 804a628:	83 c4 30             	add    $0x30,%esp
 804a62b:	5b                   	pop    %ebx
 804a62c:	5e                   	pop    %esi
 804a62d:	5f                   	pop    %edi
 804a62e:	c3                   	ret    
 804a62f:	90                   	nop
 804a630:	83 ec 0c             	sub    $0xc,%esp
 804a633:	8d 74 24 28          	lea    0x28(%esp),%esi
 804a637:	56                   	push   %esi
 804a638:	e8 e3 e0 ff ff       	call   8048720 <times@plt>
 804a63d:	0f 31                	rdtsc  
 804a63f:	89 d3                	mov    %edx,%ebx
 804a641:	89 c1                	mov    %eax,%ecx
 804a643:	8b 7c 24 2c          	mov    0x2c(%esp),%edi
 804a647:	89 1d 1c fb c6 09    	mov    %ebx,0x9c6fb1c
 804a64d:	31 db                	xor    %ebx,%ebx
 804a64f:	89 0d 18 fb c6 09    	mov    %ecx,0x9c6fb18
 804a655:	e8 16 fe ff ff       	call   804a470 <get_counter>
 804a65a:	dd 5c 24 10          	fstpl  0x10(%esp)
 804a65e:	83 c4 10             	add    $0x10,%esp
 804a661:	eb 12                	jmp    804a675 <start_comp_counter+0xb5>
 804a663:	90                   	nop
 804a664:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 804a668:	dd d8                	fstp   %st(0)
 804a66a:	dd d8                	fstp   %st(0)
 804a66c:	83 fb 63             	cmp    $0x63,%ebx
 804a66f:	0f 8f 7b ff ff ff    	jg     804a5f0 <start_comp_counter+0x30>
 804a675:	e8 f6 fd ff ff       	call   804a470 <get_counter>
 804a67a:	dd 04 24             	fldl   (%esp)
 804a67d:	d8 e9                	fsubr  %st(1),%st
 804a67f:	d9 05 64 ae 04 08    	flds   0x804ae64
 804a685:	d9 c9                	fxch   %st(1)
 804a687:	db e9                	fucomi %st(1),%st
 804a689:	dd d9                	fstp   %st(1)
 804a68b:	72 db                	jb     804a668 <start_comp_counter+0xa8>
 804a68d:	dd 5c 24 08          	fstpl  0x8(%esp)
 804a691:	83 ec 0c             	sub    $0xc,%esp
 804a694:	dd 5c 24 0c          	fstpl  0xc(%esp)
 804a698:	56                   	push   %esi
 804a699:	e8 82 e0 ff ff       	call   8048720 <times@plt>
 804a69e:	8b 44 24 2c          	mov    0x2c(%esp),%eax
 804a6a2:	83 c4 10             	add    $0x10,%esp
 804a6a5:	39 f8                	cmp    %edi,%eax
 804a6a7:	dd 04 24             	fldl   (%esp)
 804a6aa:	7e 4f                	jle    804a6fb <start_comp_counter+0x13b>
 804a6ac:	89 c2                	mov    %eax,%edx
 804a6ae:	29 fa                	sub    %edi,%edx
 804a6b0:	89 14 24             	mov    %edx,(%esp)
 804a6b3:	db 04 24             	fildl  (%esp)
 804a6b6:	dd 44 24 08          	fldl   0x8(%esp)
 804a6ba:	de f1                	fdivp  %st,%st(1)
 804a6bc:	dd 05 10 fb c6 09    	fldl   0x9c6fb10
 804a6c2:	d9 ee                	fldz   
 804a6c4:	d9 c9                	fxch   %st(1)
 804a6c6:	db e9                	fucomi %st(1),%st
 804a6c8:	dd d9                	fstp   %st(1)
 804a6ca:	7a 02                	jp     804a6ce <start_comp_counter+0x10e>
 804a6cc:	74 0a                	je     804a6d8 <start_comp_counter+0x118>
 804a6ce:	df e9                	fucomip %st(1),%st
 804a6d0:	76 1e                	jbe    804a6f0 <start_comp_counter+0x130>
 804a6d2:	eb 06                	jmp    804a6da <start_comp_counter+0x11a>
 804a6d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 804a6d8:	dd d8                	fstp   %st(0)
 804a6da:	d9 05 68 ae 04 08    	flds   0x804ae68
 804a6e0:	d9 c9                	fxch   %st(1)
 804a6e2:	db e9                	fucomi %st(1),%st
 804a6e4:	dd d9                	fstp   %st(1)
 804a6e6:	76 0c                	jbe    804a6f4 <start_comp_counter+0x134>
 804a6e8:	dd 1d 10 fb c6 09    	fstpl  0x9c6fb10
 804a6ee:	eb 06                	jmp    804a6f6 <start_comp_counter+0x136>
 804a6f0:	dd d8                	fstp   %st(0)
 804a6f2:	eb 02                	jmp    804a6f6 <start_comp_counter+0x136>
 804a6f4:	dd d8                	fstp   %st(0)
 804a6f6:	83 c3 01             	add    $0x1,%ebx
 804a6f9:	89 c7                	mov    %eax,%edi
 804a6fb:	83 fb 63             	cmp    $0x63,%ebx
 804a6fe:	0f 8f e4 fe ff ff    	jg     804a5e8 <start_comp_counter+0x28>
 804a704:	dd 1c 24             	fstpl  (%esp)
 804a707:	e9 69 ff ff ff       	jmp    804a675 <start_comp_counter+0xb5>
 804a70c:	e8 6f e0 ff ff       	call   8048780 <__stack_chk_fail@plt>
 804a711:	eb 0d                	jmp    804a720 <get_comp_counter>
 804a713:	90                   	nop
 804a714:	90                   	nop
 804a715:	90                   	nop
 804a716:	90                   	nop
 804a717:	90                   	nop
 804a718:	90                   	nop
 804a719:	90                   	nop
 804a71a:	90                   	nop
 804a71b:	90                   	nop
 804a71c:	90                   	nop
 804a71d:	90                   	nop
 804a71e:	90                   	nop
 804a71f:	90                   	nop

0804a720 <get_comp_counter>:
 804a720:	83 ec 3c             	sub    $0x3c,%esp
 804a723:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 804a729:	89 44 24 2c          	mov    %eax,0x2c(%esp)
 804a72d:	31 c0                	xor    %eax,%eax
 804a72f:	e8 3c fd ff ff       	call   804a470 <get_counter>
 804a734:	83 ec 0c             	sub    $0xc,%esp
 804a737:	dd 5c 24 14          	fstpl  0x14(%esp)
 804a73b:	8d 44 24 28          	lea    0x28(%esp),%eax
 804a73f:	50                   	push   %eax
 804a740:	e8 db df ff ff       	call   8048720 <times@plt>
 804a745:	8b 44 24 2c          	mov    0x2c(%esp),%eax
 804a749:	2b 05 08 fb c6 09    	sub    0x9c6fb08,%eax
 804a74f:	89 44 24 14          	mov    %eax,0x14(%esp)
 804a753:	db 44 24 14          	fildl  0x14(%esp)
 804a757:	dc 0d 10 fb c6 09    	fmull  0x9c6fb10
 804a75d:	dd 44 24 18          	fldl   0x18(%esp)
 804a761:	83 c4 10             	add    $0x10,%esp
 804a764:	8b 44 24 2c          	mov    0x2c(%esp),%eax
 804a768:	65 33 05 14 00 00 00 	xor    %gs:0x14,%eax
 804a76f:	de e1                	fsubp  %st,%st(1)
 804a771:	75 04                	jne    804a777 <get_comp_counter+0x57>
 804a773:	83 c4 3c             	add    $0x3c,%esp
 804a776:	c3                   	ret    
 804a777:	dd d8                	fstp   %st(0)
 804a779:	e8 02 e0 ff ff       	call   8048780 <__stack_chk_fail@plt>
 804a77e:	66 90                	xchg   %ax,%ax

0804a780 <__libc_csu_init>:
 804a780:	55                   	push   %ebp
 804a781:	57                   	push   %edi
 804a782:	56                   	push   %esi
 804a783:	53                   	push   %ebx
 804a784:	e8 67 e7 ff ff       	call   8048ef0 <__x86.get_pc_thunk.bx>
 804a789:	81 c3 77 28 00 00    	add    $0x2877,%ebx
 804a78f:	83 ec 0c             	sub    $0xc,%esp
 804a792:	8b 6c 24 20          	mov    0x20(%esp),%ebp
 804a796:	8d b3 04 ff ff ff    	lea    -0xfc(%ebx),%esi
 804a79c:	e8 2f df ff ff       	call   80486d0 <_init>
 804a7a1:	8d 83 00 ff ff ff    	lea    -0x100(%ebx),%eax
 804a7a7:	29 c6                	sub    %eax,%esi
 804a7a9:	c1 fe 02             	sar    $0x2,%esi
 804a7ac:	85 f6                	test   %esi,%esi
 804a7ae:	74 25                	je     804a7d5 <__libc_csu_init+0x55>
 804a7b0:	31 ff                	xor    %edi,%edi
 804a7b2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 804a7b8:	83 ec 04             	sub    $0x4,%esp
 804a7bb:	ff 74 24 2c          	pushl  0x2c(%esp)
 804a7bf:	ff 74 24 2c          	pushl  0x2c(%esp)
 804a7c3:	55                   	push   %ebp
 804a7c4:	ff 94 bb 00 ff ff ff 	call   *-0x100(%ebx,%edi,4)
 804a7cb:	83 c7 01             	add    $0x1,%edi
 804a7ce:	83 c4 10             	add    $0x10,%esp
 804a7d1:	39 f7                	cmp    %esi,%edi
 804a7d3:	75 e3                	jne    804a7b8 <__libc_csu_init+0x38>
 804a7d5:	83 c4 0c             	add    $0xc,%esp
 804a7d8:	5b                   	pop    %ebx
 804a7d9:	5e                   	pop    %esi
 804a7da:	5f                   	pop    %edi
 804a7db:	5d                   	pop    %ebp
 804a7dc:	c3                   	ret    
 804a7dd:	8d 76 00             	lea    0x0(%esi),%esi

0804a7e0 <__libc_csu_fini>:
 804a7e0:	f3 c3                	repz ret 

Disassembly of section .fini:

0804a7e4 <_fini>:
 804a7e4:	53                   	push   %ebx
 804a7e5:	83 ec 08             	sub    $0x8,%esp
 804a7e8:	e8 03 e7 ff ff       	call   8048ef0 <__x86.get_pc_thunk.bx>
 804a7ed:	81 c3 13 28 00 00    	add    $0x2813,%ebx
 804a7f3:	83 c4 08             	add    $0x8,%esp
 804a7f6:	5b                   	pop    %ebx
 804a7f7:	c3                   	ret    
