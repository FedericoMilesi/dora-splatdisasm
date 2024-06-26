.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel PrintPara
/* 31E94 80041694 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* 31E98 80041698 1400B1AF */  sw         $s1, 0x14($sp)
/* 31E9C 8004169C 2188A000 */  addu       $s1, $a1, $zero
/* 31EA0 800416A0 1000B0AF */  sw         $s0, 0x10($sp)
/* 31EA4 800416A4 4800B08F */  lw         $s0, 0x48($sp)
/* 31EA8 800416A8 21100000 */  addu       $v0, $zero, $zero
/* 31EAC 800416AC 2800B6AF */  sw         $s6, 0x28($sp)
/* 31EB0 800416B0 0A80163C */  lui        $s6, %hi(PString)
/* 31EB4 800416B4 3000BEAF */  sw         $fp, 0x30($sp)
/* 31EB8 800416B8 4C00BE8F */  lw         $fp, 0x4C($sp)
/* 31EBC 800416BC 48BCCA26 */  addiu      $t2, $s6, %lo(PString)
/* 31EC0 800416C0 2C00B7AF */  sw         $s7, 0x2C($sp)
/* 31EC4 800416C4 5000B78F */  lw         $s7, 0x50($sp)
/* 31EC8 800416C8 0A000924 */  addiu      $t1, $zero, 0xA
/* 31ECC 800416CC 3400BFAF */  sw         $ra, 0x34($sp)
/* 31ED0 800416D0 2400B5AF */  sw         $s5, 0x24($sp)
/* 31ED4 800416D4 2000B4AF */  sw         $s4, 0x20($sp)
/* 31ED8 800416D8 1C00B3AF */  sw         $s3, 0x1C($sp)
/* 31EDC 800416DC 1800B2AF */  sw         $s2, 0x18($sp)
/* 31EE0 800416E0 3800A4AF */  sw         $a0, 0x38($sp)
/* 31EE4 800416E4 4000A6AF */  sw         $a2, 0x40($sp)
/* 31EE8 800416E8 4400A7AF */  sw         $a3, 0x44($sp)
/* 31EEC 800416EC 21580002 */  addu       $t3, $s0, $zero
.L800416F0:
/* 31EF0 800416F0 21384001 */  addu       $a3, $t2, $zero
/* 31EF4 800416F4 21300002 */  addu       $a2, $s0, $zero
/* 31EF8 800416F8 21400000 */  addu       $t0, $zero, $zero
/* 31EFC 800416FC 01004324 */  addiu      $v1, $v0, 0x1
.L80041700:
/* 31F00 80041700 0000C490 */  lbu        $a0, 0x0($a2)
/* 31F04 80041704 00000000 */  nop
/* 31F08 80041708 FF008230 */  andi       $v0, $a0, 0xFF
/* 31F0C 8004170C 03004910 */  beq        $v0, $t1, .L8004171C
/* 31F10 80041710 00000000 */   nop
/* 31F14 80041714 08004014 */  bnez       $v0, .L80041738
/* 31F18 80041718 00000000 */   nop
.L8004171C:
/* 31F1C 8004171C 0000E0A0 */  sb         $zero, 0x0($a3)
/* 31F20 80041720 0000C290 */  lbu        $v0, 0x0($a2)
/* 31F24 80041724 00000000 */  nop
/* 31F28 80041728 08004014 */  bnez       $v0, .L8004174C
/* 31F2C 8004172C 00000000 */   nop
/* 31F30 80041730 D3050108 */  j          .L8004174C
/* 31F34 80041734 21400000 */   addu      $t0, $zero, $zero
.L80041738:
/* 31F38 80041738 01000825 */  addiu      $t0, $t0, 0x1
/* 31F3C 8004173C 0000E4A0 */  sb         $a0, 0x0($a3)
/* 31F40 80041740 0100C624 */  addiu      $a2, $a2, 0x1
/* 31F44 80041744 C0050108 */  j          .L80041700
/* 31F48 80041748 0100E724 */   addiu     $a3, $a3, 0x1
.L8004174C:
/* 31F4C 8004174C 01000225 */  addiu      $v0, $t0, 0x1
/* 31F50 80041750 21800202 */  addu       $s0, $s0, $v0
/* 31F54 80041754 E6FF0015 */  bnez       $t0, .L800416F0
/* 31F58 80041758 21106000 */   addu      $v0, $v1, $zero
/* 31F5C 8004175C 0500622C */  sltiu      $v0, $v1, 0x5
/* 31F60 80041760 14004010 */  beqz       $v0, .L800417B4
/* 31F64 80041764 0180023C */   lui       $v0, %hi(jtbl_80012D84)
/* 31F68 80041768 842D4224 */  addiu      $v0, $v0, %lo(jtbl_80012D84)
/* 31F6C 8004176C 80180300 */  sll        $v1, $v1, 2
/* 31F70 80041770 21186200 */  addu       $v1, $v1, $v0
/* 31F74 80041774 0000648C */  lw         $a0, 0x0($v1)
/* 31F78 80041778 00000000 */  nop
/* 31F7C 8004177C 08008000 */  jr         $a0
/* 31F80 80041780 00000000 */   nop
jlabel .L80041784
/* 31F84 80041784 740C828F */  lw         $v0, %gp_rel(CINE_Y1_OFFSET)($gp)
/* 31F88 80041788 EE050108 */  j          .L800417B8
/* 31F8C 8004178C 2188A200 */   addu      $s1, $a1, $v0
jlabel .L80041790
/* 31F90 80041790 780C828F */  lw         $v0, %gp_rel(CINE_Y2_OFFSET)($gp)
/* 31F94 80041794 EE050108 */  j          .L800417B8
/* 31F98 80041798 2188A200 */   addu      $s1, $a1, $v0
jlabel .L8004179C
/* 31F9C 8004179C 7C0C828F */  lw         $v0, %gp_rel(CINE_Y3_OFFSET)($gp)
/* 31FA0 800417A0 EE050108 */  j          .L800417B8
/* 31FA4 800417A4 2188A200 */   addu      $s1, $a1, $v0
jlabel .L800417A8
/* 31FA8 800417A8 800C828F */  lw         $v0, %gp_rel(CINE_Y4_OFFSET)($gp)
/* 31FAC 800417AC EE050108 */  j          .L800417B8
/* 31FB0 800417B0 2188A200 */   addu      $s1, $a1, $v0
.L800417B4:
/* 31FB4 800417B4 2188A000 */  addu       $s1, $a1, $zero
jlabel .L800417B8
/* 31FB8 800417B8 21806001 */  addu       $s0, $t3, $zero
/* 31FBC 800417BC 0A001524 */  addiu      $s5, $zero, 0xA
/* 31FC0 800417C0 0A80023C */  lui        $v0, %hi(PStringx)
/* 31FC4 800417C4 B8BE5424 */  addiu      $s4, $v0, %lo(PStringx)
.L800417C8:
/* 31FC8 800417C8 48BCC526 */  addiu      $a1, $s6, %lo(PString)
/* 31FCC 800417CC 21200002 */  addu       $a0, $s0, $zero
/* 31FD0 800417D0 4400A28F */  lw         $v0, 0x44($sp)
/* 31FD4 800417D4 21900000 */  addu       $s2, $zero, $zero
/* 31FD8 800417D8 21982202 */  addu       $s3, $s1, $v0
.L800417DC:
/* 31FDC 800417DC 00008390 */  lbu        $v1, 0x0($a0)
/* 31FE0 800417E0 00000000 */  nop
/* 31FE4 800417E4 FF006230 */  andi       $v0, $v1, 0xFF
/* 31FE8 800417E8 03005510 */  beq        $v0, $s5, .L800417F8
/* 31FEC 800417EC 00000000 */   nop
/* 31FF0 800417F0 08004014 */  bnez       $v0, .L80041814
/* 31FF4 800417F4 00000000 */   nop
.L800417F8:
/* 31FF8 800417F8 0000A0A0 */  sb         $zero, 0x0($a1)
/* 31FFC 800417FC 00008290 */  lbu        $v0, 0x0($a0)
/* 32000 80041800 00000000 */  nop
/* 32004 80041804 08004014 */  bnez       $v0, .L80041828
/* 32008 80041808 21208002 */   addu      $a0, $s4, $zero
/* 3200C 8004180C 0A060108 */  j          .L80041828
/* 32010 80041810 21900000 */   addu      $s2, $zero, $zero
.L80041814:
/* 32014 80041814 01005226 */  addiu      $s2, $s2, 0x1
/* 32018 80041818 0000A3A0 */  sb         $v1, 0x0($a1)
/* 3201C 8004181C 01008424 */  addiu      $a0, $a0, 0x1
/* 32020 80041820 F7050108 */  j          .L800417DC
/* 32024 80041824 0100A524 */   addiu     $a1, $a1, 0x1
.L80041828:
/* 32028 80041828 48BCC526 */  addiu      $a1, $s6, %lo(PString)
/* 3202C 8004182C 2130C003 */  addu       $a2, $fp, $zero
/* 32030 80041830 53C5010C */  jal        sprintf
/* 32034 80041834 2138E002 */   addu      $a3, $s7, $zero
/* 32038 80041838 21282002 */  addu       $a1, $s1, $zero
/* 3203C 8004183C 3800A48F */  lw         $a0, 0x38($sp)
/* 32040 80041840 4000A68F */  lw         $a2, 0x40($sp)
/* 32044 80041844 9362010C */  jal        PrintC
/* 32048 80041848 21388002 */   addu      $a3, $s4, $zero
/* 3204C 8004184C 01004326 */  addiu      $v1, $s2, 0x1
/* 32050 80041850 21800302 */  addu       $s0, $s0, $v1
/* 32054 80041854 DCFF4016 */  bnez       $s2, .L800417C8
/* 32058 80041858 21886002 */   addu      $s1, $s3, $zero
/* 3205C 8004185C 3400BF8F */  lw         $ra, 0x34($sp)
/* 32060 80041860 3000BE8F */  lw         $fp, 0x30($sp)
/* 32064 80041864 2C00B78F */  lw         $s7, 0x2C($sp)
/* 32068 80041868 2800B68F */  lw         $s6, 0x28($sp)
/* 3206C 8004186C 2400B58F */  lw         $s5, 0x24($sp)
/* 32070 80041870 2000B48F */  lw         $s4, 0x20($sp)
/* 32074 80041874 1C00B38F */  lw         $s3, 0x1C($sp)
/* 32078 80041878 1800B28F */  lw         $s2, 0x18($sp)
/* 3207C 8004187C 1400B18F */  lw         $s1, 0x14($sp)
/* 32080 80041880 1000B08F */  lw         $s0, 0x10($sp)
/* 32084 80041884 0800E003 */  jr         $ra
/* 32088 80041888 3800BD27 */   addiu     $sp, $sp, 0x38
.size PrintPara, . - PrintPara
