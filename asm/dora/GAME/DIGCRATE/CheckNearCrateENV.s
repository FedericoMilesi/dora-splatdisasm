.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CheckNearCrateENV
/* 11608 80020E08 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 1160C 80020E0C 21400000 */  addu       $t0, $zero, $zero
/* 11610 80020E10 7813828F */  lw         $v0, %gp_rel(g_totalcrate)($gp)
/* 11614 80020E14 1000A327 */  addiu      $v1, $sp, 0x10
/* 11618 80020E18 2400BFAF */  sw         $ra, 0x24($sp)
/* 1161C 80020E1C 2000B0AF */  sw         $s0, 0x20($sp)
/* 11620 80020E20 1000A4AF */  sw         $a0, 0x10($sp)
/* 11624 80020E24 1400A5AF */  sw         $a1, 0x14($sp)
/* 11628 80020E28 1E004018 */  blez       $v0, .L80020EA4
/* 1162C 80020E2C 1800A6AF */   sw        $a2, 0x18($sp)
/* 11630 80020E30 00900934 */  ori        $t1, $zero, 0x9000
/* 11634 80020E34 21304000 */  addu       $a2, $v0, $zero
/* 11638 80020E38 0800658C */  lw         $a1, 0x8($v1)
/* 1163C 80020E3C 7C13838F */  lw         $v1, %gp_rel(WorldCratePtr)($gp)
.L80020E40:
/* 11640 80020E40 00000000 */  nop
/* 11644 80020E44 21386000 */  addu       $a3, $v1, $zero
/* 11648 80020E48 1000E38C */  lw         $v1, 0x10($a3)
/* 1164C 80020E4C 00000000 */  nop
/* 11650 80020E50 C0190300 */  sll        $v1, $v1, 7
/* 11654 80020E54 23186400 */  subu       $v1, $v1, $a0
/* 11658 80020E58 18006300 */  mult       $v1, $v1
/* 1165C 80020E5C 1800E28C */  lw         $v0, 0x18($a3)
/* 11660 80020E60 12180000 */  mflo       $v1
/* 11664 80020E64 C0110200 */  sll        $v0, $v0, 7
/* 11668 80020E68 23104500 */  subu       $v0, $v0, $a1
/* 1166C 80020E6C 18004200 */  mult       $v0, $v0
/* 11670 80020E70 12100000 */  mflo       $v0
/* 11674 80020E74 21186200 */  addu       $v1, $v1, $v0
/* 11678 80020E78 2A182301 */  slt        $v1, $t1, $v1
/* 1167C 80020E7C 05006014 */  bnez       $v1, .L80020E94
/* 11680 80020E80 00000000 */   nop
/* 11684 80020E84 2400E28C */  lw         $v0, 0x24($a3)
/* 11688 80020E88 00000000 */  nop
/* 1168C 80020E8C 06004010 */  beqz       $v0, .L80020EA8
/* 11690 80020E90 2180E000 */   addu      $s0, $a3, $zero
.L80020E94:
/* 11694 80020E94 01000825 */  addiu      $t0, $t0, 0x1
/* 11698 80020E98 2A100601 */  slt        $v0, $t0, $a2
/* 1169C 80020E9C E8FF4014 */  bnez       $v0, .L80020E40
/* 116A0 80020EA0 3000E324 */   addiu     $v1, $a3, 0x30
.L80020EA4:
/* 116A4 80020EA4 21800000 */  addu       $s0, $zero, $zero
.L80020EA8:
/* 116A8 80020EA8 20000012 */  beqz       $s0, .L80020F2C
/* 116AC 80020EAC 06000224 */   addiu     $v0, $zero, 0x6
/* 116B0 80020EB0 2800038E */  lw         $v1, 0x28($s0)
/* 116B4 80020EB4 00000000 */  nop
/* 116B8 80020EB8 0F006214 */  bne        $v1, $v0, .L80020EF8
/* 116BC 80020EBC 21380002 */   addu      $a3, $s0, $zero
/* 116C0 80020EC0 2C00048E */  lw         $a0, 0x2C($s0)
/* 116C4 80020EC4 5402010C */  jal        CheckPickupTrigger
/* 116C8 80020EC8 00000000 */   nop
/* 116CC 80020ECC 17004010 */  beqz       $v0, .L80020F2C
/* 116D0 80020ED0 21380002 */   addu      $a3, $s0, $zero
/* 116D4 80020ED4 1000048E */  lw         $a0, 0x10($s0)
/* 116D8 80020ED8 1400058E */  lw         $a1, 0x14($s0)
/* 116DC 80020EDC 1800068E */  lw         $a2, 0x18($s0)
/* 116E0 80020EE0 C0210400 */  sll        $a0, $a0, 7
/* 116E4 80020EE4 C0290500 */  sll        $a1, $a1, 7
/* 116E8 80020EE8 06D6000C */  jal        BootsJumpToCrate
/* 116EC 80020EEC C0310600 */   sll       $a2, $a2, 7
/* 116F0 80020EF0 C6830008 */  j          .L80020F18
/* 116F4 80020EF4 07000424 */   addiu     $a0, $zero, 0x7
.L80020EF8:
/* 116F8 80020EF8 1000048E */  lw         $a0, 0x10($s0)
/* 116FC 80020EFC 1400058E */  lw         $a1, 0x14($s0)
/* 11700 80020F00 1800068E */  lw         $a2, 0x18($s0)
/* 11704 80020F04 C0210400 */  sll        $a0, $a0, 7
/* 11708 80020F08 C0290500 */  sll        $a1, $a1, 7
/* 1170C 80020F0C 06D6000C */  jal        BootsJumpToCrate
/* 11710 80020F10 C0310600 */   sll       $a2, $a2, 7
/* 11714 80020F14 07000424 */  addiu      $a0, $zero, 0x7
.L80020F18:
/* 11718 80020F18 21280000 */  addu       $a1, $zero, $zero
/* 1171C 80020F1C 6F4A010C */  jal        pxm_sendevent
/* 11720 80020F20 21300000 */   addu      $a2, $zero, $zero
/* 11724 80020F24 CC830008 */  j          .L80020F30
/* 11728 80020F28 01000224 */   addiu     $v0, $zero, 0x1
.L80020F2C:
/* 1172C 80020F2C 21100000 */  addu       $v0, $zero, $zero
.L80020F30:
/* 11730 80020F30 2400BF8F */  lw         $ra, 0x24($sp)
/* 11734 80020F34 2000B08F */  lw         $s0, 0x20($sp)
/* 11738 80020F38 0800E003 */  jr         $ra
/* 1173C 80020F3C 2800BD27 */   addiu     $sp, $sp, 0x28
.size CheckNearCrateENV, . - CheckNearCrateENV
