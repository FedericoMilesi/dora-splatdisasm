.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CheckAnimWithInterp
/* 296B4 80038EB4 90FFBD27 */  addiu      $sp, $sp, -0x70
/* 296B8 80038EB8 6400B1AF */  sw         $s1, 0x64($sp)
/* 296BC 80038EBC 2188A000 */  addu       $s1, $a1, $zero
/* 296C0 80038EC0 6800B2AF */  sw         $s2, 0x68($sp)
/* 296C4 80038EC4 2190C000 */  addu       $s2, $a2, $zero
/* 296C8 80038EC8 6C00BFAF */  sw         $ra, 0x6C($sp)
/* 296CC 80038ECC 6000B0AF */  sw         $s0, 0x60($sp)
/* 296D0 80038ED0 5401828C */  lw         $v0, 0x154($a0)
/* 296D4 80038ED4 00000000 */  nop
/* 296D8 80038ED8 02004230 */  andi       $v0, $v0, 0x2
/* 296DC 80038EDC 41004014 */  bnez       $v0, .L80038FE4
/* 296E0 80038EE0 2180E000 */   addu      $s0, $a3, $zero
/* 296E4 80038EE4 1400028E */  lw         $v0, 0x14($s0)
/* 296E8 80038EE8 00000000 */  nop
/* 296EC 80038EEC 3D005110 */  beq        $v0, $s1, .L80038FE4
/* 296F0 80038EF0 0A80033C */   lui       $v1, %hi(AnimationList)
/* 296F4 80038EF4 4400828C */  lw         $v0, 0x44($a0)
/* 296F8 80038EF8 00000000 */  nop
/* 296FC 80038EFC 1000448C */  lw         $a0, 0x10($v0)
/* 29700 80038F00 80516324 */  addiu      $v1, $v1, %lo(AnimationList)
/* 29704 80038F04 40110400 */  sll        $v0, $a0, 5
/* 29708 80038F08 23104400 */  subu       $v0, $v0, $a0
/* 2970C 80038F0C 21105100 */  addu       $v0, $v0, $s1
/* 29710 80038F10 80100200 */  sll        $v0, $v0, 2
/* 29714 80038F14 21186200 */  addu       $v1, $v1, $v0
/* 29718 80038F18 0400638C */  lw         $v1, 0x4($v1)
/* 2971C 80038F1C 00000000 */  nop
/* 29720 80038F20 10006014 */  bnez       $v1, .L80038F64
/* 29724 80038F24 0180053C */   lui       $a1, %hi(D_80012894)
/* 29728 80038F28 0880033C */  lui        $v1, %hi(MeshIDTable)
/* 2972C 80038F2C 60546324 */  addiu      $v1, $v1, %lo(MeshIDTable)
/* 29730 80038F30 40100400 */  sll        $v0, $a0, 1
/* 29734 80038F34 21104400 */  addu       $v0, $v0, $a0
/* 29738 80038F38 80100200 */  sll        $v0, $v0, 2
/* 2973C 80038F3C 23104400 */  subu       $v0, $v0, $a0
/* 29740 80038F40 80100200 */  sll        $v0, $v0, 2
/* 29744 80038F44 21186200 */  addu       $v1, $v1, $v0
/* 29748 80038F48 1000A427 */  addiu      $a0, $sp, 0x10
/* 2974C 80038F4C 9428A524 */  addiu      $a1, $a1, %lo(D_80012894)
/* 29750 80038F50 2800678C */  lw         $a3, 0x28($v1)
/* 29754 80038F54 53C5010C */  jal        sprintf
/* 29758 80038F58 21302002 */   addu      $a2, $s1, $zero
/* 2975C 80038F5C E1E30008 */  j          .L80038F84
/* 29760 80038F60 01000224 */   addiu     $v0, $zero, 0x1
.L80038F64:
/* 29764 80038F64 0000628C */  lw         $v0, 0x0($v1)
/* 29768 80038F68 00000000 */  nop
/* 2976C 80038F6C 0010422C */  sltiu      $v0, $v0, 0x1000
/* 29770 80038F70 04004014 */  bnez       $v0, .L80038F84
/* 29774 80038F74 01000224 */   addiu     $v0, $zero, 0x1
/* 29778 80038F78 0400628C */  lw         $v0, 0x4($v1)
/* 2977C 80038F7C 00000000 */  nop
/* 29780 80038F80 FFFF4224 */  addiu      $v0, $v0, -0x1
.L80038F84:
/* 29784 80038F84 00120200 */  sll        $v0, $v0, 8
/* 29788 80038F88 140011AE */  sw         $s1, 0x14($s0)
/* 2978C 80038F8C 0C0000AE */  sw         $zero, 0xC($s0)
/* 29790 80038F90 0C004012 */  beqz       $s2, .L80038FC4
/* 29794 80038F94 1C0002AE */   sw        $v0, 0x1C($s0)
/* 29798 80038F98 00010324 */  addiu      $v1, $zero, 0x100
/* 2979C 80038F9C 1A007200 */  div        $zero, $v1, $s2
/* 297A0 80038FA0 01000224 */  addiu      $v0, $zero, 0x1
/* 297A4 80038FA4 040000AE */  sw         $zero, 0x4($s0)
/* 297A8 80038FA8 200002AE */  sw         $v0, 0x20($s0)
/* 297AC 80038FAC 12180000 */  mflo       $v1
/* 297B0 80038FB0 02004016 */  bnez       $s2, .L80038FBC
/* 297B4 80038FB4 00000000 */   nop
/* 297B8 80038FB8 CD010000 */  break      0, 7
.L80038FBC:
/* 297BC 80038FBC F4E30008 */  j          .L80038FD0
/* 297C0 80038FC0 240003AE */   sw        $v1, 0x24($s0)
.L80038FC4:
/* 297C4 80038FC4 040000AE */  sw         $zero, 0x4($s0)
/* 297C8 80038FC8 100011AE */  sw         $s1, 0x10($s0)
/* 297CC 80038FCC 080000AE */  sw         $zero, 0x8($s0)
.L80038FD0:
/* 297D0 80038FD0 2800028E */  lw         $v0, 0x28($s0)
/* 297D4 80038FD4 00000000 */  nop
/* 297D8 80038FD8 0D004230 */  andi       $v0, $v0, 0xD
/* 297DC 80038FDC 02004234 */  ori        $v0, $v0, 0x2
/* 297E0 80038FE0 280002AE */  sw         $v0, 0x28($s0)
.L80038FE4:
/* 297E4 80038FE4 6C00BF8F */  lw         $ra, 0x6C($sp)
/* 297E8 80038FE8 6800B28F */  lw         $s2, 0x68($sp)
/* 297EC 80038FEC 6400B18F */  lw         $s1, 0x64($sp)
/* 297F0 80038FF0 6000B08F */  lw         $s0, 0x60($sp)
/* 297F4 80038FF4 0800E003 */  jr         $ra
/* 297F8 80038FF8 7000BD27 */   addiu     $sp, $sp, 0x70
.size CheckAnimWithInterp, . - CheckAnimWithInterp