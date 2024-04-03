.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CDFile_FudgeFileName
/* 47FFC 800577FC E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 48000 80057800 1000B0AF */  sw         $s0, 0x10($sp)
/* 48004 80057804 21808000 */  addu       $s0, $a0, $zero
/* 48008 80057808 1800B2AF */  sw         $s2, 0x18($sp)
/* 4800C 8005780C 2190A000 */  addu       $s2, $a1, $zero
/* 48010 80057810 1C00BFAF */  sw         $ra, 0x1C($sp)
/* 48014 80057814 A3C2010C */  jal        strlen
/* 48018 80057818 1400B1AF */   sw        $s1, 0x14($sp)
/* 4801C 8005781C 21204000 */  addu       $a0, $v0, $zero
/* 48020 80057820 21100402 */  addu       $v0, $s0, $a0
/* 48024 80057824 00004590 */  lbu        $a1, 0x0($v0)
/* 48028 80057828 5C000324 */  addiu      $v1, $zero, 0x5C
/* 4802C 8005782C 1100A310 */  beq        $a1, $v1, .L80057874
/* 48030 80057830 2F000224 */   addiu     $v0, $zero, 0x2F
/* 48034 80057834 1600A210 */  beq        $a1, $v0, .L80057890
/* 48038 80057838 00000000 */   nop
/* 4803C 8005783C 0D008018 */  blez       $a0, .L80057874
/* 48040 80057840 5C000524 */   addiu     $a1, $zero, 0x5C
/* 48044 80057844 2F000324 */  addiu      $v1, $zero, 0x2F
/* 48048 80057848 FFFF8424 */  addiu      $a0, $a0, -0x1
.L8005784C:
/* 4804C 8005784C 21100402 */  addu       $v0, $s0, $a0
/* 48050 80057850 00004290 */  lbu        $v0, 0x0($v0)
/* 48054 80057854 00000000 */  nop
/* 48058 80057858 06004510 */  beq        $v0, $a1, .L80057874
/* 4805C 8005785C 00000000 */   nop
/* 48060 80057860 0B004310 */  beq        $v0, $v1, .L80057890
/* 48064 80057864 00000000 */   nop
/* 48068 80057868 F8FF801C */  bgtz       $a0, .L8005784C
/* 4806C 8005786C FFFF8424 */   addiu     $a0, $a0, -0x1
/* 48070 80057870 01008424 */  addiu      $a0, $a0, 0x1
.L80057874:
/* 48074 80057874 21100402 */  addu       $v0, $s0, $a0
/* 48078 80057878 00004590 */  lbu        $a1, 0x0($v0)
/* 4807C 8005787C 2F000324 */  addiu      $v1, $zero, 0x2F
/* 48080 80057880 0300A310 */  beq        $a1, $v1, .L80057890
/* 48084 80057884 5C000224 */   addiu     $v0, $zero, 0x5C
/* 48088 80057888 0200A214 */  bne        $a1, $v0, .L80057894
/* 4808C 8005788C 00000000 */   nop
.L80057890:
/* 48090 80057890 01008424 */  addiu      $a0, $a0, 0x1
.L80057894:
/* 48094 80057894 21200402 */  addu       $a0, $s0, $a0
/* 48098 80057898 00008290 */  lbu        $v0, 0x0($a0)
/* 4809C 8005789C 00000000 */  nop
/* 480A0 800578A0 0B004010 */  beqz       $v0, .L800578D0
/* 480A4 800578A4 21880000 */   addu      $s1, $zero, $zero
/* 480A8 800578A8 21808000 */  addu       $s0, $a0, $zero
.L800578AC:
/* 480AC 800578AC 00000492 */  lbu        $a0, 0x0($s0)
/* 480B0 800578B0 8FC7010C */  jal        toupper
/* 480B4 800578B4 01001026 */   addiu     $s0, $s0, 0x1
/* 480B8 800578B8 21185102 */  addu       $v1, $s2, $s1
/* 480BC 800578BC 000062A0 */  sb         $v0, 0x0($v1)
/* 480C0 800578C0 00000292 */  lbu        $v0, 0x0($s0)
/* 480C4 800578C4 00000000 */  nop
/* 480C8 800578C8 F8FF4014 */  bnez       $v0, .L800578AC
/* 480CC 800578CC 01003126 */   addiu     $s1, $s1, 0x1
.L800578D0:
/* 480D0 800578D0 21185102 */  addu       $v1, $s2, $s1
/* 480D4 800578D4 3B000224 */  addiu      $v0, $zero, 0x3B
/* 480D8 800578D8 21203202 */  addu       $a0, $s1, $s2
/* 480DC 800578DC 000062A0 */  sb         $v0, 0x0($v1)
/* 480E0 800578E0 31000224 */  addiu      $v0, $zero, 0x31
/* 480E4 800578E4 1C00BF8F */  lw         $ra, 0x1C($sp)
/* 480E8 800578E8 1800B28F */  lw         $s2, 0x18($sp)
/* 480EC 800578EC 1400B18F */  lw         $s1, 0x14($sp)
/* 480F0 800578F0 1000B08F */  lw         $s0, 0x10($sp)
/* 480F4 800578F4 21188000 */  addu       $v1, $a0, $zero
/* 480F8 800578F8 010082A0 */  sb         $v0, 0x1($a0)
/* 480FC 800578FC 020060A0 */  sb         $zero, 0x2($v1)
/* 48100 80057900 0800E003 */  jr         $ra
/* 48104 80057904 2000BD27 */   addiu     $sp, $sp, 0x20
.size CDFile_FudgeFileName, . - CDFile_FudgeFileName