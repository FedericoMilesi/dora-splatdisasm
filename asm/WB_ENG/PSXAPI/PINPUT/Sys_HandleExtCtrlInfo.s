.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel Sys_HandleExtCtrlInfo
/* 49E44 80059644 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 49E48 80059648 1C00B3AF */  sw         $s3, 0x1C($sp)
/* 49E4C 8005964C 21988000 */  addu       $s3, $a0, $zero
/* 49E50 80059650 0200622A */  slti       $v0, $s3, 0x2
/* 49E54 80059654 2C00BFAF */  sw         $ra, 0x2C($sp)
/* 49E58 80059658 2800B6AF */  sw         $s6, 0x28($sp)
/* 49E5C 8005965C 2400B5AF */  sw         $s5, 0x24($sp)
/* 49E60 80059660 2000B4AF */  sw         $s4, 0x20($sp)
/* 49E64 80059664 1800B2AF */  sw         $s2, 0x18($sp)
/* 49E68 80059668 1400B1AF */  sw         $s1, 0x14($sp)
/* 49E6C 8005966C AC004010 */  beqz       $v0, .L80059920
/* 49E70 80059670 1000B0AF */   sw        $s0, 0x10($sp)
/* 49E74 80059674 21800000 */  addu       $s0, $zero, $zero
/* 49E78 80059678 40181300 */  sll        $v1, $s3, 1
/* 49E7C 8005967C 21187300 */  addu       $v1, $v1, $s3
/* 49E80 80059680 C0180300 */  sll        $v1, $v1, 3
/* 49E84 80059684 0B80023C */  lui        $v0, %hi(extCtrlInfoArray)
/* 49E88 80059688 18B74224 */  addiu      $v0, $v0, %lo(extCtrlInfoArray)
/* 49E8C 8005968C 21886200 */  addu       $s1, $v1, $v0
/* 49E90 80059690 08003426 */  addiu      $s4, $s1, 0x8
/* 49E94 80059694 21388002 */  addu       $a3, $s4, $zero
/* 49E98 80059698 04002626 */  addiu      $a2, $s1, 0x4
/* 49E9C 8005969C FF000824 */  addiu      $t0, $zero, 0xFF
/* 49EA0 800596A0 02002526 */  addiu      $a1, $s1, 0x2
/* 49EA4 800596A4 00003592 */  lbu        $s5, 0x0($s1)
/* 49EA8 800596A8 D016848F */  lw         $a0, %gp_rel(gGameTick)($gp)
/* 49EAC 800596AC 80101000 */  sll        $v0, $s0, 2
.L800596B0:
/* 49EB0 800596B0 2118E200 */  addu       $v1, $a3, $v0
/* 49EB4 800596B4 0000628C */  lw         $v0, 0x0($v1)
/* 49EB8 800596B8 00000000 */  nop
/* 49EBC 800596BC 09004010 */  beqz       $v0, .L800596E4
/* 49EC0 800596C0 2B104400 */   sltu      $v0, $v0, $a0
/* 49EC4 800596C4 07004010 */  beqz       $v0, .L800596E4
/* 49EC8 800596C8 2110D000 */   addu      $v0, $a2, $s0
/* 49ECC 800596CC 00004290 */  lbu        $v0, 0x0($v0)
/* 49ED0 800596D0 00000000 */  nop
/* 49ED4 800596D4 02004810 */  beq        $v0, $t0, .L800596E0
/* 49ED8 800596D8 2110A200 */   addu      $v0, $a1, $v0
/* 49EDC 800596DC 000040A0 */  sb         $zero, 0x0($v0)
.L800596E0:
/* 49EE0 800596E0 000060AC */  sw         $zero, 0x0($v1)
.L800596E4:
/* 49EE4 800596E4 01000226 */  addiu      $v0, $s0, 0x1
/* 49EE8 800596E8 FF005030 */  andi       $s0, $v0, 0xFF
/* 49EEC 800596EC 0200032E */  sltiu      $v1, $s0, 0x2
/* 49EF0 800596F0 EFFF6014 */  bnez       $v1, .L800596B0
/* 49EF4 800596F4 80101000 */   sll       $v0, $s0, 2
/* 49EF8 800596F8 7309020C */  jal        PadGetState
/* 49EFC 800596FC 2120A002 */   addu      $a0, $s5, $zero
/* 49F00 80059700 FF005230 */  andi       $s2, $v0, 0xFF
/* 49F04 80059704 08004016 */  bnez       $s2, .L80059728
/* 49F08 80059708 01000224 */   addiu     $v0, $zero, 0x1
/* 49F0C 8005970C 0B80023C */  lui        $v0, %hi(gPad)
/* 49F10 80059710 48B74224 */  addiu      $v0, $v0, %lo(gPad)
/* 49F14 80059714 80191300 */  sll        $v1, $s3, 6
/* 49F18 80059718 21186200 */  addu       $v1, $v1, $v0
/* 49F1C 8005971C 01000424 */  addiu      $a0, $zero, 0x1
/* 49F20 80059720 48660108 */  j          .L80059920
/* 49F24 80059724 000064A0 */   sb        $a0, 0x0($v1)
.L80059728:
/* 49F28 80059728 15004216 */  bne        $s2, $v0, .L80059780
/* 49F2C 8005972C 02002426 */   addiu     $a0, $s1, 0x2
/* 49F30 80059730 21800000 */  addu       $s0, $zero, $zero
/* 49F34 80059734 010020A2 */  sb         $zero, 0x1($s1)
/* 49F38 80059738 160020A2 */  sb         $zero, 0x16($s1)
/* 49F3C 8005973C 21109000 */  addu       $v0, $a0, $s0
.L80059740:
/* 49F40 80059740 000040A0 */  sb         $zero, 0x0($v0)
/* 49F44 80059744 01000326 */  addiu      $v1, $s0, 0x1
/* 49F48 80059748 FF007030 */  andi       $s0, $v1, 0xFF
/* 49F4C 8005974C 0200022E */  sltiu      $v0, $s0, 0x2
/* 49F50 80059750 FBFF4014 */  bnez       $v0, .L80059740
/* 49F54 80059754 21109000 */   addu      $v0, $a0, $s0
/* 49F58 80059758 21800000 */  addu       $s0, $zero, $zero
/* 49F5C 8005975C 21208002 */  addu       $a0, $s4, $zero
/* 49F60 80059760 80101000 */  sll        $v0, $s0, 2
.L80059764:
/* 49F64 80059764 21108200 */  addu       $v0, $a0, $v0
/* 49F68 80059768 000040AC */  sw         $zero, 0x0($v0)
/* 49F6C 8005976C 01000326 */  addiu      $v1, $s0, 0x1
/* 49F70 80059770 FF007030 */  andi       $s0, $v1, 0xFF
/* 49F74 80059774 0200022E */  sltiu      $v0, $s0, 0x2
/* 49F78 80059778 FAFF4014 */  bnez       $v0, .L80059764
/* 49F7C 8005977C 80101000 */   sll       $v0, $s0, 2
.L80059780:
/* 49F80 80059780 01002292 */  lbu        $v0, 0x1($s1)
/* 49F84 80059784 00000000 */  nop
/* 49F88 80059788 56004014 */  bnez       $v0, .L800598E4
/* 49F8C 8005978C 2120A002 */   addu      $a0, $s5, $zero
/* 49F90 80059790 02002526 */  addiu      $a1, $s1, 0x2
/* 49F94 80059794 0709020C */  jal        PadSetAct
/* 49F98 80059798 02000624 */   addiu     $a2, $zero, 0x2
/* 49F9C 8005979C 02000224 */  addiu      $v0, $zero, 0x2
/* 49FA0 800597A0 4D004212 */  beq        $s2, $v0, .L800598D8
/* 49FA4 800597A4 06000224 */   addiu     $v0, $zero, 0x6
/* 49FA8 800597A8 5D004216 */  bne        $s2, $v0, .L80059920
/* 49FAC 800597AC 21900000 */   addu      $s2, $zero, $zero
/* 49FB0 800597B0 21800000 */  addu       $s0, $zero, $zero
/* 49FB4 800597B4 04002626 */  addiu      $a2, $s1, 0x4
/* 49FB8 800597B8 10003426 */  addiu      $s4, $s1, 0x10
/* 49FBC 800597BC 21208002 */  addu       $a0, $s4, $zero
/* 49FC0 800597C0 FF000524 */  addiu      $a1, $zero, 0xFF
/* 49FC4 800597C4 21109000 */  addu       $v0, $a0, $s0
.L800597C8:
/* 49FC8 800597C8 000045A0 */  sb         $a1, 0x0($v0)
/* 49FCC 800597CC 01000326 */  addiu      $v1, $s0, 0x1
/* 49FD0 800597D0 FF007030 */  andi       $s0, $v1, 0xFF
/* 49FD4 800597D4 0600022E */  sltiu      $v0, $s0, 0x6
/* 49FD8 800597D8 FBFF4014 */  bnez       $v0, .L800597C8
/* 49FDC 800597DC 21109000 */   addu      $v0, $a0, $s0
/* 49FE0 800597E0 21800000 */  addu       $s0, $zero, $zero
/* 49FE4 800597E4 2120C000 */  addu       $a0, $a2, $zero
/* 49FE8 800597E8 FF000524 */  addiu      $a1, $zero, 0xFF
/* 49FEC 800597EC 21109000 */  addu       $v0, $a0, $s0
.L800597F0:
/* 49FF0 800597F0 000045A0 */  sb         $a1, 0x0($v0)
/* 49FF4 800597F4 01000326 */  addiu      $v1, $s0, 0x1
/* 49FF8 800597F8 FF007030 */  andi       $s0, $v1, 0xFF
/* 49FFC 800597FC 0200022E */  sltiu      $v0, $s0, 0x2
/* 4A000 80059800 FBFF4014 */  bnez       $v0, .L800597F0
/* 4A004 80059804 21109000 */   addu      $v0, $a0, $s0
/* 4A008 80059808 2120A002 */  addu       $a0, $s5, $zero
/* 4A00C 8005980C FFFF0524 */  addiu      $a1, $zero, -0x1
/* 4A010 80059810 E709020C */  jal        PadInfoAct
/* 4A014 80059814 21300000 */   addu      $a2, $zero, $zero
/* 4A018 80059818 FF005330 */  andi       $s3, $v0, 0xFF
/* 4A01C 8005981C 0300622E */  sltiu      $v0, $s3, 0x3
/* 4A020 80059820 02004014 */  bnez       $v0, .L8005982C
/* 4A024 80059824 00000000 */   nop
/* 4A028 80059828 02001324 */  addiu      $s3, $zero, 0x2
.L8005982C:
/* 4A02C 8005982C 25006012 */  beqz       $s3, .L800598C4
/* 4A030 80059830 21800000 */   addu      $s0, $zero, $zero
/* 4A034 80059834 FF001624 */  addiu      $s6, $zero, 0xFF
/* 4A038 80059838 2120A002 */  addu       $a0, $s5, $zero
.L8005983C:
/* 4A03C 8005983C 21280002 */  addu       $a1, $s0, $zero
/* 4A040 80059840 E709020C */  jal        PadInfoAct
/* 4A044 80059844 03000624 */   addiu     $a2, $zero, 0x3
/* 4A048 80059848 FF004330 */  andi       $v1, $v0, 0xFF
/* 4A04C 8005984C 0C006014 */  bnez       $v1, .L80059880
/* 4A050 80059850 01000224 */   addiu     $v0, $zero, 0x1
/* 4A054 80059854 04002292 */  lbu        $v0, 0x4($s1)
/* 4A058 80059858 00000000 */  nop
/* 4A05C 8005985C 15005614 */  bne        $v0, $s6, .L800598B4
/* 4A060 80059860 01000226 */   addiu     $v0, $s0, 0x1
/* 4A064 80059864 21109002 */  addu       $v0, $s4, $s0
/* 4A068 80059868 000052A0 */  sb         $s2, 0x0($v0)
/* 4A06C 8005986C 01004226 */  addiu      $v0, $s2, 0x1
/* 4A070 80059870 040032A2 */  sb         $s2, 0x4($s1)
/* 4A074 80059874 FF005230 */  andi       $s2, $v0, 0xFF
/* 4A078 80059878 2B660108 */  j          .L800598AC
/* 4A07C 8005987C 01000324 */   addiu     $v1, $zero, 0x1
.L80059880:
/* 4A080 80059880 0C006214 */  bne        $v1, $v0, .L800598B4
/* 4A084 80059884 01000226 */   addiu     $v0, $s0, 0x1
/* 4A088 80059888 05002292 */  lbu        $v0, 0x5($s1)
/* 4A08C 8005988C 00000000 */  nop
/* 4A090 80059890 08005614 */  bne        $v0, $s6, .L800598B4
/* 4A094 80059894 01000226 */   addiu     $v0, $s0, 0x1
/* 4A098 80059898 21109002 */  addu       $v0, $s4, $s0
/* 4A09C 8005989C 000052A0 */  sb         $s2, 0x0($v0)
/* 4A0A0 800598A0 01004226 */  addiu      $v0, $s2, 0x1
/* 4A0A4 800598A4 050032A2 */  sb         $s2, 0x5($s1)
/* 4A0A8 800598A8 FF005230 */  andi       $s2, $v0, 0xFF
.L800598AC:
/* 4A0AC 800598AC 160023A2 */  sb         $v1, 0x16($s1)
/* 4A0B0 800598B0 01000226 */  addiu      $v0, $s0, 0x1
.L800598B4:
/* 4A0B4 800598B4 FF005030 */  andi       $s0, $v0, 0xFF
/* 4A0B8 800598B8 2B181302 */  sltu       $v1, $s0, $s3
/* 4A0BC 800598BC DFFF6014 */  bnez       $v1, .L8005983C
/* 4A0C0 800598C0 2120A002 */   addu      $a0, $s5, $zero
.L800598C4:
/* 4A0C4 800598C4 2120A002 */  addu       $a0, $s5, $zero
/* 4A0C8 800598C8 1709020C */  jal        PadSetActAlign
/* 4A0CC 800598CC 21288002 */   addu      $a1, $s4, $zero
/* 4A0D0 800598D0 13004010 */  beqz       $v0, .L80059920
/* 4A0D4 800598D4 00000000 */   nop
.L800598D8:
/* 4A0D8 800598D8 01000224 */  addiu      $v0, $zero, 0x1
/* 4A0DC 800598DC 48660108 */  j          .L80059920
/* 4A0E0 800598E0 010022A2 */   sb        $v0, 0x1($s1)
.L800598E4:
/* 4A0E4 800598E4 02000524 */  addiu      $a1, $zero, 0x2
/* 4A0E8 800598E8 A709020C */  jal        PadInfoMode
/* 4A0EC 800598EC 21300000 */   addu      $a2, $zero, $zero
/* 4A0F0 800598F0 0B004014 */  bnez       $v0, .L80059920
/* 4A0F4 800598F4 00000000 */   nop
/* 4A0F8 800598F8 0800228E */  lw         $v0, 0x8($s1)
/* 4A0FC 800598FC 00000000 */  nop
/* 4A100 80059900 05004010 */  beqz       $v0, .L80059918
/* 4A104 80059904 40000224 */   addiu     $v0, $zero, 0x40
/* 4A108 80059908 01000324 */  addiu      $v1, $zero, 0x1
/* 4A10C 8005990C 020022A2 */  sb         $v0, 0x2($s1)
/* 4A110 80059910 48660108 */  j          .L80059920
/* 4A114 80059914 030023A2 */   sb        $v1, 0x3($s1)
.L80059918:
/* 4A118 80059918 020022A2 */  sb         $v0, 0x2($s1)
/* 4A11C 8005991C 030020A2 */  sb         $zero, 0x3($s1)
.L80059920:
/* 4A120 80059920 2C00BF8F */  lw         $ra, 0x2C($sp)
/* 4A124 80059924 2800B68F */  lw         $s6, 0x28($sp)
/* 4A128 80059928 2400B58F */  lw         $s5, 0x24($sp)
/* 4A12C 8005992C 2000B48F */  lw         $s4, 0x20($sp)
/* 4A130 80059930 1C00B38F */  lw         $s3, 0x1C($sp)
/* 4A134 80059934 1800B28F */  lw         $s2, 0x18($sp)
/* 4A138 80059938 1400B18F */  lw         $s1, 0x14($sp)
/* 4A13C 8005993C 1000B08F */  lw         $s0, 0x10($sp)
/* 4A140 80059940 0800E003 */  jr         $ra
/* 4A144 80059944 3000BD27 */   addiu     $sp, $sp, 0x30
.size Sys_HandleExtCtrlInfo, . - Sys_HandleExtCtrlInfo
