.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

/* Handwritten function */
glabel CalcCellVerticesNoRotation
/* 56044 80065844 C0FFBD27 */  addiu      $sp, $sp, -0x40
/* 56048 80065848 2000B2AF */  sw         $s2, 0x20($sp)
/* 5604C 8006584C 801F123C */  lui        $s2, (0x1F80006C >> 16)
/* 56050 80065850 6C005236 */  ori        $s2, $s2, (0x1F80006C & 0xFFFF)
/* 56054 80065854 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 56058 80065858 801F113C */  lui        $s1, (0x1F80006C >> 16)
/* 5605C 8006585C 2400B3AF */  sw         $s3, 0x24($sp)
/* 56060 80065860 0980133C */  lui        $s3, %hi(DistBuf)
/* 56064 80065864 9057738E */  lw         $s3, %lo(DistBuf)($s3)
/* 56068 80065868 0980023C */  lui        $v0, %hi(CellInfoDisplayFlag)
/* 5606C 8006586C 1454428C */  lw         $v0, %lo(CellInfoDisplayFlag)($v0)
/* 56070 80065870 6C003136 */  ori        $s1, $s1, (0x1F80006C & 0xFFFF)
/* 56074 80065874 3000B6AF */  sw         $s6, 0x30($sp)
/* 56078 80065878 21B08000 */  addu       $s6, $a0, $zero
/* 5607C 8006587C 3800BEAF */  sw         $fp, 0x38($sp)
/* 56080 80065880 21F0A000 */  addu       $fp, $a1, $zero
/* 56084 80065884 2C00B5AF */  sw         $s5, 0x2C($sp)
/* 56088 80065888 3400B7AF */  sw         $s7, 0x34($sp)
/* 5608C 8006588C 21B8E000 */  addu       $s7, $a3, $zero
/* 56090 80065890 3C00BFAF */  sw         $ra, 0x3C($sp)
/* 56094 80065894 2800B4AF */  sw         $s4, 0x28($sp)
/* 56098 80065898 1800B0AF */  sw         $s0, 0x18($sp)
/* 5609C 8006589C 3000F48E */  lw         $s4, 0x30($s7)
/* 560A0 800658A0 2D004010 */  beqz       $v0, .L80065958
/* 560A4 800658A4 21A8C000 */   addu      $s5, $a2, $zero
/* 560A8 800658A8 8000C226 */  addiu      $v0, $s6, 0x80
/* 560AC 800658AC 801F013C */  lui        $at, (0x1F80006C >> 16)
/* 560B0 800658B0 6C0022A4 */  sh         $v0, (0x1F80006C & 0xFFFF)($at)
/* 560B4 800658B4 8000A226 */  addiu      $v0, $s5, 0x80
/* 560B8 800658B8 801F013C */  lui        $at, (0x1F80006E >> 16)
/* 560BC 800658BC 6E003EA4 */  sh         $fp, (0x1F80006E & 0xFFFF)($at)
/* 560C0 800658C0 801F013C */  lui        $at, (0x1F800070 >> 16)
/* 560C4 800658C4 700022A4 */  sh         $v0, (0x1F800070 & 0xFFFF)($at)
/* 560C8 800658C8 000020CA */  lwc2       $0, 0x0($s1)
/* 560CC 800658CC 040021CA */  lwc2       $1, 0x4($s1)
/* 560D0 800658D0 00000000 */  nop
/* 560D4 800658D4 00000000 */  nop
/* 560D8 800658D8 0100184A */  RTPS
/* 560DC 800658DC 00004EEA */  swc2       $14, 0x0($s2)
/* 560E0 800658E0 00980C48 */  mfc2       $t4, $19 /* handwritten instruction */
/* 560E4 800658E4 00000000 */  nop
/* 560E8 800658E8 C3600C00 */  sra        $t4, $t4, 3
/* 560EC 800658EC 00006CAE */  sw         $t4, 0x0($s3)
/* 560F0 800658F0 70000424 */  addiu      $a0, $zero, 0x70
/* 560F4 800658F4 70000524 */  addiu      $a1, $zero, 0x70
/* 560F8 800658F8 0000708E */  lw         $s0, 0x0($s3)
/* 560FC 800658FC 5363010C */  jal        TextSetTextColor
/* 56100 80065900 70000624 */   addiu     $a2, $zero, 0x70
/* 56104 80065904 0980033C */  lui        $v1, %hi(CelDepth)
/* 56108 80065908 0454638C */  lw         $v1, %lo(CelDepth)($v1)
/* 5610C 8006590C 0980023C */  lui        $v0, %hi(CelDepthInc)
/* 56110 80065910 0854428C */  lw         $v0, %lo(CelDepthInc)($v0)
/* 56114 80065914 00000000 */  nop
/* 56118 80065918 1A006200 */  div        $zero, $v1, $v0
/* 5611C 8006591C 801F043C */  lui        $a0, (0x1F80006C >> 16)
/* 56120 80065920 6C008484 */  lh         $a0, (0x1F80006C & 0xFFFF)($a0)
/* 56124 80065924 801F053C */  lui        $a1, (0x1F80006E >> 16)
/* 56128 80065928 6E00A584 */  lh         $a1, (0x1F80006E & 0xFFFF)($a1)
/* 5612C 8006592C 12300000 */  mflo       $a2
/* 56130 80065930 02004014 */  bnez       $v0, .L8006593C
/* 56134 80065934 00000000 */   nop
/* 56138 80065938 CD010000 */  break      0, 7
.L8006593C:
/* 5613C 8006593C 0980073C */  lui        $a3, %hi(D_800954D0)
/* 56140 80065940 D054E724 */  addiu      $a3, $a3, %lo(D_800954D0)
/* 56144 80065944 9362010C */  jal        PrintC
/* 56148 80065948 1000A3AF */   sw        $v1, 0x10($sp)
/* 5614C 8006594C 2800102A */  slti       $s0, $s0, 0x28
/* 56150 80065950 27000016 */  bnez       $s0, .L800659F0
/* 56154 80065954 21100000 */   addu      $v0, $zero, $zero
.L80065958:
/* 56158 80065958 0000E78E */  lw         $a3, 0x0($s7)
/* 5615C 8006595C 801F063C */  lui        $a2, (0x1F80006C >> 16)
/* 56160 80065960 2200801A */  blez       $s4, .L800659EC
/* 56164 80065964 6C00C634 */   ori       $a2, $a2, (0x1F80006C & 0xFFFF)
/* 56168 80065968 FFFF093C */  lui        $t1, (0xFFFF0000 >> 16)
/* 5616C 8006596C 002C1E00 */  sll        $a1, $fp, 16
/* 56170 80065970 21408002 */  addu       $t0, $s4, $zero
.L80065974:
/* 56174 80065974 0000E28C */  lw         $v0, 0x0($a3)
/* 56178 80065978 0400E724 */  addiu      $a3, $a3, 0x4
/* 5617C 8006597C 0000E48C */  lw         $a0, 0x0($a3)
/* 56180 80065980 0400E724 */  addiu      $a3, $a3, 0x4
/* 56184 80065984 24184900 */  and        $v1, $v0, $t1
/* 56188 80065988 21186500 */  addu       $v1, $v1, $a1
/* 5618C 8006598C FFFF4230 */  andi       $v0, $v0, 0xFFFF
/* 56190 80065990 21105600 */  addu       $v0, $v0, $s6
/* 56194 80065994 25186200 */  or         $v1, $v1, $v0
/* 56198 80065998 FFFF8430 */  andi       $a0, $a0, 0xFFFF
/* 5619C 8006599C 21109500 */  addu       $v0, $a0, $s5
/* 561A0 800659A0 0000C3AC */  sw         $v1, 0x0($a2)
/* 561A4 800659A4 0400C624 */  addiu      $a2, $a2, 0x4
/* 561A8 800659A8 0000C2AC */  sw         $v0, 0x0($a2)
/* 561AC 800659AC 0400C624 */  addiu      $a2, $a2, 0x4
/* 561B0 800659B0 000020CA */  lwc2       $0, 0x0($s1)
/* 561B4 800659B4 040021CA */  lwc2       $1, 0x4($s1)
/* 561B8 800659B8 00000000 */  nop
/* 561BC 800659BC 00000000 */  nop
/* 561C0 800659C0 0100184A */  RTPS
/* 561C4 800659C4 00004EEA */  swc2       $14, 0x0($s2)
/* 561C8 800659C8 00980C48 */  mfc2       $t4, $19 /* handwritten instruction */
/* 561CC 800659CC 00000000 */  nop
/* 561D0 800659D0 C3600C00 */  sra        $t4, $t4, 3
/* 561D4 800659D4 00006CAE */  sw         $t4, 0x0($s3)
/* 561D8 800659D8 FFFF0825 */  addiu      $t0, $t0, -0x1
/* 561DC 800659DC 04007326 */  addiu      $s3, $s3, 0x4
/* 561E0 800659E0 04005226 */  addiu      $s2, $s2, 0x4
/* 561E4 800659E4 E3FF0015 */  bnez       $t0, .L80065974
/* 561E8 800659E8 08003126 */   addiu     $s1, $s1, 0x8
.L800659EC:
/* 561EC 800659EC 01000224 */  addiu      $v0, $zero, 0x1
.L800659F0:
/* 561F0 800659F0 3C00BF8F */  lw         $ra, 0x3C($sp)
/* 561F4 800659F4 3800BE8F */  lw         $fp, 0x38($sp)
/* 561F8 800659F8 3400B78F */  lw         $s7, 0x34($sp)
/* 561FC 800659FC 3000B68F */  lw         $s6, 0x30($sp)
/* 56200 80065A00 2C00B58F */  lw         $s5, 0x2C($sp)
/* 56204 80065A04 2800B48F */  lw         $s4, 0x28($sp)
/* 56208 80065A08 2400B38F */  lw         $s3, 0x24($sp)
/* 5620C 80065A0C 2000B28F */  lw         $s2, 0x20($sp)
/* 56210 80065A10 1C00B18F */  lw         $s1, 0x1C($sp)
/* 56214 80065A14 1800B08F */  lw         $s0, 0x18($sp)
/* 56218 80065A18 0800E003 */  jr         $ra
/* 5621C 80065A1C 4000BD27 */   addiu     $sp, $sp, 0x40
.size CalcCellVerticesNoRotation, . - CalcCellVerticesNoRotation