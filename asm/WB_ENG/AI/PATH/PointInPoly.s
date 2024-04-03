.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel PointInPoly
/* 3583C 8004503C 21500000 */  addu       $t2, $zero, $zero
/* 35840 80045040 21600000 */  addu       $t4, $zero, $zero
/* 35844 80045044 21788000 */  addu       $t7, $a0, $zero
/* 35848 80045048 2170A000 */  addu       $t6, $a1, $zero
/* 3584C 8004504C 0800ED8D */  lw         $t5, 0x8($t7)
/* 35850 80045050 0000E48D */  lw         $a0, 0x0($t7)
/* 35854 80045054 0800C28D */  lw         $v0, 0x8($t6)
/* 35858 80045058 2148A001 */  addu       $t1, $t5, $zero
/* 3585C 8004505C 0800238D */  lw         $v1, 0x8($t1)
/* 35860 80045060 2158A001 */  addu       $t3, $t5, $zero
/* 35864 80045064 2A104300 */  slt        $v0, $v0, $v1
/* 35868 80045068 24008010 */  beqz       $a0, .L800450FC
/* 3586C 8004506C 01004538 */   xori      $a1, $v0, 0x1
.L80045070:
/* 35870 80045070 10006725 */  addiu      $a3, $t3, 0x10
/* 35874 80045074 FFFF8224 */  addiu      $v0, $a0, -0x1
/* 35878 80045078 02004215 */  bne        $t2, $v0, .L80045084
/* 3587C 8004507C 2158E000 */   addu      $t3, $a3, $zero
/* 35880 80045080 2138A001 */  addu       $a3, $t5, $zero
.L80045084:
/* 35884 80045084 0800C38D */  lw         $v1, 0x8($t6)
/* 35888 80045088 0800E68C */  lw         $a2, 0x8($a3)
/* 3588C 8004508C 00000000 */  nop
/* 35890 80045090 2A106600 */  slt        $v0, $v1, $a2
/* 35894 80045094 01004838 */  xori       $t0, $v0, 0x1
/* 35898 80045098 1200A810 */  beq        $a1, $t0, .L800450E4
/* 3589C 8004509C 2318C300 */   subu      $v1, $a2, $v1
/* 358A0 800450A0 0000228D */  lw         $v0, 0x0($t1)
/* 358A4 800450A4 0000E48C */  lw         $a0, 0x0($a3)
/* 358A8 800450A8 00000000 */  nop
/* 358AC 800450AC 23104400 */  subu       $v0, $v0, $a0
/* 358B0 800450B0 18006200 */  mult       $v1, $v0
/* 358B4 800450B4 0000C58D */  lw         $a1, 0x0($t6)
/* 358B8 800450B8 0800228D */  lw         $v0, 0x8($t1)
/* 358BC 800450BC 12180000 */  mflo       $v1
/* 358C0 800450C0 23208500 */  subu       $a0, $a0, $a1
/* 358C4 800450C4 23104600 */  subu       $v0, $v0, $a2
/* 358C8 800450C8 18008200 */  mult       $a0, $v0
/* 358CC 800450CC 12200000 */  mflo       $a0
/* 358D0 800450D0 2A186400 */  slt        $v1, $v1, $a0
/* 358D4 800450D4 01006338 */  xori       $v1, $v1, 0x1
/* 358D8 800450D8 03006814 */  bne        $v1, $t0, .L800450E8
/* 358DC 800450DC 2148E000 */   addu      $t1, $a3, $zero
/* 358E0 800450E0 01008C2D */  sltiu      $t4, $t4, 0x1
.L800450E4:
/* 358E4 800450E4 2148E000 */  addu       $t1, $a3, $zero
.L800450E8:
/* 358E8 800450E8 0000E48D */  lw         $a0, 0x0($t7)
/* 358EC 800450EC 01004A25 */  addiu      $t2, $t2, 0x1
/* 358F0 800450F0 2B104401 */  sltu       $v0, $t2, $a0
/* 358F4 800450F4 DEFF4014 */  bnez       $v0, .L80045070
/* 358F8 800450F8 21280001 */   addu      $a1, $t0, $zero
.L800450FC:
/* 358FC 800450FC 0800E003 */  jr         $ra
/* 35900 80045100 21108001 */   addu      $v0, $t4, $zero
.size PointInPoly, . - PointInPoly