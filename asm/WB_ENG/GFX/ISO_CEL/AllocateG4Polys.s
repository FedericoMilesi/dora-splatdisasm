.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel AllocateG4Polys
/* 51E90 80061690 40100500 */  sll        $v0, $a1, 1
/* 51E94 80061694 21104500 */  addu       $v0, $v0, $a1
/* 51E98 80061698 80100200 */  sll        $v0, $v0, 2
/* 51E9C 8006169C 23104500 */  subu       $v0, $v0, $a1
/* 51EA0 800616A0 80100200 */  sll        $v0, $v0, 2
/* 51EA4 800616A4 0980073C */  lui        $a3, %hi(MEM_PolyPoolCurrent)
/* 51EA8 800616A8 EC57E78C */  lw         $a3, %lo(MEM_PolyPoolCurrent)($a3)
/* 51EAC 800616AC 1400868C */  lw         $a2, 0x14($a0)
/* 51EB0 800616B0 2110E200 */  addu       $v0, $a3, $v0
/* 51EB4 800616B4 0980013C */  lui        $at, %hi(MEM_PolyPoolCurrent)
/* 51EB8 800616B8 EC5722AC */  sw         $v0, %lo(MEM_PolyPoolCurrent)($at)
/* 51EBC 800616BC 3600A018 */  blez       $a1, .L80061798
/* 51EC0 800616C0 2120E000 */   addu      $a0, $a3, $zero
.L800616C4:
/* 51EC4 800616C4 0400C290 */  lbu        $v0, 0x4($a2)
/* 51EC8 800616C8 00000000 */  nop
/* 51ECC 800616CC 040082A0 */  sb         $v0, 0x4($a0)
/* 51ED0 800616D0 0500C390 */  lbu        $v1, 0x5($a2)
/* 51ED4 800616D4 00000000 */  nop
/* 51ED8 800616D8 050083A0 */  sb         $v1, 0x5($a0)
/* 51EDC 800616DC 0600C290 */  lbu        $v0, 0x6($a2)
/* 51EE0 800616E0 00000000 */  nop
/* 51EE4 800616E4 060082A0 */  sb         $v0, 0x6($a0)
/* 51EE8 800616E8 0700C390 */  lbu        $v1, 0x7($a2)
/* 51EEC 800616EC 00000000 */  nop
/* 51EF0 800616F0 070083A0 */  sb         $v1, 0x7($a0)
/* 51EF4 800616F4 0C00C290 */  lbu        $v0, 0xC($a2)
/* 51EF8 800616F8 00000000 */  nop
/* 51EFC 800616FC 0C0082A0 */  sb         $v0, 0xC($a0)
/* 51F00 80061700 0D00C390 */  lbu        $v1, 0xD($a2)
/* 51F04 80061704 00000000 */  nop
/* 51F08 80061708 0D0083A0 */  sb         $v1, 0xD($a0)
/* 51F0C 8006170C 0E00C290 */  lbu        $v0, 0xE($a2)
/* 51F10 80061710 00000000 */  nop
/* 51F14 80061714 0E0082A0 */  sb         $v0, 0xE($a0)
/* 51F18 80061718 1400C390 */  lbu        $v1, 0x14($a2)
/* 51F1C 8006171C 00000000 */  nop
/* 51F20 80061720 140083A0 */  sb         $v1, 0x14($a0)
/* 51F24 80061724 1500C290 */  lbu        $v0, 0x15($a2)
/* 51F28 80061728 00000000 */  nop
/* 51F2C 8006172C 150082A0 */  sb         $v0, 0x15($a0)
/* 51F30 80061730 1600C390 */  lbu        $v1, 0x16($a2)
/* 51F34 80061734 00000000 */  nop
/* 51F38 80061738 160083A0 */  sb         $v1, 0x16($a0)
/* 51F3C 8006173C 1C00C290 */  lbu        $v0, 0x1C($a2)
/* 51F40 80061740 00000000 */  nop
/* 51F44 80061744 1C0082A0 */  sb         $v0, 0x1C($a0)
/* 51F48 80061748 1D00C390 */  lbu        $v1, 0x1D($a2)
/* 51F4C 8006174C 00000000 */  nop
/* 51F50 80061750 1D0083A0 */  sb         $v1, 0x1D($a0)
/* 51F54 80061754 1E00C290 */  lbu        $v0, 0x1E($a2)
/* 51F58 80061758 00000000 */  nop
/* 51F5C 8006175C 1E0082A0 */  sb         $v0, 0x1E($a0)
/* 51F60 80061760 2400C394 */  lhu        $v1, 0x24($a2)
/* 51F64 80061764 00000000 */  nop
/* 51F68 80061768 240083A4 */  sh         $v1, 0x24($a0)
/* 51F6C 8006176C 2600C294 */  lhu        $v0, 0x26($a2)
/* 51F70 80061770 00000000 */  nop
/* 51F74 80061774 260082A4 */  sh         $v0, 0x26($a0)
/* 51F78 80061778 2800C394 */  lhu        $v1, 0x28($a2)
/* 51F7C 8006177C FFFFA524 */  addiu      $a1, $a1, -0x1
/* 51F80 80061780 280083A4 */  sh         $v1, 0x28($a0)
/* 51F84 80061784 2A00C294 */  lhu        $v0, 0x2A($a2)
/* 51F88 80061788 2C00C624 */  addiu      $a2, $a2, 0x2C
/* 51F8C 8006178C 2A0082A4 */  sh         $v0, 0x2A($a0)
/* 51F90 80061790 CCFFA014 */  bnez       $a1, .L800616C4
/* 51F94 80061794 2C008424 */   addiu     $a0, $a0, 0x2C
.L80061798:
/* 51F98 80061798 0800E003 */  jr         $ra
/* 51F9C 8006179C 2110E000 */   addu      $v0, $a3, $zero
.size AllocateG4Polys, . - AllocateG4Polys