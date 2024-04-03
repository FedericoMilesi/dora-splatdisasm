.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel parse_attrib_release
/* 39040 80048840 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 39044 80048844 1000B0AF */  sw         $s0, 0x10($sp)
/* 39048 80048848 21808000 */  addu       $s0, $a0, $zero
/* 3904C 8004884C 1C00BFAF */  sw         $ra, 0x1C($sp)
/* 39050 80048850 1800B2AF */  sw         $s2, 0x18($sp)
/* 39054 80048854 4E26010C */  jal        parse_attrib_generic
/* 39058 80048858 1400B1AF */   sw        $s1, 0x14($sp)
/* 3905C 8004885C 60000424 */  addiu      $a0, $zero, 0x60
/* 39060 80048860 2B3F010C */  jal        new_malloc
/* 39064 80048864 21904000 */   addu      $s2, $v0, $zero
/* 39068 80048868 21200002 */  addu       $a0, $s0, $zero
/* 3906C 8004886C 21884000 */  addu       $s1, $v0, $zero
/* 39070 80048870 BC42010C */  jal        pbag_init
/* 39074 80048874 380051AE */   sw        $s1, 0x38($s2)
/* 39078 80048878 1543010C */  jal        pbag_getptr
/* 3907C 8004887C 00000000 */   nop
/* 39080 80048880 21804000 */  addu       $s0, $v0, $zero
/* 39084 80048884 340020AE */  sw         $zero, 0x34($s1)
/* 39088 80048888 580020AE */  sw         $zero, 0x58($s1)
/* 3908C 8004888C 61220108 */  j          .L80048984
/* 39090 80048890 540020AE */   sw        $zero, 0x54($s1)
.L80048894:
/* 39094 80048894 2B104300 */  sltu       $v0, $v0, $v1
/* 39098 80048898 37004010 */  beqz       $v0, .L80048978
/* 3909C 8004889C FFFF023C */   lui       $v0, (0xFFFF7F00 >> 16)
/* 390A0 800488A0 007F4234 */  ori        $v0, $v0, (0xFFFF7F00 & 0xFFFF)
/* 390A4 800488A4 21206200 */  addu       $a0, $v1, $v0
/* 390A8 800488A8 0700832C */  sltiu      $v1, $a0, 0x7
/* 390AC 800488AC 32006010 */  beqz       $v1, .L80048978
/* 390B0 800488B0 0180023C */   lui       $v0, %hi(jtbl_80012E08)
/* 390B4 800488B4 082E4224 */  addiu      $v0, $v0, %lo(jtbl_80012E08)
/* 390B8 800488B8 80180400 */  sll        $v1, $a0, 2
/* 390BC 800488BC 21186200 */  addu       $v1, $v1, $v0
/* 390C0 800488C0 0000648C */  lw         $a0, 0x0($v1)
/* 390C4 800488C4 00000000 */  nop
/* 390C8 800488C8 08008000 */  jr         $a0
/* 390CC 800488CC 00000000 */   nop
jlabel .L800488D0
/* 390D0 800488D0 0800028E */  lw         $v0, 0x8($s0)
/* 390D4 800488D4 00000000 */  nop
/* 390D8 800488D8 0000448C */  lw         $a0, 0x0($v0)
/* 390DC 800488DC 4313010C */  jal        GetWorldPathBrain
/* 390E0 800488E0 00000000 */   nop
/* 390E4 800488E4 5E220108 */  j          .L80048978
/* 390E8 800488E8 300022AE */   sw        $v0, 0x30($s1)
jlabel .L800488EC
/* 390EC 800488EC 0800028E */  lw         $v0, 0x8($s0)
/* 390F0 800488F0 00000000 */  nop
/* 390F4 800488F4 0000448C */  lw         $a0, 0x0($v0)
/* 390F8 800488F8 FFFF0324 */  addiu      $v1, $zero, -0x1
/* 390FC 800488FC 1E008310 */  beq        $a0, $v1, .L80048978
/* 39100 80048900 00000000 */   nop
/* 39104 80048904 5413010C */  jal        GetWorldPathData
/* 39108 80048908 00000000 */   nop
/* 3910C 8004890C 5E220108 */  j          .L80048978
/* 39110 80048910 340022AE */   sw        $v0, 0x34($s1)
jlabel .L80048914
/* 39114 80048914 0800028E */  lw         $v0, 0x8($s0)
/* 39118 80048918 00000000 */  nop
/* 3911C 8004891C 0000438C */  lw         $v1, 0x0($v0)
/* 39120 80048920 5E220108 */  j          .L80048978
/* 39124 80048924 440023AE */   sw        $v1, 0x44($s1)
jlabel .L80048928
/* 39128 80048928 0800028E */  lw         $v0, 0x8($s0)
/* 3912C 8004892C 00000000 */  nop
/* 39130 80048930 0000438C */  lw         $v1, 0x0($v0)
/* 39134 80048934 5E220108 */  j          .L80048978
/* 39138 80048938 3C0023AE */   sw        $v1, 0x3C($s1)
jlabel .L8004893C
/* 3913C 8004893C 0800028E */  lw         $v0, 0x8($s0)
/* 39140 80048940 00000000 */  nop
/* 39144 80048944 0000438C */  lw         $v1, 0x0($v0)
/* 39148 80048948 5E220108 */  j          .L80048978
/* 3914C 8004894C 500023AE */   sw        $v1, 0x50($s1)
jlabel .L80048950
/* 39150 80048950 0800028E */  lw         $v0, 0x8($s0)
/* 39154 80048954 00000000 */  nop
/* 39158 80048958 0000438C */  lw         $v1, 0x0($v0)
/* 3915C 8004895C 5E220108 */  j          .L80048978
/* 39160 80048960 540023AE */   sw        $v1, 0x54($s1)
jlabel .L80048964
/* 39164 80048964 0800028E */  lw         $v0, 0x8($s0)
/* 39168 80048968 00000000 */  nop
/* 3916C 8004896C 0000438C */  lw         $v1, 0x0($v0)
/* 39170 80048970 00000000 */  nop
/* 39174 80048974 580023AE */  sw         $v1, 0x58($s1)
.L80048978:
/* 39178 80048978 E742010C */  jal        pbag_advanceONE
/* 3917C 8004897C 00000000 */   nop
/* 39180 80048980 21804000 */  addu       $s0, $v0, $zero
.L80048984:
/* 39184 80048984 0000048E */  lw         $a0, 0x0($s0)
/* 39188 80048988 B142010C */  jal        pbag_getenum
/* 3918C 8004898C 00000000 */   nop
/* 39190 80048990 21184000 */  addu       $v1, $v0, $zero
/* 39194 80048994 FFFF0234 */  ori        $v0, $zero, 0xFFFF
/* 39198 80048998 BEFF6214 */  bne        $v1, $v0, .L80048894
/* 3919C 8004899C FF800234 */   ori       $v0, $zero, 0x80FF
/* 391A0 800489A0 21104002 */  addu       $v0, $s2, $zero
/* 391A4 800489A4 1C00BF8F */  lw         $ra, 0x1C($sp)
/* 391A8 800489A8 1800B28F */  lw         $s2, 0x18($sp)
/* 391AC 800489AC 1400B18F */  lw         $s1, 0x14($sp)
/* 391B0 800489B0 1000B08F */  lw         $s0, 0x10($sp)
/* 391B4 800489B4 0800E003 */  jr         $ra
/* 391B8 800489B8 2000BD27 */   addiu     $sp, $sp, 0x20
.size parse_attrib_release, . - parse_attrib_release
