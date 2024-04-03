.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel VehicleBrains
/* 37C90 80047490 80FFBD27 */  addiu      $sp, $sp, -0x80
/* 37C94 80047494 6400B1AF */  sw         $s1, 0x64($sp)
/* 37C98 80047498 21888000 */  addu       $s1, $a0, $zero
/* 37C9C 8004749C 0100043C */  lui        $a0, (0x10000 >> 16)
/* 37CA0 800474A0 7800BFAF */  sw         $ra, 0x78($sp)
/* 37CA4 800474A4 7400B5AF */  sw         $s5, 0x74($sp)
/* 37CA8 800474A8 7000B4AF */  sw         $s4, 0x70($sp)
/* 37CAC 800474AC 6C00B3AF */  sw         $s3, 0x6C($sp)
/* 37CB0 800474B0 6800B2AF */  sw         $s2, 0x68($sp)
/* 37CB4 800474B4 D140010C */  jal        u32Random
/* 37CB8 800474B8 6000B0AF */   sw        $s0, 0x60($sp)
/* 37CBC 800474BC 2801358E */  lw         $s5, 0x128($s1)
/* 37CC0 800474C0 00000000 */  nop
/* 37CC4 800474C4 2800B28E */  lw         $s2, 0x28($s5)
/* 37CC8 800474C8 2C00A28E */  lw         $v0, 0x2C($s5)
/* 37CCC 800474CC 2000438E */  lw         $v1, 0x20($s2)
/* 37CD0 800474D0 0C1591AF */  sw         $s1, %gp_rel(g_debugactor)($gp)
/* 37CD4 800474D4 7E016214 */  bne        $v1, $v0, .L80047AD0
/* 37CD8 800474D8 00000000 */   nop
/* 37CDC 800474DC 0000438E */  lw         $v1, 0x0($s2)
/* 37CE0 800474E0 00000000 */  nop
/* 37CE4 800474E4 0600622C */  sltiu      $v0, $v1, 0x6
/* 37CE8 800474E8 27014010 */  beqz       $v0, .L80047988
/* 37CEC 800474EC 0180023C */   lui       $v0, %hi(jtbl_80012DF0)
/* 37CF0 800474F0 F02D4224 */  addiu      $v0, $v0, %lo(jtbl_80012DF0)
/* 37CF4 800474F4 80180300 */  sll        $v1, $v1, 2
/* 37CF8 800474F8 21186200 */  addu       $v1, $v1, $v0
/* 37CFC 800474FC 0000648C */  lw         $a0, 0x0($v1)
/* 37D00 80047500 00000000 */  nop
/* 37D04 80047504 08008000 */  jr         $a0
/* 37D08 80047508 00000000 */   nop
jlabel .L8004750C
/* 37D0C 8004750C 4401228E */  lw         $v0, 0x144($s1)
/* 37D10 80047510 0C001024 */  addiu      $s0, $zero, 0xC
/* 37D14 80047514 04005010 */  beq        $v0, $s0, .L80047528
/* 37D18 80047518 21202002 */   addu      $a0, $s1, $zero
/* 37D1C 8004751C 0C000524 */  addiu      $a1, $zero, 0xC
/* 37D20 80047520 DCE2000C */  jal        ForceAnim
/* 37D24 80047524 2C012626 */   addiu     $a2, $s1, 0x12C
.L80047528:
/* 37D28 80047528 440130AE */  sw         $s0, 0x144($s1)
/* 37D2C 8004752C 2000A48E */  lw         $a0, 0x20($s5)
/* 37D30 80047530 00000000 */  nop
/* 37D34 80047534 2000838C */  lw         $v1, 0x20($a0)
/* 37D38 80047538 00000000 */  nop
/* 37D3C 8004753C C0100300 */  sll        $v0, $v1, 3
/* 37D40 80047540 21104300 */  addu       $v0, $v0, $v1
/* 37D44 80047544 00130200 */  sll        $v0, $v0, 12
/* 37D48 80047548 02140200 */  srl        $v0, $v0, 16
/* 37D4C 8004754C 200082AC */  sw         $v0, 0x20($a0)
/* 37D50 80047550 2000A38E */  lw         $v1, 0x20($s5)
/* 37D54 80047554 00000000 */  nop
/* 37D58 80047558 2000628C */  lw         $v0, 0x20($v1)
/* 37D5C 8004755C 00000000 */  nop
/* 37D60 80047560 09014014 */  bnez       $v0, .L80047988
/* 37D64 80047564 00000000 */   nop
/* 37D68 80047568 73FB000C */  jal        MotionPhysics_Halt
/* 37D6C 8004756C 6C002426 */   addiu     $a0, $s1, 0x6C
/* 37D70 80047570 04000324 */  addiu      $v1, $zero, 0x4
/* 37D74 80047574 000043AE */  sw         $v1, 0x0($s2)
/* 37D78 80047578 08100424 */  addiu      $a0, $zero, 0x1008
/* 37D7C 8004757C 21282002 */  addu       $a1, $s1, $zero
/* 37D80 80047580 6F4A010C */  jal        pxm_sendevent
/* 37D84 80047584 21300000 */   addu      $a2, $zero, $zero
/* 37D88 80047588 621E0108 */  j          .L80047988
/* 37D8C 8004758C 00000000 */   nop
jlabel .L80047590
/* 37D90 80047590 440120AE */  sw         $zero, 0x144($s1)
/* 37D94 80047594 2800428E */  lw         $v0, 0x28($s2)
/* 37D98 80047598 00000000 */  nop
/* 37D9C 8004759C 0200422C */  sltiu      $v0, $v0, 0x2
/* 37DA0 800475A0 05004010 */  beqz       $v0, .L800475B8
/* 37DA4 800475A4 21202002 */   addu      $a0, $s1, $zero
/* 37DA8 800475A8 9186010C */  jal        GetMinDistanceFromSpheres
/* 37DAC 800475AC 02000524 */   addiu     $a1, $zero, 0x2
/* 37DB0 800475B0 621E0108 */  j          .L80047988
/* 37DB4 800475B4 00000000 */   nop
.L800475B8:
/* 37DB8 800475B8 9186010C */  jal        GetMinDistanceFromSpheres
/* 37DBC 800475BC 01000524 */   addiu     $a1, $zero, 0x1
/* 37DC0 800475C0 621E0108 */  j          .L80047988
/* 37DC4 800475C4 00000000 */   nop
jlabel .L800475C8
/* 37DC8 800475C8 01001324 */  addiu      $s3, $zero, 0x1
/* 37DCC 800475CC 1000228E */  lw         $v0, 0x10($s1)
/* 37DD0 800475D0 3C01238E */  lw         $v1, 0x13C($s1)
/* 37DD4 800475D4 00014234 */  ori        $v0, $v0, 0x100
/* 37DD8 800475D8 05007310 */  beq        $v1, $s3, .L800475F0
/* 37DDC 800475DC 100022AE */   sw        $v0, 0x10($s1)
/* 37DE0 800475E0 21202002 */  addu       $a0, $s1, $zero
/* 37DE4 800475E4 01000524 */  addiu      $a1, $zero, 0x1
/* 37DE8 800475E8 DCE2000C */  jal        ForceAnim
/* 37DEC 800475EC 2C012626 */   addiu     $a2, $s1, 0x12C
.L800475F0:
/* 37DF0 800475F0 440133AE */  sw         $s3, 0x144($s1)
/* 37DF4 800475F4 2000A28E */  lw         $v0, 0x20($s5)
/* 37DF8 800475F8 00000000 */  nop
/* 37DFC 800475FC 0000448C */  lw         $a0, 0x0($v0)
/* 37E00 80047600 00000000 */  nop
/* 37E04 80047604 0400838C */  lw         $v1, 0x4($a0)
/* 37E08 80047608 00000000 */  nop
/* 37E0C 8004760C 40006330 */  andi       $v1, $v1, 0x40
/* 37E10 80047610 34006010 */  beqz       $v1, .L800476E4
/* 37E14 80047614 00000000 */   nop
/* 37E18 80047618 2801308E */  lw         $s0, 0x128($s1)
/* 37E1C 8004761C 00000000 */  nop
/* 37E20 80047620 000000AE */  sw         $zero, 0x0($s0)
/* 37E24 80047624 0C0020AE */  sw         $zero, 0xC($s1)
/* 37E28 80047628 080000AE */  sw         $zero, 0x8($s0)
/* 37E2C 8004762C 0C0000AE */  sw         $zero, 0xC($s0)
/* 37E30 80047630 040000AE */  sw         $zero, 0x4($s0)
/* 37E34 80047634 5C0020AE */  sw         $zero, 0x5C($s1)
/* 37E38 80047638 2800028E */  lw         $v0, 0x28($s0)
/* 37E3C 8004763C 00000000 */  nop
/* 37E40 80047640 2800428C */  lw         $v0, 0x28($v0)
/* 37E44 80047644 00000000 */  nop
/* 37E48 80047648 05004010 */  beqz       $v0, .L80047660
/* 37E4C 8004764C 00000000 */   nop
/* 37E50 80047650 05005314 */  bne        $v0, $s3, .L80047668
/* 37E54 80047654 00040224 */   addiu     $v0, $zero, 0x400
/* 37E58 80047658 9A1D0108 */  j          .L80047668
/* 37E5C 8004765C 540022AE */   sw        $v0, 0x54($s1)
.L80047660:
/* 37E60 80047660 000C0224 */  addiu      $v0, $zero, 0xC00
/* 37E64 80047664 540022AE */  sw         $v0, 0x54($s1)
.L80047668:
/* 37E68 80047668 4400228E */  lw         $v0, 0x44($s1)
/* 37E6C 8004766C 6C003326 */  addiu      $s3, $s1, 0x6C
/* 37E70 80047670 0C0020AE */  sw         $zero, 0xC($s1)
/* 37E74 80047674 0000458C */  lw         $a1, 0x0($v0)
/* 37E78 80047678 0400468C */  lw         $a2, 0x4($v0)
/* 37E7C 8004767C 0800478C */  lw         $a3, 0x8($v0)
/* 37E80 80047680 77FB000C */  jal        MotionPhysics_SetPosition
/* 37E84 80047684 21206002 */   addu      $a0, $s3, $zero
/* 37E88 80047688 2000058E */  lw         $a1, 0x20($s0)
/* 37E8C 8004768C 00000000 */  nop
/* 37E90 80047690 1300A010 */  beqz       $a1, .L800476E0
/* 37E94 80047694 01000224 */   addiu     $v0, $zero, 0x1
/* 37E98 80047698 1000068E */  lw         $a2, 0x10($s0)
/* 37E9C 8004769C 1800078E */  lw         $a3, 0x18($s0)
/* 37EA0 800476A0 9C13010C */  jal        InitPath
/* 37EA4 800476A4 21202002 */   addu      $a0, $s1, $zero
/* 37EA8 800476A8 3C01228E */  lw         $v0, 0x13C($s1)
/* 37EAC 800476AC 01001024 */  addiu      $s0, $zero, 0x1
/* 37EB0 800476B0 04005010 */  beq        $v0, $s0, .L800476C4
/* 37EB4 800476B4 21202002 */   addu      $a0, $s1, $zero
/* 37EB8 800476B8 01000524 */  addiu      $a1, $zero, 0x1
/* 37EBC 800476BC DCE2000C */  jal        ForceAnim
/* 37EC0 800476C0 2C012626 */   addiu     $a2, $s1, 0x12C
.L800476C4:
/* 37EC4 800476C4 0000258E */  lw         $a1, 0x0($s1)
/* 37EC8 800476C8 0400268E */  lw         $a2, 0x4($s1)
/* 37ECC 800476CC 0800278E */  lw         $a3, 0x8($s1)
/* 37ED0 800476D0 21206002 */  addu       $a0, $s3, $zero
/* 37ED4 800476D4 77FB000C */  jal        MotionPhysics_SetPosition
/* 37ED8 800476D8 440130AE */   sw        $s0, 0x144($s1)
/* 37EDC 800476DC 01000224 */  addiu      $v0, $zero, 0x1
.L800476E0:
/* 37EE0 800476E0 000042AE */  sw         $v0, 0x0($s2)
.L800476E4:
/* 37EE4 800476E4 2800438E */  lw         $v1, 0x28($s2)
/* 37EE8 800476E8 01000524 */  addiu      $a1, $zero, 0x1
/* 37EEC 800476EC 0A006514 */  bne        $v1, $a1, .L80047718
/* 37EF0 800476F0 02000224 */   addiu     $v0, $zero, 0x2
/* 37EF4 800476F4 0980023C */  lui        $v0, %hi(ScrollXPos)
/* 37EF8 800476F8 7054428C */  lw         $v0, %lo(ScrollXPos)($v0)
/* 37EFC 800476FC 0000238E */  lw         $v1, 0x0($s1)
/* 37F00 80047700 C0110200 */  sll        $v0, $v0, 7
/* 37F04 80047704 2A186200 */  slt        $v1, $v1, $v0
/* 37F08 80047708 22006010 */  beqz       $v1, .L80047794
/* 37F0C 8004770C 00000000 */   nop
/* 37F10 80047710 E51D0108 */  j          .L80047794
/* 37F14 80047714 000045AE */   sw        $a1, 0x0($s2)
.L80047718:
/* 37F18 80047718 08006214 */  bne        $v1, $v0, .L8004773C
/* 37F1C 8004771C 03000224 */   addiu     $v0, $zero, 0x3
/* 37F20 80047720 0980023C */  lui        $v0, %hi(ScrollZSize)
/* 37F24 80047724 DC59428C */  lw         $v0, %lo(ScrollZSize)($v0)
/* 37F28 80047728 0980033C */  lui        $v1, %hi(ScrollZPos)
/* 37F2C 8004772C 7854638C */  lw         $v1, %lo(ScrollZPos)($v1)
/* 37F30 80047730 0800248E */  lw         $a0, 0x8($s1)
/* 37F34 80047734 E01D0108 */  j          .L80047780
/* 37F38 80047738 21104300 */   addu      $v0, $v0, $v1
.L8004773C:
/* 37F3C 8004773C 0A006214 */  bne        $v1, $v0, .L80047768
/* 37F40 80047740 00000000 */   nop
/* 37F44 80047744 0980023C */  lui        $v0, %hi(ScrollZPos)
/* 37F48 80047748 7854428C */  lw         $v0, %lo(ScrollZPos)($v0)
/* 37F4C 8004774C 0800238E */  lw         $v1, 0x8($s1)
/* 37F50 80047750 C0110200 */  sll        $v0, $v0, 7
/* 37F54 80047754 2A186200 */  slt        $v1, $v1, $v0
/* 37F58 80047758 0E006010 */  beqz       $v1, .L80047794
/* 37F5C 8004775C 00000000 */   nop
/* 37F60 80047760 E51D0108 */  j          .L80047794
/* 37F64 80047764 000045AE */   sw        $a1, 0x0($s2)
.L80047768:
/* 37F68 80047768 0980023C */  lui        $v0, %hi(ScrollXSize)
/* 37F6C 8004776C D459428C */  lw         $v0, %lo(ScrollXSize)($v0)
/* 37F70 80047770 0980033C */  lui        $v1, %hi(ScrollXPos)
/* 37F74 80047774 7054638C */  lw         $v1, %lo(ScrollXPos)($v1)
/* 37F78 80047778 0000248E */  lw         $a0, 0x0($s1)
/* 37F7C 8004777C 21104300 */  addu       $v0, $v0, $v1
.L80047780:
/* 37F80 80047780 C0110200 */  sll        $v0, $v0, 7
/* 37F84 80047784 2A104400 */  slt        $v0, $v0, $a0
/* 37F88 80047788 02004010 */  beqz       $v0, .L80047794
/* 37F8C 8004778C 00000000 */   nop
/* 37F90 80047790 000045AE */  sw         $a1, 0x0($s2)
.L80047794:
/* 37F94 80047794 2801228E */  lw         $v0, 0x128($s1)
/* 37F98 80047798 0C0020AE */  sw         $zero, 0xC($s1)
/* 37F9C 8004779C 2800438C */  lw         $v1, 0x28($v0)
/* 37FA0 800477A0 10271324 */  addiu      $s3, $zero, 0x2710
/* 37FA4 800477A4 2800638C */  lw         $v1, 0x28($v1)
/* 37FA8 800477A8 00000000 */  nop
/* 37FAC 800477AC 07006014 */  bnez       $v1, .L800477CC
/* 37FB0 800477B0 0980053C */   lui       $a1, %hi(ETActor)
/* 37FB4 800477B4 21202002 */  addu       $a0, $s1, $zero
/* 37FB8 800477B8 B05AA38C */  lw         $v1, %lo(ETActor)($a1)
/* 37FBC 800477BC 0000228E */  lw         $v0, 0x0($s1)
/* 37FC0 800477C0 02000524 */  addiu      $a1, $zero, 0x2
/* 37FC4 800477C4 FB1D0108 */  j          .L800477EC
/* 37FC8 800477C8 2A804300 */   slt       $s0, $v0, $v1
.L800477CC:
/* 37FCC 800477CC 01000224 */  addiu      $v0, $zero, 0x1
/* 37FD0 800477D0 10006214 */  bne        $v1, $v0, .L80047814
/* 37FD4 800477D4 8000622A */   slti      $v0, $s3, 0x80
/* 37FD8 800477D8 21202002 */  addu       $a0, $s1, $zero
/* 37FDC 800477DC B05AA38C */  lw         $v1, %lo(ETActor)($a1)
/* 37FE0 800477E0 0000228E */  lw         $v0, 0x0($s1)
/* 37FE4 800477E4 02000524 */  addiu      $a1, $zero, 0x2
/* 37FE8 800477E8 2A806200 */  slt        $s0, $v1, $v0
.L800477EC:
/* 37FEC 800477EC 9186010C */  jal        GetMinDistanceFromSpheres
/* 37FF0 800477F0 00000000 */   nop
/* 37FF4 800477F4 0700401C */  bgtz       $v0, .L80047814
/* 37FF8 800477F8 8000622A */   slti      $v0, $s3, 0x80
/* 37FFC 800477FC 05000012 */  beqz       $s0, .L80047814
/* 38000 80047800 21202002 */   addu      $a0, $s1, $zero
/* 38004 80047804 9186010C */  jal        GetMinDistanceFromSpheres
/* 38008 80047808 01000524 */   addiu     $a1, $zero, 0x1
/* 3800C 8004780C 21984000 */  addu       $s3, $v0, $zero
/* 38010 80047810 8000622A */  slti       $v0, $s3, 0x80
.L80047814:
/* 38014 80047814 5C004010 */  beqz       $v0, .L80047988
/* 38018 80047818 0A100424 */   addiu     $a0, $zero, 0x100A
/* 3801C 8004781C 21282002 */  addu       $a1, $s1, $zero
/* 38020 80047820 6F4A010C */  jal        pxm_sendevent
/* 38024 80047824 21300000 */   addu      $a2, $zero, $zero
/* 38028 80047828 05000324 */  addiu      $v1, $zero, 0x5
/* 3802C 8004782C 621E0108 */  j          .L80047988
/* 38030 80047830 000043AE */   sw        $v1, 0x0($s2)
jlabel .L80047834
/* 38034 80047834 2000428E */  lw         $v0, 0x20($s2)
/* 38038 80047838 2400438E */  lw         $v1, 0x24($s2)
/* 3803C 8004783C 01004224 */  addiu      $v0, $v0, 0x1
/* 38040 80047840 200042AE */  sw         $v0, 0x20($s2)
/* 38044 80047844 2A104300 */  slt        $v0, $v0, $v1
/* 38048 80047848 02004014 */  bnez       $v0, .L80047854
/* 3804C 8004784C 02000224 */   addiu     $v0, $zero, 0x2
/* 38050 80047850 200040AE */  sw         $zero, 0x20($s2)
.L80047854:
/* 38054 80047854 B41E0108 */  j          .L80047AD0
/* 38058 80047858 000042AE */   sw        $v0, 0x0($s2)
jlabel .L8004785C
/* 3805C 8004785C 2800438E */  lw         $v1, 0x28($s2)
/* 38060 80047860 01000224 */  addiu      $v0, $zero, 0x1
/* 38064 80047864 10006214 */  bne        $v1, $v0, .L800478A8
/* 38068 80047868 00000000 */   nop
/* 3806C 8004786C 0980023C */  lui        $v0, %hi(ScrollXPos)
/* 38070 80047870 7054428C */  lw         $v0, %lo(ScrollXPos)($v0)
/* 38074 80047874 0980033C */  lui        $v1, %hi(ScrollXSize)
/* 38078 80047878 D459638C */  lw         $v1, %lo(ScrollXSize)($v1)
/* 3807C 8004787C 00000000 */  nop
/* 38080 80047880 21104300 */  addu       $v0, $v0, $v1
/* 38084 80047884 C0110200 */  sll        $v0, $v0, 7
/* 38088 80047888 000022AE */  sw         $v0, 0x0($s1)
/* 3808C 8004788C 0800438E */  lw         $v1, 0x8($s2)
/* 38090 80047890 00000000 */  nop
/* 38094 80047894 0800648C */  lw         $a0, 0x8($v1)
/* 38098 80047898 00000000 */  nop
/* 3809C 8004789C 0000848C */  lw         $a0, 0x0($a0)
/* 380A0 800478A0 571E0108 */  j          .L8004795C
/* 380A4 800478A4 2A108200 */   slt       $v0, $a0, $v0
.L800478A8:
/* 380A8 800478A8 02000224 */  addiu      $v0, $zero, 0x2
/* 380AC 800478AC 0A006214 */  bne        $v1, $v0, .L800478D8
/* 380B0 800478B0 03000224 */   addiu     $v0, $zero, 0x3
/* 380B4 800478B4 0980023C */  lui        $v0, %hi(ScrollZPos)
/* 380B8 800478B8 7854428C */  lw         $v0, %lo(ScrollZPos)($v0)
/* 380BC 800478BC 0980033C */  lui        $v1, %hi(ScrollZSize)
/* 380C0 800478C0 DC59638C */  lw         $v1, %lo(ScrollZSize)($v1)
/* 380C4 800478C4 00000000 */  nop
/* 380C8 800478C8 21104300 */  addu       $v0, $v0, $v1
/* 380CC 800478CC C0110200 */  sll        $v0, $v0, 7
/* 380D0 800478D0 5A1E0108 */  j          .L80047968
/* 380D4 800478D4 080022AE */   sw        $v0, 0x8($s1)
.L800478D8:
/* 380D8 800478D8 14006214 */  bne        $v1, $v0, .L8004792C
/* 380DC 800478DC 00000000 */   nop
/* 380E0 800478E0 0980023C */  lui        $v0, %hi(ScrollZPos)
/* 380E4 800478E4 7854428C */  lw         $v0, %lo(ScrollZPos)($v0)
/* 380E8 800478E8 0980033C */  lui        $v1, %hi(ScrollZSize)
/* 380EC 800478EC DC59638C */  lw         $v1, %lo(ScrollZSize)($v1)
/* 380F0 800478F0 00000000 */  nop
/* 380F4 800478F4 21104300 */  addu       $v0, $v0, $v1
/* 380F8 800478F8 C0110200 */  sll        $v0, $v0, 7
/* 380FC 800478FC 080022AE */  sw         $v0, 0x8($s1)
/* 38100 80047900 0800438E */  lw         $v1, 0x8($s2)
/* 38104 80047904 00000000 */  nop
/* 38108 80047908 0800648C */  lw         $a0, 0x8($v1)
/* 3810C 8004790C 00000000 */  nop
/* 38110 80047910 0800838C */  lw         $v1, 0x8($a0)
/* 38114 80047914 00000000 */  nop
/* 38118 80047918 2A106200 */  slt        $v0, $v1, $v0
/* 3811C 8004791C 12004010 */  beqz       $v0, .L80047968
/* 38120 80047920 00000000 */   nop
/* 38124 80047924 5A1E0108 */  j          .L80047968
/* 38128 80047928 080023AE */   sw        $v1, 0x8($s1)
.L8004792C:
/* 3812C 8004792C 0980023C */  lui        $v0, %hi(ScrollXPos)
/* 38130 80047930 7054428C */  lw         $v0, %lo(ScrollXPos)($v0)
/* 38134 80047934 00000000 */  nop
/* 38138 80047938 C0110200 */  sll        $v0, $v0, 7
/* 3813C 8004793C 000022AE */  sw         $v0, 0x0($s1)
/* 38140 80047940 0800438E */  lw         $v1, 0x8($s2)
/* 38144 80047944 00000000 */  nop
/* 38148 80047948 0800648C */  lw         $a0, 0x8($v1)
/* 3814C 8004794C 00000000 */  nop
/* 38150 80047950 0000848C */  lw         $a0, 0x0($a0)
/* 38154 80047954 00000000 */  nop
/* 38158 80047958 2A104400 */  slt        $v0, $v0, $a0
.L8004795C:
/* 3815C 8004795C 02004010 */  beqz       $v0, .L80047968
/* 38160 80047960 00000000 */   nop
/* 38164 80047964 000024AE */  sw         $a0, 0x0($s1)
.L80047968:
/* 38168 80047968 4400228E */  lw         $v0, 0x44($s1)
/* 3816C 8004796C 0000258E */  lw         $a1, 0x0($s1)
/* 38170 80047970 0400468C */  lw         $a2, 0x4($v0)
/* 38174 80047974 0800478C */  lw         $a3, 0x8($v0)
/* 38178 80047978 77FB000C */  jal        MotionPhysics_SetPosition
/* 3817C 8004797C 6C002426 */   addiu     $a0, $s1, 0x6C
/* 38180 80047980 B41E0108 */  j          .L80047AD0
/* 38184 80047984 000040AE */   sw        $zero, 0x0($s2)
jlabel .L80047988
/* 38188 80047988 8D68000C */  jal        ETPreventEnemyAttack
/* 3818C 8004798C 00000000 */   nop
/* 38190 80047990 0F004010 */  beqz       $v0, .L800479D0
/* 38194 80047994 00000000 */   nop
/* 38198 80047998 73FB000C */  jal        MotionPhysics_Halt
/* 3819C 8004799C 6C002426 */   addiu     $a0, $s1, 0x6C
/* 381A0 800479A0 3C01238E */  lw         $v1, 0x13C($s1)
/* 381A4 800479A4 00000000 */  nop
/* 381A8 800479A8 04006010 */  beqz       $v1, .L800479BC
/* 381AC 800479AC 21202002 */   addu      $a0, $s1, $zero
/* 381B0 800479B0 21280000 */  addu       $a1, $zero, $zero
/* 381B4 800479B4 DCE2000C */  jal        ForceAnim
/* 381B8 800479B8 2C012626 */   addiu     $a2, $s1, 0x12C
.L800479BC:
/* 381BC 800479BC 440120AE */  sw         $zero, 0x144($s1)
/* 381C0 800479C0 2025010C */  jal        CommonActorPostBrains
/* 381C4 800479C4 21202002 */   addu      $a0, $s1, $zero
/* 381C8 800479C8 B41E0108 */  j          .L80047AD0
/* 381CC 800479CC 00000000 */   nop
.L800479D0:
/* 381D0 800479D0 2000A58E */  lw         $a1, 0x20($s5)
/* 381D4 800479D4 00000000 */  nop
/* 381D8 800479D8 3D00A010 */  beqz       $a1, .L80047AD0
/* 381DC 800479DC 00000000 */   nop
/* 381E0 800479E0 AF12010C */  jal        PathBrain
/* 381E4 800479E4 21202002 */   addu      $a0, $s1, $zero
/* 381E8 800479E8 2025010C */  jal        CommonActorPostBrains
/* 381EC 800479EC 21202002 */   addu      $a0, $s1, $zero
/* 381F0 800479F0 08004010 */  beqz       $v0, .L80047A14
/* 381F4 800479F4 04000224 */   addiu     $v0, $zero, 0x4
/* 381F8 800479F8 0000438E */  lw         $v1, 0x0($s2)
/* 381FC 800479FC 00000000 */  nop
/* 38200 80047A00 33006210 */  beq        $v1, $v0, .L80047AD0
/* 38204 80047A04 00000000 */   nop
/* 38208 80047A08 05000224 */  addiu      $v0, $zero, 0x5
/* 3820C 80047A0C B41E0108 */  j          .L80047AD0
/* 38210 80047A10 000042AE */   sw        $v0, 0x0($s2)
.L80047A14:
/* 38214 80047A14 0000438E */  lw         $v1, 0x0($s2)
/* 38218 80047A18 00000000 */  nop
/* 3821C 80047A1C 2C006214 */  bne        $v1, $v0, .L80047AD0
/* 38220 80047A20 10271424 */   addiu     $s4, $zero, 0x2710
/* 38224 80047A24 2801228E */  lw         $v0, 0x128($s1)
/* 38228 80047A28 00000000 */  nop
/* 3822C 80047A2C 2800438C */  lw         $v1, 0x28($v0)
/* 38230 80047A30 00000000 */  nop
/* 38234 80047A34 2800638C */  lw         $v1, 0x28($v1)
/* 38238 80047A38 980D938F */  lw         $s3, %gp_rel(eggmindist)($gp)
/* 3823C 80047A3C 07006014 */  bnez       $v1, .L80047A5C
/* 38240 80047A40 0980053C */   lui       $a1, %hi(ETActor)
/* 38244 80047A44 21202002 */  addu       $a0, $s1, $zero
/* 38248 80047A48 B05AA38C */  lw         $v1, %lo(ETActor)($a1)
/* 3824C 80047A4C 0000228E */  lw         $v0, 0x0($s1)
/* 38250 80047A50 02000524 */  addiu      $a1, $zero, 0x2
/* 38254 80047A54 9F1E0108 */  j          .L80047A7C
/* 38258 80047A58 2A804300 */   slt       $s0, $v0, $v1
.L80047A5C:
/* 3825C 80047A5C 01000224 */  addiu      $v0, $zero, 0x1
/* 38260 80047A60 11006214 */  bne        $v1, $v0, .L80047AA8
/* 38264 80047A64 8000822A */   slti      $v0, $s4, 0x80
/* 38268 80047A68 21202002 */  addu       $a0, $s1, $zero
/* 3826C 80047A6C B05AA38C */  lw         $v1, %lo(ETActor)($a1)
/* 38270 80047A70 0000228E */  lw         $v0, 0x0($s1)
/* 38274 80047A74 02000524 */  addiu      $a1, $zero, 0x2
/* 38278 80047A78 2A806200 */  slt        $s0, $v1, $v0
.L80047A7C:
/* 3827C 80047A7C 9186010C */  jal        GetMinDistanceFromSpheres
/* 38280 80047A80 00000000 */   nop
/* 38284 80047A84 2A106202 */  slt        $v0, $s3, $v0
/* 38288 80047A88 07004014 */  bnez       $v0, .L80047AA8
/* 3828C 80047A8C 8000822A */   slti      $v0, $s4, 0x80
/* 38290 80047A90 05000012 */  beqz       $s0, .L80047AA8
/* 38294 80047A94 21202002 */   addu      $a0, $s1, $zero
/* 38298 80047A98 9186010C */  jal        GetMinDistanceFromSpheres
/* 3829C 80047A9C 01000524 */   addiu     $a1, $zero, 0x1
/* 382A0 80047AA0 21A04000 */  addu       $s4, $v0, $zero
/* 382A4 80047AA4 8000822A */  slti       $v0, $s4, 0x80
.L80047AA8:
/* 382A8 80047AA8 09004014 */  bnez       $v0, .L80047AD0
/* 382AC 80047AAC 21202002 */   addu      $a0, $s1, $zero
/* 382B0 80047AB0 01000524 */  addiu      $a1, $zero, 0x1
/* 382B4 80047AB4 DCE2000C */  jal        ForceAnim
/* 382B8 80047AB8 2C018624 */   addiu     $a2, $a0, 0x12C
/* 382BC 80047ABC 2000A38E */  lw         $v1, 0x20($s5)
/* 382C0 80047AC0 1000A28E */  lw         $v0, 0x10($s5)
/* 382C4 80047AC4 00000000 */  nop
/* 382C8 80047AC8 200062AC */  sw         $v0, 0x20($v1)
/* 382CC 80047ACC 000040AE */  sw         $zero, 0x0($s2)
.L80047AD0:
/* 382D0 80047AD0 7800BF8F */  lw         $ra, 0x78($sp)
/* 382D4 80047AD4 7400B58F */  lw         $s5, 0x74($sp)
/* 382D8 80047AD8 7000B48F */  lw         $s4, 0x70($sp)
/* 382DC 80047ADC 6C00B38F */  lw         $s3, 0x6C($sp)
/* 382E0 80047AE0 6800B28F */  lw         $s2, 0x68($sp)
/* 382E4 80047AE4 6400B18F */  lw         $s1, 0x64($sp)
/* 382E8 80047AE8 6000B08F */  lw         $s0, 0x60($sp)
/* 382EC 80047AEC 0800E003 */  jr         $ra
/* 382F0 80047AF0 8000BD27 */   addiu     $sp, $sp, 0x80
.size VehicleBrains, . - VehicleBrains
