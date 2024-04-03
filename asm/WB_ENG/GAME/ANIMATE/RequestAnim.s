.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel RequestAnim
/* 291C8 800389C8 00320600 */  sll        $a2, $a2, 8
/* 291CC 800389CC 1800A48F */  lw         $a0, 0x18($sp)
/* 291D0 800389D0 003A0700 */  sll        $a3, $a3, 8
/* 291D4 800389D4 140085AC */  sw         $a1, 0x14($a0)
/* 291D8 800389D8 0C0086AC */  sw         $a2, 0xC($a0)
/* 291DC 800389DC 1C0087AC */  sw         $a3, 0x1C($a0)
/* 291E0 800389E0 1000A78F */  lw         $a3, 0x10($sp)
/* 291E4 800389E4 00000000 */  nop
/* 291E8 800389E8 0B00E010 */  beqz       $a3, .L80038A18
/* 291EC 800389EC 00010324 */   addiu     $v1, $zero, 0x100
/* 291F0 800389F0 1A006700 */  div        $zero, $v1, $a3
/* 291F4 800389F4 01000224 */  addiu      $v0, $zero, 0x1
/* 291F8 800389F8 040080AC */  sw         $zero, 0x4($a0)
/* 291FC 800389FC 200082AC */  sw         $v0, 0x20($a0)
/* 29200 80038A00 12180000 */  mflo       $v1
/* 29204 80038A04 0200E014 */  bnez       $a3, .L80038A10
/* 29208 80038A08 00000000 */   nop
/* 2920C 80038A0C CD010000 */  break      0, 7
.L80038A10:
/* 29210 80038A10 89E20008 */  j          .L80038A24
/* 29214 80038A14 240083AC */   sw        $v1, 0x24($a0)
.L80038A18:
/* 29218 80038A18 040080AC */  sw         $zero, 0x4($a0)
/* 2921C 80038A1C 100085AC */  sw         $a1, 0x10($a0)
/* 29220 80038A20 080086AC */  sw         $a2, 0x8($a0)
.L80038A24:
/* 29224 80038A24 2800828C */  lw         $v0, 0x28($a0)
/* 29228 80038A28 1400A38F */  lw         $v1, 0x14($sp)
/* 2922C 80038A2C 0D004230 */  andi       $v0, $v0, 0xD
/* 29230 80038A30 25104300 */  or         $v0, $v0, $v1
/* 29234 80038A34 0800E003 */  jr         $ra
/* 29238 80038A38 280082AC */   sw        $v0, 0x28($a0)
.size RequestAnim, . - RequestAnim
