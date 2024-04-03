.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MakeSemiTransCell
/* 51620 80060E20 3800828C */  lw         $v0, 0x38($a0)
/* 51624 80060E24 0800838C */  lw         $v1, 0x8($a0)
/* 51628 80060E28 08004018 */  blez       $v0, .L80060E4C
/* 5162C 80060E2C 00000000 */   nop
/* 51630 80060E30 21284000 */  addu       $a1, $v0, $zero
.L80060E34:
/* 51634 80060E34 07006290 */  lbu        $v0, 0x7($v1)
/* 51638 80060E38 FFFFA524 */  addiu      $a1, $a1, -0x1
/* 5163C 80060E3C 02004234 */  ori        $v0, $v0, 0x2
/* 51640 80060E40 070062A0 */  sb         $v0, 0x7($v1)
/* 51644 80060E44 FBFFA014 */  bnez       $a1, .L80060E34
/* 51648 80060E48 1C006324 */   addiu     $v1, $v1, 0x1C
.L80060E4C:
/* 5164C 80060E4C 3C00828C */  lw         $v0, 0x3C($a0)
/* 51650 80060E50 0C00838C */  lw         $v1, 0xC($a0)
/* 51654 80060E54 08004018 */  blez       $v0, .L80060E78
/* 51658 80060E58 00000000 */   nop
/* 5165C 80060E5C 21284000 */  addu       $a1, $v0, $zero
.L80060E60:
/* 51660 80060E60 07006290 */  lbu        $v0, 0x7($v1)
/* 51664 80060E64 FFFFA524 */  addiu      $a1, $a1, -0x1
/* 51668 80060E68 02004234 */  ori        $v0, $v0, 0x2
/* 5166C 80060E6C 070062A0 */  sb         $v0, 0x7($v1)
/* 51670 80060E70 FBFFA014 */  bnez       $a1, .L80060E60
/* 51674 80060E74 20006324 */   addiu     $v1, $v1, 0x20
.L80060E78:
/* 51678 80060E78 4000828C */  lw         $v0, 0x40($a0)
/* 5167C 80060E7C 1000838C */  lw         $v1, 0x10($a0)
/* 51680 80060E80 08004018 */  blez       $v0, .L80060EA4
/* 51684 80060E84 00000000 */   nop
/* 51688 80060E88 21284000 */  addu       $a1, $v0, $zero
.L80060E8C:
/* 5168C 80060E8C 07006290 */  lbu        $v0, 0x7($v1)
/* 51690 80060E90 FFFFA524 */  addiu      $a1, $a1, -0x1
/* 51694 80060E94 02004234 */  ori        $v0, $v0, 0x2
/* 51698 80060E98 070062A0 */  sb         $v0, 0x7($v1)
/* 5169C 80060E9C FBFFA014 */  bnez       $a1, .L80060E8C
/* 516A0 80060EA0 24006324 */   addiu     $v1, $v1, 0x24
.L80060EA4:
/* 516A4 80060EA4 4400828C */  lw         $v0, 0x44($a0)
/* 516A8 80060EA8 1400838C */  lw         $v1, 0x14($a0)
/* 516AC 80060EAC 08004018 */  blez       $v0, .L80060ED0
/* 516B0 80060EB0 00000000 */   nop
/* 516B4 80060EB4 21284000 */  addu       $a1, $v0, $zero
.L80060EB8:
/* 516B8 80060EB8 07006290 */  lbu        $v0, 0x7($v1)
/* 516BC 80060EBC FFFFA524 */  addiu      $a1, $a1, -0x1
/* 516C0 80060EC0 02004234 */  ori        $v0, $v0, 0x2
/* 516C4 80060EC4 070062A0 */  sb         $v0, 0x7($v1)
/* 516C8 80060EC8 FBFFA014 */  bnez       $a1, .L80060EB8
/* 516CC 80060ECC 2C006324 */   addiu     $v1, $v1, 0x2C
.L80060ED0:
/* 516D0 80060ED0 4800828C */  lw         $v0, 0x48($a0)
/* 516D4 80060ED4 1800868C */  lw         $a2, 0x18($a0)
/* 516D8 80060ED8 0B004018 */  blez       $v0, .L80060F08
/* 516DC 80060EDC 00000000 */   nop
/* 516E0 80060EE0 21284000 */  addu       $a1, $v0, $zero
.L80060EE4:
/* 516E4 80060EE4 FFFFA524 */  addiu      $a1, $a1, -0x1
/* 516E8 80060EE8 0700C290 */  lbu        $v0, 0x7($a2)
/* 516EC 80060EEC 1600C394 */  lhu        $v1, 0x16($a2)
/* 516F0 80060EF0 02004234 */  ori        $v0, $v0, 0x2
/* 516F4 80060EF4 9FFF6330 */  andi       $v1, $v1, 0xFF9F
/* 516F8 80060EF8 0700C2A0 */  sb         $v0, 0x7($a2)
/* 516FC 80060EFC 1600C3A4 */  sh         $v1, 0x16($a2)
/* 51700 80060F00 F8FFA014 */  bnez       $a1, .L80060EE4
/* 51704 80060F04 2800C624 */   addiu     $a2, $a2, 0x28
.L80060F08:
/* 51708 80060F08 4C00828C */  lw         $v0, 0x4C($a0)
/* 5170C 80060F0C 1C00868C */  lw         $a2, 0x1C($a0)
/* 51710 80060F10 0B004018 */  blez       $v0, .L80060F40
/* 51714 80060F14 00000000 */   nop
/* 51718 80060F18 21284000 */  addu       $a1, $v0, $zero
.L80060F1C:
/* 5171C 80060F1C FFFFA524 */  addiu      $a1, $a1, -0x1
/* 51720 80060F20 0700C290 */  lbu        $v0, 0x7($a2)
/* 51724 80060F24 1600C394 */  lhu        $v1, 0x16($a2)
/* 51728 80060F28 02004234 */  ori        $v0, $v0, 0x2
/* 5172C 80060F2C 9FFF6330 */  andi       $v1, $v1, 0xFF9F
/* 51730 80060F30 0700C2A0 */  sb         $v0, 0x7($a2)
/* 51734 80060F34 1600C3A4 */  sh         $v1, 0x16($a2)
/* 51738 80060F38 F8FFA014 */  bnez       $a1, .L80060F1C
/* 5173C 80060F3C 3400C624 */   addiu     $a2, $a2, 0x34
.L80060F40:
/* 51740 80060F40 5000828C */  lw         $v0, 0x50($a0)
/* 51744 80060F44 2000868C */  lw         $a2, 0x20($a0)
/* 51748 80060F48 0B004018 */  blez       $v0, .L80060F78
/* 5174C 80060F4C 00000000 */   nop
/* 51750 80060F50 21284000 */  addu       $a1, $v0, $zero
.L80060F54:
/* 51754 80060F54 FFFFA524 */  addiu      $a1, $a1, -0x1
/* 51758 80060F58 0700C290 */  lbu        $v0, 0x7($a2)
/* 5175C 80060F5C 1A00C394 */  lhu        $v1, 0x1A($a2)
/* 51760 80060F60 02004234 */  ori        $v0, $v0, 0x2
/* 51764 80060F64 9FFF6330 */  andi       $v1, $v1, 0xFF9F
/* 51768 80060F68 0700C2A0 */  sb         $v0, 0x7($a2)
/* 5176C 80060F6C 1A00C3A4 */  sh         $v1, 0x1A($a2)
/* 51770 80060F70 F8FFA014 */  bnez       $a1, .L80060F54
/* 51774 80060F74 3000C624 */   addiu     $a2, $a2, 0x30
.L80060F78:
/* 51778 80060F78 5400828C */  lw         $v0, 0x54($a0)
/* 5177C 80060F7C 2400848C */  lw         $a0, 0x24($a0)
/* 51780 80060F80 0A004018 */  blez       $v0, .L80060FAC
/* 51784 80060F84 21284000 */   addu      $a1, $v0, $zero
.L80060F88:
/* 51788 80060F88 FFFFA524 */  addiu      $a1, $a1, -0x1
/* 5178C 80060F8C 07008290 */  lbu        $v0, 0x7($a0)
/* 51790 80060F90 1A008394 */  lhu        $v1, 0x1A($a0)
/* 51794 80060F94 02004234 */  ori        $v0, $v0, 0x2
/* 51798 80060F98 9FFF6330 */  andi       $v1, $v1, 0xFF9F
/* 5179C 80060F9C 070082A0 */  sb         $v0, 0x7($a0)
/* 517A0 80060FA0 1A0083A4 */  sh         $v1, 0x1A($a0)
/* 517A4 80060FA4 F8FFA014 */  bnez       $a1, .L80060F88
/* 517A8 80060FA8 40008424 */   addiu     $a0, $a0, 0x40
.L80060FAC:
/* 517AC 80060FAC 0800E003 */  jr         $ra
/* 517B0 80060FB0 00000000 */   nop
.size MakeSemiTransCell, . - MakeSemiTransCell
