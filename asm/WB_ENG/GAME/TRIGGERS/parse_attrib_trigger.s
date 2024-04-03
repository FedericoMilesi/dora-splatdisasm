.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel parse_attrib_trigger
/* 31180 80040980 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 31184 80040984 1000B0AF */  sw         $s0, 0x10($sp)
/* 31188 80040988 21808000 */  addu       $s0, $a0, $zero
/* 3118C 8004098C 10000424 */  addiu      $a0, $zero, 0x10
/* 31190 80040990 1C00B3AF */  sw         $s3, 0x1C($sp)
/* 31194 80040994 2198A000 */  addu       $s3, $a1, $zero
/* 31198 80040998 2000BFAF */  sw         $ra, 0x20($sp)
/* 3119C 8004099C 1800B2AF */  sw         $s2, 0x18($sp)
/* 311A0 800409A0 2B3F010C */  jal        new_malloc
/* 311A4 800409A4 1400B1AF */   sw        $s1, 0x14($sp)
/* 311A8 800409A8 21200002 */  addu       $a0, $s0, $zero
/* 311AC 800409AC 21884000 */  addu       $s1, $v0, $zero
/* 311B0 800409B0 180071AE */  sw         $s1, 0x18($s3)
/* 311B4 800409B4 BC42010C */  jal        pbag_init
/* 311B8 800409B8 0C0020AE */   sw        $zero, 0xC($s1)
/* 311BC 800409BC 1543010C */  jal        pbag_getptr
/* 311C0 800409C0 00000000 */   nop
/* 311C4 800409C4 21804000 */  addu       $s0, $v0, $zero
/* 311C8 800409C8 0000048E */  lw         $a0, 0x0($s0)
/* 311CC 800409CC B142010C */  jal        pbag_getenum
/* 311D0 800409D0 00000000 */   nop
/* 311D4 800409D4 21184000 */  addu       $v1, $v0, $zero
/* 311D8 800409D8 FFFF0234 */  ori        $v0, $zero, 0xFFFF
/* 311DC 800409DC 3F006210 */  beq        $v1, $v0, .L80040ADC
/* 311E0 800409E0 01811234 */   ori       $s2, $zero, 0x8101
.L800409E4:
/* 311E4 800409E4 1D007210 */  beq        $v1, $s2, .L80040A5C
/* 311E8 800409E8 2A104302 */   slt       $v0, $s2, $v1
/* 311EC 800409EC 06004014 */  bnez       $v0, .L80040A08
/* 311F0 800409F0 02810234 */   ori       $v0, $zero, 0x8102
/* 311F4 800409F4 00810234 */  ori        $v0, $zero, 0x8100
/* 311F8 800409F8 09006210 */  beq        $v1, $v0, .L80040A20
/* 311FC 800409FC 00000000 */   nop
/* 31200 80040A00 AD020108 */  j          .L80040AB4
/* 31204 80040A04 00000000 */   nop
.L80040A08:
/* 31208 80040A08 1C006210 */  beq        $v1, $v0, .L80040A7C
/* 3120C 80040A0C 03810234 */   ori       $v0, $zero, 0x8103
/* 31210 80040A10 1F006210 */  beq        $v1, $v0, .L80040A90
/* 31214 80040A14 FFFF0324 */   addiu     $v1, $zero, -0x1
/* 31218 80040A18 AD020108 */  j          .L80040AB4
/* 3121C 80040A1C 00000000 */   nop
.L80040A20:
/* 31220 80040A20 0800028E */  lw         $v0, 0x8($s0)
/* 31224 80040A24 00000000 */  nop
/* 31228 80040A28 0000438C */  lw         $v1, 0x0($v0)
/* 3122C 80040A2C 00000000 */  nop
/* 31230 80040A30 20006010 */  beqz       $v1, .L80040AB4
/* 31234 80040A34 1000033C */   lui       $v1, (0x100000 >> 16)
/* 31238 80040A38 1C00628E */  lw         $v0, 0x1C($s3)
/* 3123C 80040A3C 00000000 */  nop
/* 31240 80040A40 25104300 */  or         $v0, $v0, $v1
/* 31244 80040A44 1C0062AE */  sw         $v0, 0x1C($s3)
/* 31248 80040A48 0800038E */  lw         $v1, 0x8($s0)
/* 3124C 80040A4C 00000000 */  nop
/* 31250 80040A50 0000628C */  lw         $v0, 0x0($v1)
/* 31254 80040A54 AD020108 */  j          .L80040AB4
/* 31258 80040A58 000022AE */   sw        $v0, 0x0($s1)
.L80040A5C:
/* 3125C 80040A5C 0800028E */  lw         $v0, 0x8($s0)
/* 31260 80040A60 00000000 */  nop
/* 31264 80040A64 0000438C */  lw         $v1, 0x0($v0)
/* 31268 80040A68 00000000 */  nop
/* 3126C 80040A6C 11006010 */  beqz       $v1, .L80040AB4
/* 31270 80040A70 01000224 */   addiu     $v0, $zero, 0x1
/* 31274 80040A74 AD020108 */  j          .L80040AB4
/* 31278 80040A78 040022AE */   sw        $v0, 0x4($s1)
.L80040A7C:
/* 3127C 80040A7C 0800028E */  lw         $v0, 0x8($s0)
/* 31280 80040A80 00000000 */  nop
/* 31284 80040A84 0000438C */  lw         $v1, 0x0($v0)
/* 31288 80040A88 AD020108 */  j          .L80040AB4
/* 3128C 80040A8C 080023AE */   sw        $v1, 0x8($s1)
.L80040A90:
/* 31290 80040A90 0800028E */  lw         $v0, 0x8($s0)
/* 31294 80040A94 00000000 */  nop
/* 31298 80040A98 0000448C */  lw         $a0, 0x0($v0)
/* 3129C 80040A9C 00000000 */  nop
/* 312A0 80040AA0 04008310 */  beq        $a0, $v1, .L80040AB4
/* 312A4 80040AA4 00000000 */   nop
/* 312A8 80040AA8 5413010C */  jal        GetWorldPathData
/* 312AC 80040AAC 00000000 */   nop
/* 312B0 80040AB0 0C0022AE */  sw         $v0, 0xC($s1)
.L80040AB4:
/* 312B4 80040AB4 E742010C */  jal        pbag_advanceONE
/* 312B8 80040AB8 00000000 */   nop
/* 312BC 80040ABC 21804000 */  addu       $s0, $v0, $zero
/* 312C0 80040AC0 0000048E */  lw         $a0, 0x0($s0)
/* 312C4 80040AC4 B142010C */  jal        pbag_getenum
/* 312C8 80040AC8 00000000 */   nop
/* 312CC 80040ACC 21184000 */  addu       $v1, $v0, $zero
/* 312D0 80040AD0 FFFF0234 */  ori        $v0, $zero, 0xFFFF
/* 312D4 80040AD4 C3FF6214 */  bne        $v1, $v0, .L800409E4
/* 312D8 80040AD8 00000000 */   nop
.L80040ADC:
/* 312DC 80040ADC 2000BF8F */  lw         $ra, 0x20($sp)
/* 312E0 80040AE0 1C00B38F */  lw         $s3, 0x1C($sp)
/* 312E4 80040AE4 1800B28F */  lw         $s2, 0x18($sp)
/* 312E8 80040AE8 1400B18F */  lw         $s1, 0x14($sp)
/* 312EC 80040AEC 1000B08F */  lw         $s0, 0x10($sp)
/* 312F0 80040AF0 0800E003 */  jr         $ra
/* 312F4 80040AF4 2800BD27 */   addiu     $sp, $sp, 0x28
.size parse_attrib_trigger, . - parse_attrib_trigger
