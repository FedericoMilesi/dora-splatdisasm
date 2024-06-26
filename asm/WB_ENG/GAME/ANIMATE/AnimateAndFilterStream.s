.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel AnimateAndFilterStream
/* 28D6C 8003856C C0FFBD27 */  addiu      $sp, $sp, -0x40
/* 28D70 80038570 21608000 */  addu       $t4, $a0, $zero
/* 28D74 80038574 3000B2AF */  sw         $s2, 0x30($sp)
/* 28D78 80038578 2190C000 */  addu       $s2, $a2, $zero
/* 28D7C 8003857C 3800BFAF */  sw         $ra, 0x38($sp)
/* 28D80 80038580 3400B3AF */  sw         $s3, 0x34($sp)
/* 28D84 80038584 2C00B1AF */  sw         $s1, 0x2C($sp)
/* 28D88 80038588 2800B0AF */  sw         $s0, 0x28($sp)
/* 28D8C 8003858C 1000428E */  lw         $v0, 0x10($s2)
/* 28D90 80038590 8401848D */  lw         $a0, 0x184($t4)
/* 28D94 80038594 1400438E */  lw         $v1, 0x14($s2)
/* 28D98 80038598 5000AD8F */  lw         $t5, 0x50($sp)
/* 28D9C 8003859C 5400AE8F */  lw         $t6, 0x54($sp)
/* 28DA0 800385A0 5800B38F */  lw         $s3, 0x58($sp)
/* 28DA4 800385A4 80100200 */  sll        $v0, $v0, 2
/* 28DA8 800385A8 04008424 */  addiu      $a0, $a0, 0x4
/* 28DAC 800385AC 21108200 */  addu       $v0, $a0, $v0
/* 28DB0 800385B0 80180300 */  sll        $v1, $v1, 2
/* 28DB4 800385B4 21208300 */  addu       $a0, $a0, $v1
/* 28DB8 800385B8 00008A8C */  lw         $t2, 0x0($a0)
/* 28DBC 800385BC 00004B8C */  lw         $t3, 0x0($v0)
/* 28DC0 800385C0 06004011 */  beqz       $t2, .L800385DC
/* 28DC4 800385C4 0A80063C */   lui       $a2, %hi(dummyanim)
/* 28DC8 800385C8 0000428D */  lw         $v0, 0x0($t2)
/* 28DCC 800385CC 00000000 */  nop
/* 28DD0 800385D0 0010422C */  sltiu      $v0, $v0, 0x1000
/* 28DD4 800385D4 0A004010 */  beqz       $v0, .L80038600
/* 28DD8 800385D8 00000000 */   nop
.L800385DC:
/* 28DDC 800385DC 00A6C324 */  addiu      $v1, $a2, %lo(dummyanim)
/* 28DE0 800385E0 01000224 */  addiu      $v0, $zero, 0x1
/* 28DE4 800385E4 040062AC */  sw         $v0, 0x4($v1)
/* 28DE8 800385E8 2001848D */  lw         $a0, 0x120($t4)
/* 28DEC 800385EC 21506000 */  addu       $t2, $v1, $zero
/* 28DF0 800385F0 04008594 */  lhu        $a1, 0x4($a0)
/* 28DF4 800385F4 00100224 */  addiu      $v0, $zero, 0x1000
/* 28DF8 800385F8 00A6C2AC */  sw         $v0, %lo(dummyanim)($a2)
/* 28DFC 800385FC 080065AC */  sw         $a1, 0x8($v1)
.L80038600:
/* 28E00 80038600 06006011 */  beqz       $t3, .L8003861C
/* 28E04 80038604 0A80063C */   lui       $a2, %hi(dummyanim)
/* 28E08 80038608 0000628D */  lw         $v0, 0x0($t3)
/* 28E0C 8003860C 00000000 */  nop
/* 28E10 80038610 0010422C */  sltiu      $v0, $v0, 0x1000
/* 28E14 80038614 0A004010 */  beqz       $v0, .L80038640
/* 28E18 80038618 00000000 */   nop
.L8003861C:
/* 28E1C 8003861C 00A6C324 */  addiu      $v1, $a2, %lo(dummyanim)
/* 28E20 80038620 01000224 */  addiu      $v0, $zero, 0x1
/* 28E24 80038624 040062AC */  sw         $v0, 0x4($v1)
/* 28E28 80038628 2001848D */  lw         $a0, 0x120($t4)
/* 28E2C 8003862C 21586000 */  addu       $t3, $v1, $zero
/* 28E30 80038630 04008594 */  lhu        $a1, 0x4($a0)
/* 28E34 80038634 00100224 */  addiu      $v0, $zero, 0x1000
/* 28E38 80038638 00A6C2AC */  sw         $v0, %lo(dummyanim)($a2)
/* 28E3C 8003863C 080065AC */  sw         $a1, 0x8($v1)
.L80038640:
/* 28E40 80038640 2800448E */  lw         $a0, 0x28($s2)
/* 28E44 80038644 00000000 */  nop
/* 28E48 80038648 01008230 */  andi       $v0, $a0, 0x1
/* 28E4C 8003864C B7004010 */  beqz       $v0, .L8003892C
/* 28E50 80038650 21288000 */   addu      $a1, $a0, $zero
/* 28E54 80038654 2000428E */  lw         $v0, 0x20($s2)
/* 28E58 80038658 00000000 */  nop
/* 28E5C 8003865C 61004010 */  beqz       $v0, .L800387E4
/* 28E60 80038660 00000000 */   nop
/* 28E64 80038664 0400508E */  lw         $s0, 0x4($s2)
/* 28E68 80038668 2400428E */  lw         $v0, 0x24($s2)
/* 28E6C 8003866C 00000000 */  nop
/* 28E70 80038670 21800202 */  addu       $s0, $s0, $v0
/* 28E74 80038674 0001022A */  slti       $v0, $s0, 0x100
/* 28E78 80038678 34004014 */  bnez       $v0, .L8003874C
/* 28E7C 8003867C 0001032A */   slti      $v1, $s0, 0x100
/* 28E80 80038680 0400A230 */  andi       $v0, $a1, 0x4
/* 28E84 80038684 13004010 */  beqz       $v0, .L800386D4
/* 28E88 80038688 2120E000 */   addu      $a0, $a3, $zero
/* 28E8C 8003868C 1000AAAF */  sw         $t2, 0x10($sp)
/* 28E90 80038690 0800438E */  lw         $v1, 0x8($s2)
/* 28E94 80038694 00010224 */  addiu      $v0, $zero, 0x100
/* 28E98 80038698 1C00A2AF */  sw         $v0, 0x1C($sp)
/* 28E9C 8003869C 031A0300 */  sra        $v1, $v1, 8
/* 28EA0 800386A0 1400A3AF */  sw         $v1, 0x14($sp)
/* 28EA4 800386A4 0C00428E */  lw         $v0, 0xC($s2)
/* 28EA8 800386A8 2001868D */  lw         $a2, 0x120($t4)
/* 28EAC 800386AC 03120200 */  sra        $v0, $v0, 8
/* 28EB0 800386B0 1800A2AF */  sw         $v0, 0x18($sp)
/* 28EB4 800386B4 5800C38C */  lw         $v1, 0x58($a2)
/* 28EB8 800386B8 2128A001 */  addu       $a1, $t5, $zero
/* 28EBC 800386BC 2000A3AF */  sw         $v1, 0x20($sp)
/* 28EC0 800386C0 5800C78C */  lw         $a3, 0x58($a2)
/* 28EC4 800386C4 F3DF000C */  jal        AnimateJointsAndFilterJoints
/* 28EC8 800386C8 2130C001 */   addu      $a2, $t6, $zero
/* 28ECC 800386CC C4E10008 */  j          .L80038710
/* 28ED0 800386D0 00000000 */   nop
.L800386D4:
/* 28ED4 800386D4 2128A001 */  addu       $a1, $t5, $zero
/* 28ED8 800386D8 2130C001 */  addu       $a2, $t6, $zero
/* 28EDC 800386DC 00010324 */  addiu      $v1, $zero, 0x100
/* 28EE0 800386E0 2001878D */  lw         $a3, 0x120($t4)
/* 28EE4 800386E4 0800428E */  lw         $v0, 0x8($s2)
/* 28EE8 800386E8 5800E88C */  lw         $t0, 0x58($a3)
/* 28EEC 800386EC 03120200 */  sra        $v0, $v0, 8
/* 28EF0 800386F0 1400A2AF */  sw         $v0, 0x14($sp)
/* 28EF4 800386F4 1800A2AF */  sw         $v0, 0x18($sp)
/* 28EF8 800386F8 1C00A3AF */  sw         $v1, 0x1C($sp)
/* 28EFC 800386FC 1000A8AF */  sw         $t0, 0x10($sp)
/* 28F00 80038700 5800E28C */  lw         $v0, 0x58($a3)
/* 28F04 80038704 21386001 */  addu       $a3, $t3, $zero
/* 28F08 80038708 F3DF000C */  jal        AnimateJointsAndFilterJoints
/* 28F0C 8003870C 2000A2AF */   sw        $v0, 0x20($sp)
.L80038710:
/* 28F10 80038710 82006012 */  beqz       $s3, .L8003891C
/* 28F14 80038714 00000000 */   nop
/* 28F18 80038718 1400438E */  lw         $v1, 0x14($s2)
/* 28F1C 8003871C 0C00448E */  lw         $a0, 0xC($s2)
/* 28F20 80038720 1C00458E */  lw         $a1, 0x1C($s2)
/* 28F24 80038724 2800428E */  lw         $v0, 0x28($s2)
/* 28F28 80038728 040040AE */  sw         $zero, 0x4($s2)
/* 28F2C 8003872C 200040AE */  sw         $zero, 0x20($s2)
/* 28F30 80038730 08004230 */  andi       $v0, $v0, 0x8
/* 28F34 80038734 100043AE */  sw         $v1, 0x10($s2)
/* 28F38 80038738 080044AE */  sw         $a0, 0x8($s2)
/* 28F3C 8003873C 77004010 */  beqz       $v0, .L8003891C
/* 28F40 80038740 0C0045AE */   sw        $a1, 0xC($s2)
/* 28F44 80038744 47E20008 */  j          .L8003891C
/* 28F48 80038748 280040AE */   sw        $zero, 0x28($s2)
.L8003874C:
/* 28F4C 8003874C 0400A230 */  andi       $v0, $a1, 0x4
/* 28F50 80038750 12004010 */  beqz       $v0, .L8003879C
/* 28F54 80038754 2120E000 */   addu      $a0, $a3, $zero
/* 28F58 80038758 0800438E */  lw         $v1, 0x8($s2)
/* 28F5C 8003875C 1000AAAF */  sw         $t2, 0x10($sp)
/* 28F60 80038760 1C00B0AF */  sw         $s0, 0x1C($sp)
/* 28F64 80038764 031A0300 */  sra        $v1, $v1, 8
/* 28F68 80038768 1400A3AF */  sw         $v1, 0x14($sp)
/* 28F6C 8003876C 0C00428E */  lw         $v0, 0xC($s2)
/* 28F70 80038770 2001868D */  lw         $a2, 0x120($t4)
/* 28F74 80038774 03120200 */  sra        $v0, $v0, 8
/* 28F78 80038778 1800A2AF */  sw         $v0, 0x18($sp)
/* 28F7C 8003877C 5800C38C */  lw         $v1, 0x58($a2)
/* 28F80 80038780 2128A001 */  addu       $a1, $t5, $zero
/* 28F84 80038784 2000A3AF */  sw         $v1, 0x20($sp)
/* 28F88 80038788 5800C78C */  lw         $a3, 0x58($a2)
/* 28F8C 8003878C F3DF000C */  jal        AnimateJointsAndFilterJoints
/* 28F90 80038790 2130C001 */   addu      $a2, $t6, $zero
/* 28F94 80038794 F5E10008 */  j          .L800387D4
/* 28F98 80038798 00000000 */   nop
.L8003879C:
/* 28F9C 8003879C 2128A001 */  addu       $a1, $t5, $zero
/* 28FA0 800387A0 2130C001 */  addu       $a2, $t6, $zero
/* 28FA4 800387A4 2001878D */  lw         $a3, 0x120($t4)
/* 28FA8 800387A8 0800428E */  lw         $v0, 0x8($s2)
/* 28FAC 800387AC 5800E38C */  lw         $v1, 0x58($a3)
/* 28FB0 800387B0 03120200 */  sra        $v0, $v0, 8
/* 28FB4 800387B4 1400A2AF */  sw         $v0, 0x14($sp)
/* 28FB8 800387B8 1800A2AF */  sw         $v0, 0x18($sp)
/* 28FBC 800387BC 1C00B0AF */  sw         $s0, 0x1C($sp)
/* 28FC0 800387C0 1000A3AF */  sw         $v1, 0x10($sp)
/* 28FC4 800387C4 5800E28C */  lw         $v0, 0x58($a3)
/* 28FC8 800387C8 21386001 */  addu       $a3, $t3, $zero
/* 28FCC 800387CC F3DF000C */  jal        AnimateJointsAndFilterJoints
/* 28FD0 800387D0 2000A2AF */   sw        $v0, 0x20($sp)
.L800387D4:
/* 28FD4 800387D4 51006012 */  beqz       $s3, .L8003891C
/* 28FD8 800387D8 00000000 */   nop
/* 28FDC 800387DC 47E20008 */  j          .L8003891C
/* 28FE0 800387E0 040050AE */   sw        $s0, 0x4($s2)
.L800387E4:
/* 28FE4 800387E4 0000438E */  lw         $v1, 0x0($s2)
/* 28FE8 800387E8 00000000 */  nop
/* 28FEC 800387EC 2C006004 */  bltz       $v1, .L800388A0
/* 28FF0 800387F0 00000000 */   nop
/* 28FF4 800387F4 0800508E */  lw         $s0, 0x8($s2)
/* 28FF8 800387F8 0C00518E */  lw         $s1, 0xC($s2)
/* 28FFC 800387FC 21800302 */  addu       $s0, $s0, $v1
/* 29000 80038800 2B101102 */  sltu       $v0, $s0, $s1
/* 29004 80038804 03004014 */  bnez       $v0, .L80038814
/* 29008 80038808 F0FF0224 */   addiu     $v0, $zero, -0x10
/* 2900C 8003880C 21802002 */  addu       $s0, $s1, $zero
/* 29010 80038810 1C00518E */  lw         $s1, 0x1C($s2)
.L80038814:
/* 29014 80038814 24100202 */  and        $v0, $s0, $v0
/* 29018 80038818 2B105100 */  sltu       $v0, $v0, $s1
/* 2901C 8003881C 0A004014 */  bnez       $v0, .L80038848
/* 29020 80038820 00010326 */   addiu     $v1, $s0, 0x100
/* 29024 80038824 21802002 */  addu       $s0, $s1, $zero
/* 29028 80038828 09006012 */  beqz       $s3, .L80038850
/* 2902C 8003882C 21402002 */   addu      $t0, $s1, $zero
/* 29030 80038830 0080023C */  lui        $v0, (0x80000000 >> 16)
/* 29034 80038834 25108200 */  or         $v0, $a0, $v0
/* 29038 80038838 FDFF0324 */  addiu      $v1, $zero, -0x3
/* 2903C 8003883C 24104300 */  and        $v0, $v0, $v1
/* 29040 80038840 14E20008 */  j          .L80038850
/* 29044 80038844 280042AE */   sw        $v0, 0x28($s2)
.L80038848:
/* 29048 80038848 00FF0224 */  addiu      $v0, $zero, -0x100
/* 2904C 8003884C 24406200 */  and        $t0, $v1, $v0
.L80038850:
/* 29050 80038850 2120E000 */  addu       $a0, $a3, $zero
/* 29054 80038854 2128A001 */  addu       $a1, $t5, $zero
/* 29058 80038858 2130C001 */  addu       $a2, $t6, $zero
/* 2905C 8003885C 02121000 */  srl        $v0, $s0, 8
/* 29060 80038860 021A0800 */  srl        $v1, $t0, 8
/* 29064 80038864 1000AAAF */  sw         $t2, 0x10($sp)
/* 29068 80038868 1400A2AF */  sw         $v0, 0x14($sp)
/* 2906C 8003886C 1800A3AF */  sw         $v1, 0x18($sp)
/* 29070 80038870 2001878D */  lw         $a3, 0x120($t4)
/* 29074 80038874 FF000232 */  andi       $v0, $s0, 0xFF
/* 29078 80038878 1C00A2AF */  sw         $v0, 0x1C($sp)
/* 2907C 8003887C 5800E38C */  lw         $v1, 0x58($a3)
/* 29080 80038880 21386001 */  addu       $a3, $t3, $zero
/* 29084 80038884 F3DF000C */  jal        AnimateJointsAndFilterJoints
/* 29088 80038888 2000A3AF */   sw        $v1, 0x20($sp)
/* 2908C 8003888C 23006012 */  beqz       $s3, .L8003891C
/* 29090 80038890 00000000 */   nop
/* 29094 80038894 080050AE */  sw         $s0, 0x8($s2)
/* 29098 80038898 47E20008 */  j          .L8003891C
/* 2909C 8003889C 0C0051AE */   sw        $s1, 0xC($s2)
.L800388A0:
/* 290A0 800388A0 0800428E */  lw         $v0, 0x8($s2)
/* 290A4 800388A4 00000000 */  nop
/* 290A8 800388A8 21104300 */  addu       $v0, $v0, $v1
/* 290AC 800388AC 04004104 */  bgez       $v0, .L800388C0
/* 290B0 800388B0 080042AE */   sw        $v0, 0x8($s2)
/* 290B4 800388B4 1C00428E */  lw         $v0, 0x1C($s2)
/* 290B8 800388B8 00000000 */  nop
/* 290BC 800388BC 080042AE */  sw         $v0, 0x8($s2)
.L800388C0:
/* 290C0 800388C0 0800428E */  lw         $v0, 0x8($s2)
/* 290C4 800388C4 00FF0324 */  addiu      $v1, $zero, -0x100
/* 290C8 800388C8 24484300 */  and        $t1, $v0, $v1
/* 290CC 800388CC 04002015 */  bnez       $t1, .L800388E0
/* 290D0 800388D0 00FF4224 */   addiu     $v0, $v0, -0x100
/* 290D4 800388D4 1C00428E */  lw         $v0, 0x1C($s2)
/* 290D8 800388D8 39E20008 */  j          .L800388E4
/* 290DC 800388DC 24404300 */   and       $t0, $v0, $v1
.L800388E0:
/* 290E0 800388E0 24404300 */  and        $t0, $v0, $v1
.L800388E4:
/* 290E4 800388E4 2120E000 */  addu       $a0, $a3, $zero
/* 290E8 800388E8 2128A001 */  addu       $a1, $t5, $zero
/* 290EC 800388EC 2130C001 */  addu       $a2, $t6, $zero
/* 290F0 800388F0 02120900 */  srl        $v0, $t1, 8
/* 290F4 800388F4 1000AAAF */  sw         $t2, 0x10($sp)
/* 290F8 800388F8 1400A2AF */  sw         $v0, 0x14($sp)
/* 290FC 800388FC 2001838D */  lw         $v1, 0x120($t4)
/* 29100 80038900 02120800 */  srl        $v0, $t0, 8
/* 29104 80038904 1800A2AF */  sw         $v0, 0x18($sp)
/* 29108 80038908 1C00A0AF */  sw         $zero, 0x1C($sp)
/* 2910C 8003890C 5800628C */  lw         $v0, 0x58($v1)
/* 29110 80038910 21386001 */  addu       $a3, $t3, $zero
/* 29114 80038914 F3DF000C */  jal        AnimateJointsAndFilterJoints
/* 29118 80038918 2000A2AF */   sw        $v0, 0x20($sp)
.L8003891C:
/* 2911C 8003891C 0800428E */  lw         $v0, 0x8($s2)
/* 29120 80038920 00000000 */  nop
/* 29124 80038924 03120200 */  sra        $v0, $v0, 8
/* 29128 80038928 5C1482AF */  sw         $v0, %gp_rel(frameinjoints)($gp)
.L8003892C:
/* 2912C 8003892C 3800BF8F */  lw         $ra, 0x38($sp)
/* 29130 80038930 3400B38F */  lw         $s3, 0x34($sp)
/* 29134 80038934 3000B28F */  lw         $s2, 0x30($sp)
/* 29138 80038938 2C00B18F */  lw         $s1, 0x2C($sp)
/* 2913C 8003893C 2800B08F */  lw         $s0, 0x28($sp)
/* 29140 80038940 0800E003 */  jr         $ra
/* 29144 80038944 4000BD27 */   addiu     $sp, $sp, 0x40
.size AnimateAndFilterStream, . - AnimateAndFilterStream
