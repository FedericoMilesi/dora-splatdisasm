.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel DigEmitterBrain
/* 20ED0 800306D0 21388000 */  addu       $a3, $a0, $zero
/* 20ED4 800306D4 4000E58C */  lw         $a1, 0x40($a3)
/* 20ED8 800306D8 0800E28C */  lw         $v0, 0x8($a3)
/* 20EDC 800306DC 1400E88C */  lw         $t0, 0x14($a3)
/* 20EE0 800306E0 1F004018 */  blez       $v0, .L80030760
/* 20EE4 800306E4 21300000 */   addu      $a2, $zero, $zero
/* 20EE8 800306E8 01000924 */  addiu      $t1, $zero, 0x1
.L800306EC:
/* 20EEC 800306EC 0000A284 */  lh         $v0, 0x0($a1)
/* 20EF0 800306F0 00000000 */  nop
/* 20EF4 800306F4 14004914 */  bne        $v0, $t1, .L80030748
/* 20EF8 800306F8 00000000 */   nop
/* 20EFC 800306FC 0400A28C */  lw         $v0, 0x4($a1)
/* 20F00 80030700 1000A38C */  lw         $v1, 0x10($a1)
/* 20F04 80030704 1800A48C */  lw         $a0, 0x18($a1)
/* 20F08 80030708 21104300 */  addu       $v0, $v0, $v1
/* 20F0C 8003070C 1400A38C */  lw         $v1, 0x14($a1)
/* 20F10 80030710 0400A2AC */  sw         $v0, 0x4($a1)
/* 20F14 80030714 0800A28C */  lw         $v0, 0x8($a1)
/* 20F18 80030718 21186800 */  addu       $v1, $v1, $t0
/* 20F1C 8003071C 21104300 */  addu       $v0, $v0, $v1
/* 20F20 80030720 0C00A38C */  lw         $v1, 0xC($a1)
/* 20F24 80030724 0800A2AC */  sw         $v0, 0x8($a1)
/* 20F28 80030728 0200A294 */  lhu        $v0, 0x2($a1)
/* 20F2C 8003072C 21186400 */  addu       $v1, $v1, $a0
/* 20F30 80030730 FFFF4224 */  addiu      $v0, $v0, -0x1
/* 20F34 80030734 0200A2A4 */  sh         $v0, 0x2($a1)
/* 20F38 80030738 00140200 */  sll        $v0, $v0, 16
/* 20F3C 8003073C 02004014 */  bnez       $v0, .L80030748
/* 20F40 80030740 0C00A3AC */   sw        $v1, 0xC($a1)
/* 20F44 80030744 0000A0A4 */  sh         $zero, 0x0($a1)
.L80030748:
/* 20F48 80030748 0100C624 */  addiu      $a2, $a2, 0x1
/* 20F4C 8003074C 0800E28C */  lw         $v0, 0x8($a3)
/* 20F50 80030750 00000000 */  nop
/* 20F54 80030754 2A10C200 */  slt        $v0, $a2, $v0
/* 20F58 80030758 E4FF4014 */  bnez       $v0, .L800306EC
/* 20F5C 8003075C 7400A524 */   addiu     $a1, $a1, 0x74
.L80030760:
/* 20F60 80030760 0C00E28C */  lw         $v0, 0xC($a3)
/* 20F64 80030764 00000000 */  nop
/* 20F68 80030768 04004018 */  blez       $v0, .L8003077C
/* 20F6C 8003076C FFFF4224 */   addiu     $v0, $v0, -0x1
/* 20F70 80030770 02004014 */  bnez       $v0, .L8003077C
/* 20F74 80030774 0C00E2AC */   sw        $v0, 0xC($a3)
/* 20F78 80030778 0000E0AC */  sw         $zero, 0x0($a3)
.L8003077C:
/* 20F7C 8003077C 0800E003 */  jr         $ra
/* 20F80 80030780 00000000 */   nop
.size DigEmitterBrain, . - DigEmitterBrain
