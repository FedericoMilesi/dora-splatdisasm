.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

/* Handwritten function */
glabel DrawParticle
/* 19DCC 800295CC 801F0B3C */  lui        $t3, (0x1F800008 >> 16)
/* 19DD0 800295D0 08006B35 */  ori        $t3, $t3, (0x1F800008 & 0xFFFF)
/* 19DD4 800295D4 0B80023C */  lui        $v0, %hi(g_nt)
/* 19DD8 800295D8 68BB4D24 */  addiu      $t5, $v0, %lo(g_nt)
/* 19DDC 800295DC 4000878C */  lw         $a3, 0x40($a0)
/* 19DE0 800295E0 0980033C */  lui        $v1, %hi(ot_ndx)
/* 19DE4 800295E4 4853638C */  lw         $v1, %lo(ot_ndx)($v1)
/* 19DE8 800295E8 09800A3C */  lui        $t2, %hi(DistBuf)
/* 19DEC 800295EC 90574A8D */  lw         $t2, %lo(DistBuf)($t2)
/* 19DF0 800295F0 0800858C */  lw         $a1, 0x8($a0)
/* 19DF4 800295F4 4A008984 */  lh         $t1, 0x4A($a0)
/* 19DF8 800295F8 6800A018 */  blez       $a1, .L8002979C
/* 19DFC 800295FC 801F0F3C */   lui       $t7, (0x1F800004 >> 16)
/* 19E00 80029600 80100300 */  sll        $v0, $v1, 2
/* 19E04 80029604 21104300 */  addu       $v0, $v0, $v1
/* 19E08 80029608 C0100200 */  sll        $v0, $v0, 3
/* 19E0C 8002960C 1C004E24 */  addiu      $t6, $v0, 0x1C
/* 19E10 80029610 2140A000 */  addu       $t0, $a1, $zero
.L80029614:
/* 19E14 80029614 0000E384 */  lh         $v1, 0x0($a3)
/* 19E18 80029618 01000224 */  addiu      $v0, $zero, 0x1
/* 19E1C 8002961C 5C006214 */  bne        $v1, $v0, .L80029790
/* 19E20 80029620 2130EE00 */   addu      $a2, $a3, $t6
/* 19E24 80029624 0400E38C */  lw         $v1, 0x4($a3)
/* 19E28 80029628 6C00E584 */  lh         $a1, 0x6C($a3)
/* 19E2C 8002962C 031A0300 */  sra        $v1, $v1, 8
/* 19E30 80029630 801F013C */  lui        $at, (0x1F800000 >> 16)
/* 19E34 80029634 000023A4 */  sh         $v1, (0x1F800000 & 0xFFFF)($at)
/* 19E38 80029638 0800E28C */  lw         $v0, 0x8($a3)
/* 19E3C 8002963C 00000000 */  nop
/* 19E40 80029640 03120200 */  sra        $v0, $v0, 8
/* 19E44 80029644 801F013C */  lui        $at, (0x1F800002 >> 16)
/* 19E48 80029648 020022A4 */  sh         $v0, (0x1F800002 & 0xFFFF)($at)
/* 19E4C 8002964C 0C00E38C */  lw         $v1, 0xC($a3)
/* 19E50 80029650 00000000 */  nop
/* 19E54 80029654 031A0300 */  sra        $v1, $v1, 8
/* 19E58 80029658 801F013C */  lui        $at, (0x1F800004 >> 16)
/* 19E5C 8002965C 040023A4 */  sh         $v1, (0x1F800004 & 0xFFFF)($at)
/* 19E60 80029660 0000E0C9 */  lwc2       $0, (0x1F800000 & 0xFFFF)($t7)
/* 19E64 80029664 0400E1C9 */  lwc2       $1, (0x1F800004 & 0xFFFF)($t7)
/* 19E68 80029668 00000000 */  nop
/* 19E6C 8002966C 00000000 */  nop
/* 19E70 80029670 0100184A */  RTPS
/* 19E74 80029674 00006EE9 */  swc2       $14, 0x0($t3)
/* 19E78 80029678 00980C48 */  mfc2       $t4, $19 /* handwritten instruction */
/* 19E7C 8002967C 00000000 */  nop
/* 19E80 80029680 C3600C00 */  sra        $t4, $t4, 3
/* 19E84 80029684 00004CAD */  sw         $t4, 0x0($t2)
/* 19E88 80029688 0000428D */  lw         $v0, 0x0($t2)
/* 19E8C 8002968C 58020324 */  addiu      $v1, $zero, 0x258
/* 19E90 80029690 23186200 */  subu       $v1, $v1, $v0
/* 19E94 80029694 1800A300 */  mult       $a1, $v1
/* 19E98 80029698 12180000 */  mflo       $v1
/* 19E9C 8002969C EB51023C */  lui        $v0, (0x51EB851F >> 16)
/* 19EA0 800296A0 1F854234 */  ori        $v0, $v0, (0x51EB851F & 0xFFFF)
/* 19EA4 800296A4 18006200 */  mult       $v1, $v0
/* 19EA8 800296A8 6C00E484 */  lh         $a0, 0x6C($a3)
/* 19EAC 800296AC C31F0300 */  sra        $v1, $v1, 31
/* 19EB0 800296B0 10100000 */  mfhi       $v0
/* 19EB4 800296B4 03120200 */  sra        $v0, $v0, 8
/* 19EB8 800296B8 23284300 */  subu       $a1, $v0, $v1
/* 19EBC 800296BC 2A208500 */  slt        $a0, $a0, $a1
/* 19EC0 800296C0 02008010 */  beqz       $a0, .L800296CC
/* 19EC4 800296C4 00000000 */   nop
/* 19EC8 800296C8 01000524 */  addiu      $a1, $zero, 0x1
.L800296CC:
/* 19ECC 800296CC 801F023C */  lui        $v0, (0x1F800008 >> 16)
/* 19ED0 800296D0 0800428C */  lw         $v0, (0x1F800008 & 0xFFFF)($v0)
/* 19ED4 800296D4 0400C490 */  lbu        $a0, 0x4($a2)
/* 19ED8 800296D8 FFFF4330 */  andi       $v1, $v0, 0xFFFF
/* 19EDC 800296DC 18008900 */  mult       $a0, $t1
/* 19EE0 800296E0 03140200 */  sra        $v0, $v0, 16
/* 19EE4 800296E4 0800C3A4 */  sh         $v1, 0x8($a2)
/* 19EE8 800296E8 1800C3A4 */  sh         $v1, 0x18($a2)
/* 19EEC 800296EC 21186500 */  addu       $v1, $v1, $a1
/* 19EF0 800296F0 0A00C2A4 */  sh         $v0, 0xA($a2)
/* 19EF4 800296F4 1200C2A4 */  sh         $v0, 0x12($a2)
/* 19EF8 800296F8 21104500 */  addu       $v0, $v0, $a1
/* 19EFC 800296FC 1000C3A4 */  sh         $v1, 0x10($a2)
/* 19F00 80029700 2000C3A4 */  sh         $v1, 0x20($a2)
/* 19F04 80029704 1A00C2A4 */  sh         $v0, 0x1A($a2)
/* 19F08 80029708 12200000 */  mflo       $a0
/* 19F0C 8002970C 02008104 */  bgez       $a0, .L80029718
/* 19F10 80029710 2200C2A4 */   sh        $v0, 0x22($a2)
/* 19F14 80029714 FF008424 */  addiu      $a0, $a0, 0xFF
.L80029718:
/* 19F18 80029718 0500C290 */  lbu        $v0, 0x5($a2)
/* 19F1C 8002971C 00000000 */  nop
/* 19F20 80029720 18004900 */  mult       $v0, $t1
/* 19F24 80029724 031A0400 */  sra        $v1, $a0, 8
/* 19F28 80029728 12280000 */  mflo       $a1
/* 19F2C 8002972C 0200A104 */  bgez       $a1, .L80029738
/* 19F30 80029730 0400C3A0 */   sb        $v1, 0x4($a2)
/* 19F34 80029734 FF00A524 */  addiu      $a1, $a1, 0xFF
.L80029738:
/* 19F38 80029738 0600C290 */  lbu        $v0, 0x6($a2)
/* 19F3C 8002973C 00000000 */  nop
/* 19F40 80029740 18004900 */  mult       $v0, $t1
/* 19F44 80029744 031A0500 */  sra        $v1, $a1, 8
/* 19F48 80029748 12100000 */  mflo       $v0
/* 19F4C 8002974C 02004104 */  bgez       $v0, .L80029758
/* 19F50 80029750 0500C3A0 */   sb        $v1, 0x5($a2)
/* 19F54 80029754 FF004224 */  addiu      $v0, $v0, 0xFF
.L80029758:
/* 19F58 80029758 03120200 */  sra        $v0, $v0, 8
/* 19F5C 8002975C 0600C2A0 */  sb         $v0, 0x6($a2)
/* 19F60 80029760 0800A38D */  lw         $v1, 0x8($t5)
/* 19F64 80029764 00000000 */  nop
/* 19F68 80029768 07006010 */  beqz       $v1, .L80029788
/* 19F6C 8002976C FF00023C */   lui       $v0, (0xFFFFFF >> 16)
/* 19F70 80029770 FFFF4234 */  ori        $v0, $v0, (0xFFFFFF & 0xFFFF)
/* 19F74 80029774 24106200 */  and        $v0, $v1, $v0
/* 19F78 80029778 0009033C */  lui        $v1, (0x9000000 >> 16)
/* 19F7C 8002977C 25104300 */  or         $v0, $v0, $v1
/* 19F80 80029780 E3A50008 */  j          .L8002978C
/* 19F84 80029784 0000C2AC */   sw        $v0, 0x0($a2)
.L80029788:
/* 19F88 80029788 0C00A6AD */  sw         $a2, 0xC($t5)
.L8002978C:
/* 19F8C 8002978C 0800A6AD */  sw         $a2, 0x8($t5)
.L80029790:
/* 19F90 80029790 FFFF0825 */  addiu      $t0, $t0, -0x1
/* 19F94 80029794 9FFF0015 */  bnez       $t0, .L80029614
/* 19F98 80029798 7400E724 */   addiu     $a3, $a3, 0x74
.L8002979C:
/* 19F9C 8002979C 0800E003 */  jr         $ra
/* 19FA0 800297A0 00000000 */   nop
.size DrawParticle, . - DrawParticle
