.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel AnimateCells
/* 533F0 80062BF0 C0FFBD27 */  addiu      $sp, $sp, -0x40
/* 533F4 80062BF4 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 533F8 80062BF8 21888000 */  addu       $s1, $a0, $zero
/* 533FC 80062BFC 0980023C */  lui        $v0, %hi(CellAttributesPtr)
/* 53400 80062C00 6C50428C */  lw         $v0, %lo(CellAttributesPtr)($v0)
/* 53404 80062C04 21300000 */  addu       $a2, $zero, $zero
/* 53408 80062C08 3C00BFAF */  sw         $ra, 0x3C($sp)
/* 5340C 80062C0C 3800BEAF */  sw         $fp, 0x38($sp)
/* 53410 80062C10 3400B7AF */  sw         $s7, 0x34($sp)
/* 53414 80062C14 3000B6AF */  sw         $s6, 0x30($sp)
/* 53418 80062C18 2C00B5AF */  sw         $s5, 0x2C($sp)
/* 5341C 80062C1C 2800B4AF */  sw         $s4, 0x28($sp)
/* 53420 80062C20 2400B3AF */  sw         $s3, 0x24($sp)
/* 53424 80062C24 2000B2AF */  sw         $s2, 0x20($sp)
/* 53428 80062C28 1800B0AF */  sw         $s0, 0x18($sp)
/* 5342C 80062C2C 4400A5AF */  sw         $a1, 0x44($sp)
/* 53430 80062C30 0C01A018 */  blez       $a1, .L80063064
/* 53434 80062C34 1000A2AF */   sw        $v0, 0x10($sp)
.L80062C38:
/* 53438 80062C38 0100C324 */  addiu      $v1, $a2, 0x1
/* 5343C 80062C3C 1400A3AF */  sw         $v1, 0x14($sp)
/* 53440 80062C40 1800258E */  lw         $a1, 0x18($s1)
/* 53444 80062C44 00000000 */  nop
/* 53448 80062C48 0100A230 */  andi       $v0, $a1, 0x1
/* 5344C 80062C4C FF004010 */  beqz       $v0, .L8006304C
/* 53450 80062C50 34003E26 */   addiu     $fp, $s1, 0x34
/* 53454 80062C54 1000228E */  lw         $v0, 0x10($s1)
/* 53458 80062C58 00000000 */  nop
/* 5345C 80062C5C FA004014 */  bnez       $v0, .L80063048
/* 53460 80062C60 FFFF4224 */   addiu     $v0, $v0, -0x1
/* 53464 80062C64 0C00238E */  lw         $v1, 0xC($s1)
/* 53468 80062C68 1400228E */  lw         $v0, 0x14($s1)
/* 5346C 80062C6C 1C00248E */  lw         $a0, 0x1C($s1)
/* 53470 80062C70 0800378E */  lw         $s7, 0x8($s1)
/* 53474 80062C74 21186200 */  addu       $v1, $v1, $v0
/* 53478 80062C78 21986000 */  addu       $s3, $v1, $zero
/* 5347C 80062C7C 0800A230 */  andi       $v0, $a1, 0x8
/* 53480 80062C80 100024AE */  sw         $a0, 0x10($s1)
/* 53484 80062C84 04004010 */  beqz       $v0, .L80062C98
/* 53488 80062C88 0C0023AE */   sw        $v1, 0xC($s1)
/* 5348C 80062C8C FEFF0424 */  addiu      $a0, $zero, -0x2
/* 53490 80062C90 2410A400 */  and        $v0, $a1, $a0
/* 53494 80062C94 180022AE */  sw         $v0, 0x18($s1)
.L80062C98:
/* 53498 80062C98 FFFFE226 */  addiu      $v0, $s7, -0x1
/* 5349C 80062C9C 2A106202 */  slt        $v0, $s3, $v0
/* 534A0 80062CA0 52004014 */  bnez       $v0, .L80062DEC
/* 534A4 80062CA4 00000000 */   nop
/* 534A8 80062CA8 1400228E */  lw         $v0, 0x14($s1)
/* 534AC 80062CAC 00000000 */  nop
/* 534B0 80062CB0 4E004018 */  blez       $v0, .L80062DEC
/* 534B4 80062CB4 00000000 */   nop
/* 534B8 80062CB8 1800238E */  lw         $v1, 0x18($s1)
/* 534BC 80062CBC 00000000 */  nop
/* 534C0 80062CC0 04006230 */  andi       $v0, $v1, 0x4
/* 534C4 80062CC4 43004010 */  beqz       $v0, .L80062DD4
/* 534C8 80062CC8 10006230 */   andi      $v0, $v1, 0x10
/* 534CC 80062CCC 03004010 */  beqz       $v0, .L80062CDC
/* 534D0 80062CD0 FFFF0224 */   addiu     $v0, $zero, -0x1
/* 534D4 80062CD4 388B0108 */  j          .L80062CE0
/* 534D8 80062CD8 0C0020AE */   sw        $zero, 0xC($s1)
.L80062CDC:
/* 534DC 80062CDC 140022AE */  sw         $v0, 0x14($s1)
.L80062CE0:
/* 534E0 80062CE0 0100C624 */  addiu      $a2, $a2, 0x1
/* 534E4 80062CE4 34003E26 */  addiu      $fp, $s1, 0x34
/* 534E8 80062CE8 FEFF0524 */  addiu      $a1, $zero, -0x2
/* 534EC 80062CEC 1400A6AF */  sw         $a2, 0x14($sp)
/* 534F0 80062CF0 1800228E */  lw         $v0, 0x18($s1)
/* 534F4 80062CF4 0000268E */  lw         $a2, 0x0($s1)
/* 534F8 80062CF8 24104500 */  and        $v0, $v0, $a1
/* 534FC 80062CFC BD00C010 */  beqz       $a2, .L80062FF4
/* 53500 80062D00 180022AE */   sw        $v0, 0x18($s1)
/* 53504 80062D04 0880033C */  lui        $v1, %hi(TestWorld)
/* 53508 80062D08 0800D28C */  lw         $s2, 0x8($a2)
/* 5350C 80062D0C 8C65658C */  lw         $a1, %lo(TestWorld)($v1)
/* 53510 80062D10 0800428E */  lw         $v0, 0x8($s2)
/* 53514 80062D14 00000000 */  nop
/* 53518 80062D18 18004500 */  mult       $v0, $a1
/* 5351C 80062D1C 21206000 */  addu       $a0, $v1, $zero
/* 53520 80062D20 8C658424 */  addiu      $a0, $a0, %lo(TestWorld)
/* 53524 80062D24 12100000 */  mflo       $v0
/* 53528 80062D28 0400838C */  lw         $v1, 0x4($a0)
/* 5352C 80062D2C 00000000 */  nop
/* 53530 80062D30 18004300 */  mult       $v0, $v1
/* 53534 80062D34 12100000 */  mflo       $v0
/* 53538 80062D38 0400448E */  lw         $a0, 0x4($s2)
/* 5353C 80062D3C 00000000 */  nop
/* 53540 80062D40 18008500 */  mult       $a0, $a1
/* 53544 80062D44 21800000 */  addu       $s0, $zero, $zero
/* 53548 80062D48 0880053C */  lui        $a1, %hi(TestWorld)
/* 5354C 80062D4C 8C65A524 */  addiu      $a1, $a1, %lo(TestWorld)
/* 53550 80062D50 1400A38C */  lw         $v1, 0x14($a1)
/* 53554 80062D54 0000458E */  lw         $a1, 0x0($s2)
/* 53558 80062D58 12200000 */  mflo       $a0
/* 5355C 80062D5C 21104400 */  addu       $v0, $v0, $a0
/* 53560 80062D60 21104500 */  addu       $v0, $v0, $a1
/* 53564 80062D64 40100200 */  sll        $v0, $v0, 1
/* 53568 80062D68 21186200 */  addu       $v1, $v1, $v0
/* 5356C 80062D6C 00007694 */  lhu        $s6, 0x0($v1)
/* 53570 80062D70 0000D48C */  lw         $s4, 0x0($a2)
/* 53574 80062D74 FF03C23A */  xori       $v0, $s6, 0x3FF
/* 53578 80062D78 0E00801A */  blez       $s4, .L80062DB4
/* 5357C 80062D7C 2BA80200 */   sltu      $s5, $zero, $v0
.L80062D80:
/* 53580 80062D80 0000238E */  lw         $v1, 0x0($s1)
/* 53584 80062D84 2138A002 */  addu       $a3, $s5, $zero
/* 53588 80062D88 0800648C */  lw         $a0, 0x8($v1)
/* 5358C 80062D8C 00111000 */  sll        $v0, $s0, 4
/* 53590 80062D90 21908200 */  addu       $s2, $a0, $v0
/* 53594 80062D94 0000448E */  lw         $a0, 0x0($s2)
/* 53598 80062D98 0400458E */  lw         $a1, 0x4($s2)
/* 5359C 80062D9C 0800468E */  lw         $a2, 0x8($s2)
/* 535A0 80062DA0 AD4D010C */  jal        pxm_emitter_toggle
/* 535A4 80062DA4 01001026 */   addiu     $s0, $s0, 0x1
/* 535A8 80062DA8 2A181402 */  slt        $v1, $s0, $s4
/* 535AC 80062DAC F4FF6014 */  bnez       $v1, .L80062D80
/* 535B0 80062DB0 00000000 */   nop
.L80062DB4:
/* 535B4 80062DB4 3000228E */  lw         $v0, 0x30($s1)
/* 535B8 80062DB8 00000000 */  nop
/* 535BC 80062DBC 4E004010 */  beqz       $v0, .L80062EF8
/* 535C0 80062DC0 2120C002 */   addu      $a0, $s6, $zero
/* 535C4 80062DC4 09F84000 */  jalr       $v0
/* 535C8 80062DC8 21284002 */   addu      $a1, $s2, $zero
/* 535CC 80062DCC BE8B0108 */  j          .L80062EF8
/* 535D0 80062DD0 00000000 */   nop
.L80062DD4:
/* 535D4 80062DD4 2A107702 */  slt        $v0, $s3, $s7
/* 535D8 80062DD8 47004014 */  bnez       $v0, .L80062EF8
/* 535DC 80062DDC 00000000 */   nop
/* 535E0 80062DE0 0C0020AE */  sw         $zero, 0xC($s1)
/* 535E4 80062DE4 BE8B0108 */  j          .L80062EF8
/* 535E8 80062DE8 21980000 */   addu      $s3, $zero, $zero
.L80062DEC:
/* 535EC 80062DEC 0100C624 */  addiu      $a2, $a2, 0x1
/* 535F0 80062DF0 1400A6AF */  sw         $a2, 0x14($sp)
/* 535F4 80062DF4 40006104 */  bgez       $v1, .L80062EF8
/* 535F8 80062DF8 34003E26 */   addiu     $fp, $s1, 0x34
/* 535FC 80062DFC 1400228E */  lw         $v0, 0x14($s1)
/* 53600 80062E00 00000000 */  nop
/* 53604 80062E04 3C004104 */  bgez       $v0, .L80062EF8
/* 53608 80062E08 01000224 */   addiu     $v0, $zero, 0x1
/* 5360C 80062E0C 140022AE */  sw         $v0, 0x14($s1)
/* 53610 80062E10 FEFF0224 */  addiu      $v0, $zero, -0x2
/* 53614 80062E14 1800238E */  lw         $v1, 0x18($s1)
/* 53618 80062E18 0000268E */  lw         $a2, 0x0($s1)
/* 5361C 80062E1C 24186200 */  and        $v1, $v1, $v0
/* 53620 80062E20 8A00C010 */  beqz       $a2, .L8006304C
/* 53624 80062E24 180023AE */   sw        $v1, 0x18($s1)
/* 53628 80062E28 0880033C */  lui        $v1, %hi(TestWorld)
/* 5362C 80062E2C 0800D28C */  lw         $s2, 0x8($a2)
/* 53630 80062E30 8C65658C */  lw         $a1, %lo(TestWorld)($v1)
/* 53634 80062E34 0800428E */  lw         $v0, 0x8($s2)
/* 53638 80062E38 00000000 */  nop
/* 5363C 80062E3C 18004500 */  mult       $v0, $a1
/* 53640 80062E40 21206000 */  addu       $a0, $v1, $zero
/* 53644 80062E44 8C658424 */  addiu      $a0, $a0, %lo(TestWorld)
/* 53648 80062E48 12100000 */  mflo       $v0
/* 5364C 80062E4C 0400838C */  lw         $v1, 0x4($a0)
/* 53650 80062E50 00000000 */  nop
/* 53654 80062E54 18004300 */  mult       $v0, $v1
/* 53658 80062E58 12100000 */  mflo       $v0
/* 5365C 80062E5C 0400448E */  lw         $a0, 0x4($s2)
/* 53660 80062E60 00000000 */  nop
/* 53664 80062E64 18008500 */  mult       $a0, $a1
/* 53668 80062E68 21800000 */  addu       $s0, $zero, $zero
/* 5366C 80062E6C 0880053C */  lui        $a1, %hi(TestWorld)
/* 53670 80062E70 8C65A524 */  addiu      $a1, $a1, %lo(TestWorld)
/* 53674 80062E74 1400A38C */  lw         $v1, 0x14($a1)
/* 53678 80062E78 0000458E */  lw         $a1, 0x0($s2)
/* 5367C 80062E7C 12200000 */  mflo       $a0
/* 53680 80062E80 21104400 */  addu       $v0, $v0, $a0
/* 53684 80062E84 21104500 */  addu       $v0, $v0, $a1
/* 53688 80062E88 40100200 */  sll        $v0, $v0, 1
/* 5368C 80062E8C 21186200 */  addu       $v1, $v1, $v0
/* 53690 80062E90 00007594 */  lhu        $s5, 0x0($v1)
/* 53694 80062E94 0000D38C */  lw         $s3, 0x0($a2)
/* 53698 80062E98 FF03A23A */  xori       $v0, $s5, 0x3FF
/* 5369C 80062E9C 0E00601A */  blez       $s3, .L80062ED8
/* 536A0 80062EA0 2BA00200 */   sltu      $s4, $zero, $v0
.L80062EA4:
/* 536A4 80062EA4 0000238E */  lw         $v1, 0x0($s1)
/* 536A8 80062EA8 21388002 */  addu       $a3, $s4, $zero
/* 536AC 80062EAC 0800648C */  lw         $a0, 0x8($v1)
/* 536B0 80062EB0 00111000 */  sll        $v0, $s0, 4
/* 536B4 80062EB4 21908200 */  addu       $s2, $a0, $v0
/* 536B8 80062EB8 0000448E */  lw         $a0, 0x0($s2)
/* 536BC 80062EBC 0400458E */  lw         $a1, 0x4($s2)
/* 536C0 80062EC0 0800468E */  lw         $a2, 0x8($s2)
/* 536C4 80062EC4 AD4D010C */  jal        pxm_emitter_toggle
/* 536C8 80062EC8 01001026 */   addiu     $s0, $s0, 0x1
/* 536CC 80062ECC 2A181302 */  slt        $v1, $s0, $s3
/* 536D0 80062ED0 F4FF6014 */  bnez       $v1, .L80062EA4
/* 536D4 80062ED4 00000000 */   nop
.L80062ED8:
/* 536D8 80062ED8 3000238E */  lw         $v1, 0x30($s1)
/* 536DC 80062EDC 00000000 */  nop
/* 536E0 80062EE0 5A006010 */  beqz       $v1, .L8006304C
/* 536E4 80062EE4 2120A002 */   addu      $a0, $s5, $zero
/* 536E8 80062EE8 09F86000 */  jalr       $v1
/* 536EC 80062EEC 21284002 */   addu      $a1, $s2, $zero
/* 536F0 80062EF0 138C0108 */  j          .L8006304C
/* 536F4 80062EF4 00000000 */   nop
.L80062EF8:
/* 536F8 80062EF8 0000278E */  lw         $a3, 0x0($s1)
/* 536FC 80062EFC 00000000 */  nop
/* 53700 80062F00 3C00E010 */  beqz       $a3, .L80062FF4
/* 53704 80062F04 80101300 */   sll       $v0, $s3, 2
/* 53708 80062F08 2800248E */  lw         $a0, 0x28($s1)
/* 5370C 80062F0C 00000000 */  nop
/* 53710 80062F10 21104400 */  addu       $v0, $v0, $a0
/* 53714 80062F14 0000438C */  lw         $v1, 0x0($v0)
/* 53718 80062F18 0880023C */  lui        $v0, %hi(TestWorld)
/* 5371C 80062F1C 8C654224 */  addiu      $v0, $v0, %lo(TestWorld)
/* 53720 80062F20 1800448C */  lw         $a0, 0x18($v0)
/* 53724 80062F24 00000000 */  nop
/* 53728 80062F28 23186400 */  subu       $v1, $v1, $a0
/* 5372C 80062F2C 83180300 */  sra        $v1, $v1, 2
/* 53730 80062F30 21486000 */  addu       $t1, $v1, $zero
/* 53734 80062F34 FF036330 */  andi       $v1, $v1, 0x3FF
/* 53738 80062F38 80100300 */  sll        $v0, $v1, 2
/* 5373C 80062F3C 21104300 */  addu       $v0, $v0, $v1
/* 53740 80062F40 1000A38F */  lw         $v1, 0x10($sp)
/* 53744 80062F44 C0100200 */  sll        $v0, $v0, 3
/* 53748 80062F48 21106200 */  addu       $v0, $v1, $v0
/* 5374C 80062F4C 0800438C */  lw         $v1, 0x8($v0)
/* 53750 80062F50 1000043C */  lui        $a0, (0x100000 >> 16)
/* 53754 80062F54 24186400 */  and        $v1, $v1, $a0
/* 53758 80062F58 02006010 */  beqz       $v1, .L80062F64
/* 5375C 80062F5C 00000000 */   nop
/* 53760 80062F60 FF030924 */  addiu      $t1, $zero, 0x3FF
.L80062F64:
/* 53764 80062F64 0000E28C */  lw         $v0, 0x0($a3)
/* 53768 80062F68 00000000 */  nop
/* 5376C 80062F6C 37004010 */  beqz       $v0, .L8006304C
/* 53770 80062F70 21800000 */   addu      $s0, $zero, $zero
/* 53774 80062F74 08800A3C */  lui        $t2, %hi(TestWorld)
/* 53778 80062F78 8C654825 */  addiu      $t0, $t2, %lo(TestWorld)
/* 5377C 80062F7C 00191000 */  sll        $v1, $s0, 4
.L80062F80:
/* 53780 80062F80 0800E58C */  lw         $a1, 0x8($a3)
/* 53784 80062F84 8C65468D */  lw         $a2, %lo(TestWorld)($t2)
/* 53788 80062F88 2128A300 */  addu       $a1, $a1, $v1
/* 5378C 80062F8C 0800A28C */  lw         $v0, 0x8($a1)
/* 53790 80062F90 00000000 */  nop
/* 53794 80062F94 18004600 */  mult       $v0, $a2
/* 53798 80062F98 12100000 */  mflo       $v0
/* 5379C 80062F9C 0400038D */  lw         $v1, 0x4($t0)
/* 537A0 80062FA0 00000000 */  nop
/* 537A4 80062FA4 18004300 */  mult       $v0, $v1
/* 537A8 80062FA8 12100000 */  mflo       $v0
/* 537AC 80062FAC 0400A48C */  lw         $a0, 0x4($a1)
/* 537B0 80062FB0 00000000 */  nop
/* 537B4 80062FB4 18008600 */  mult       $a0, $a2
/* 537B8 80062FB8 1400038D */  lw         $v1, 0x14($t0)
/* 537BC 80062FBC 0000A68C */  lw         $a2, 0x0($a1)
/* 537C0 80062FC0 12200000 */  mflo       $a0
/* 537C4 80062FC4 21104400 */  addu       $v0, $v0, $a0
/* 537C8 80062FC8 21104600 */  addu       $v0, $v0, $a2
/* 537CC 80062FCC 40100200 */  sll        $v0, $v0, 1
/* 537D0 80062FD0 21186200 */  addu       $v1, $v1, $v0
/* 537D4 80062FD4 000069A4 */  sh         $t1, 0x0($v1)
/* 537D8 80062FD8 0000E28C */  lw         $v0, 0x0($a3)
/* 537DC 80062FDC 01001026 */  addiu      $s0, $s0, 0x1
/* 537E0 80062FE0 2B100202 */  sltu       $v0, $s0, $v0
/* 537E4 80062FE4 E6FF4014 */  bnez       $v0, .L80062F80
/* 537E8 80062FE8 00191000 */   sll       $v1, $s0, 4
/* 537EC 80062FEC 138C0108 */  j          .L8006304C
/* 537F0 80062FF0 00000000 */   nop
.L80062FF4:
/* 537F4 80062FF4 1500E01A */  blez       $s7, .L8006304C
/* 537F8 80062FF8 21800000 */   addu      $s0, $zero, $zero
/* 537FC 80062FFC 80181300 */  sll        $v1, $s3, 2
.L80063000:
/* 53800 80063000 01007326 */  addiu      $s3, $s3, 0x1
/* 53804 80063004 2C00228E */  lw         $v0, 0x2C($s1)
/* 53808 80063008 2800248E */  lw         $a0, 0x28($s1)
/* 5380C 8006300C 21186200 */  addu       $v1, $v1, $v0
/* 53810 80063010 80101000 */  sll        $v0, $s0, 2
/* 53814 80063014 21104400 */  addu       $v0, $v0, $a0
/* 53818 80063018 0000658C */  lw         $a1, 0x0($v1)
/* 5381C 8006301C 0000448C */  lw         $a0, 0x0($v0)
/* 53820 80063020 2A107702 */  slt        $v0, $s3, $s7
/* 53824 80063024 02004014 */  bnez       $v0, .L80063030
/* 53828 80063028 000085AC */   sw        $a1, 0x0($a0)
/* 5382C 8006302C 21980000 */  addu       $s3, $zero, $zero
.L80063030:
/* 53830 80063030 01001026 */  addiu      $s0, $s0, 0x1
/* 53834 80063034 2A101702 */  slt        $v0, $s0, $s7
/* 53838 80063038 F1FF4014 */  bnez       $v0, .L80063000
/* 5383C 8006303C 80181300 */   sll       $v1, $s3, 2
/* 53840 80063040 138C0108 */  j          .L8006304C
/* 53844 80063044 00000000 */   nop
.L80063048:
/* 53848 80063048 100022AE */  sw         $v0, 0x10($s1)
.L8006304C:
/* 5384C 8006304C 1400A68F */  lw         $a2, 0x14($sp)
/* 53850 80063050 4400A38F */  lw         $v1, 0x44($sp)
/* 53854 80063054 00000000 */  nop
/* 53858 80063058 2A10C300 */  slt        $v0, $a2, $v1
/* 5385C 8006305C F6FE4014 */  bnez       $v0, .L80062C38
/* 53860 80063060 2188C003 */   addu      $s1, $fp, $zero
.L80063064:
/* 53864 80063064 3C00BF8F */  lw         $ra, 0x3C($sp)
/* 53868 80063068 3800BE8F */  lw         $fp, 0x38($sp)
/* 5386C 8006306C 3400B78F */  lw         $s7, 0x34($sp)
/* 53870 80063070 3000B68F */  lw         $s6, 0x30($sp)
/* 53874 80063074 2C00B58F */  lw         $s5, 0x2C($sp)
/* 53878 80063078 2800B48F */  lw         $s4, 0x28($sp)
/* 5387C 8006307C 2400B38F */  lw         $s3, 0x24($sp)
/* 53880 80063080 2000B28F */  lw         $s2, 0x20($sp)
/* 53884 80063084 1C00B18F */  lw         $s1, 0x1C($sp)
/* 53888 80063088 1800B08F */  lw         $s0, 0x18($sp)
/* 5388C 8006308C 0800E003 */  jr         $ra
/* 53890 80063090 4000BD27 */   addiu     $sp, $sp, 0x40
.size AnimateCells, . - AnimateCells
