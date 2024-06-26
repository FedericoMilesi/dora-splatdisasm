.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SetAnim
/* 293B8 80038BB8 90FFBD27 */  addiu      $sp, $sp, -0x70
/* 293BC 80038BBC 6400B1AF */  sw         $s1, 0x64($sp)
/* 293C0 80038BC0 2188A000 */  addu       $s1, $a1, $zero
/* 293C4 80038BC4 6800BFAF */  sw         $ra, 0x68($sp)
/* 293C8 80038BC8 6000B0AF */  sw         $s0, 0x60($sp)
/* 293CC 80038BCC 4400828C */  lw         $v0, 0x44($a0)
/* 293D0 80038BD0 0A80033C */  lui        $v1, %hi(AnimationList)
/* 293D4 80038BD4 1000448C */  lw         $a0, 0x10($v0)
/* 293D8 80038BD8 80516324 */  addiu      $v1, $v1, %lo(AnimationList)
/* 293DC 80038BDC 40110400 */  sll        $v0, $a0, 5
/* 293E0 80038BE0 23104400 */  subu       $v0, $v0, $a0
/* 293E4 80038BE4 21105100 */  addu       $v0, $v0, $s1
/* 293E8 80038BE8 80100200 */  sll        $v0, $v0, 2
/* 293EC 80038BEC 21186200 */  addu       $v1, $v1, $v0
/* 293F0 80038BF0 0400638C */  lw         $v1, 0x4($v1)
/* 293F4 80038BF4 00000000 */  nop
/* 293F8 80038BF8 11006014 */  bnez       $v1, .L80038C40
/* 293FC 80038BFC 2180C000 */   addu      $s0, $a2, $zero
/* 29400 80038C00 0180053C */  lui        $a1, %hi(D_80012894)
/* 29404 80038C04 0880033C */  lui        $v1, %hi(MeshIDTable)
/* 29408 80038C08 60546324 */  addiu      $v1, $v1, %lo(MeshIDTable)
/* 2940C 80038C0C 40100400 */  sll        $v0, $a0, 1
/* 29410 80038C10 21104400 */  addu       $v0, $v0, $a0
/* 29414 80038C14 80100200 */  sll        $v0, $v0, 2
/* 29418 80038C18 23104400 */  subu       $v0, $v0, $a0
/* 2941C 80038C1C 80100200 */  sll        $v0, $v0, 2
/* 29420 80038C20 21186200 */  addu       $v1, $v1, $v0
/* 29424 80038C24 1000A427 */  addiu      $a0, $sp, 0x10
/* 29428 80038C28 9428A524 */  addiu      $a1, $a1, %lo(D_80012894)
/* 2942C 80038C2C 2800678C */  lw         $a3, 0x28($v1)
/* 29430 80038C30 53C5010C */  jal        sprintf
/* 29434 80038C34 21302002 */   addu      $a2, $s1, $zero
/* 29438 80038C38 18E30008 */  j          .L80038C60
/* 2943C 80038C3C 01000224 */   addiu     $v0, $zero, 0x1
.L80038C40:
/* 29440 80038C40 0000628C */  lw         $v0, 0x0($v1)
/* 29444 80038C44 00000000 */  nop
/* 29448 80038C48 0010422C */  sltiu      $v0, $v0, 0x1000
/* 2944C 80038C4C 04004014 */  bnez       $v0, .L80038C60
/* 29450 80038C50 01000224 */   addiu     $v0, $zero, 0x1
/* 29454 80038C54 0400628C */  lw         $v0, 0x4($v1)
/* 29458 80038C58 00000000 */  nop
/* 2945C 80038C5C FFFF4224 */  addiu      $v0, $v0, -0x1
.L80038C60:
/* 29460 80038C60 2800038E */  lw         $v1, 0x28($s0)
/* 29464 80038C64 6800BF8F */  lw         $ra, 0x68($sp)
/* 29468 80038C68 140011AE */  sw         $s1, 0x14($s0)
/* 2946C 80038C6C 100011AE */  sw         $s1, 0x10($s0)
/* 29470 80038C70 6400B18F */  lw         $s1, 0x64($sp)
/* 29474 80038C74 00120200 */  sll        $v0, $v0, 8
/* 29478 80038C78 0C0000AE */  sw         $zero, 0xC($s0)
/* 2947C 80038C7C 1C0002AE */  sw         $v0, 0x1C($s0)
/* 29480 80038C80 040000AE */  sw         $zero, 0x4($s0)
/* 29484 80038C84 080000AE */  sw         $zero, 0x8($s0)
/* 29488 80038C88 0D006330 */  andi       $v1, $v1, 0xD
/* 2948C 80038C8C 02006334 */  ori        $v1, $v1, 0x2
/* 29490 80038C90 280003AE */  sw         $v1, 0x28($s0)
/* 29494 80038C94 6000B08F */  lw         $s0, 0x60($sp)
/* 29498 80038C98 0800E003 */  jr         $ra
/* 2949C 80038C9C 7000BD27 */   addiu     $sp, $sp, 0x70
.size SetAnim, . - SetAnim
