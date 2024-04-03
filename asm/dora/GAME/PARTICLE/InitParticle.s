.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel InitParticle
/* 20778 8002FF78 A0FFBD27 */  addiu      $sp, $sp, -0x60
/* 2077C 8002FF7C 5400B7AF */  sw         $s7, 0x54($sp)
/* 20780 8002FF80 21B88000 */  addu       $s7, $a0, $zero
/* 20784 8002FF84 5C00BFAF */  sw         $ra, 0x5C($sp)
/* 20788 8002FF88 5800BEAF */  sw         $fp, 0x58($sp)
/* 2078C 8002FF8C 5000B6AF */  sw         $s6, 0x50($sp)
/* 20790 8002FF90 4C00B5AF */  sw         $s5, 0x4C($sp)
/* 20794 8002FF94 4800B4AF */  sw         $s4, 0x48($sp)
/* 20798 8002FF98 4400B3AF */  sw         $s3, 0x44($sp)
/* 2079C 8002FF9C 4000B2AF */  sw         $s2, 0x40($sp)
/* 207A0 8002FFA0 3C00B1AF */  sw         $s1, 0x3C($sp)
/* 207A4 8002FFA4 3800B0AF */  sw         $s0, 0x38($sp)
/* 207A8 8002FFA8 6400A5AF */  sw         $a1, 0x64($sp)
/* 207AC 8002FFAC 6800A6AF */  sw         $a2, 0x68($sp)
/* 207B0 8002FFB0 4000F68E */  lw         $s6, 0x40($s7)
/* 207B4 8002FFB4 6C00A7AF */  sw         $a3, 0x6C($sp)
/* 207B8 8002FFB8 2400E5AE */  sw         $a1, 0x24($s7)
/* 207BC 8002FFBC 6800A28F */  lw         $v0, 0x68($sp)
/* 207C0 8002FFC0 00000000 */  nop
/* 207C4 8002FFC4 2800E2AE */  sw         $v0, 0x28($s7)
/* 207C8 8002FFC8 6C00A38F */  lw         $v1, 0x6C($sp)
/* 207CC 8002FFCC C8000224 */  addiu      $v0, $zero, 0xC8
/* 207D0 8002FFD0 4A00E2A6 */  sh         $v0, 0x4A($s7)
/* 207D4 8002FFD4 2C00E3AE */  sw         $v1, 0x2C($s7)
/* 207D8 8002FFD8 7800A28F */  lw         $v0, 0x78($sp)
/* 207DC 8002FFDC 3000E38E */  lw         $v1, 0x30($s7)
/* 207E0 8002FFE0 0C00E2AE */  sw         $v0, 0xC($s7)
/* 207E4 8002FFE4 1000A3AF */  sw         $v1, 0x10($sp)
/* 207E8 8002FFE8 3400E28E */  lw         $v0, 0x34($s7)
/* 207EC 8002FFEC 00000000 */  nop
/* 207F0 8002FFF0 1400A2AF */  sw         $v0, 0x14($sp)
/* 207F4 8002FFF4 3C00E38E */  lw         $v1, 0x3C($s7)
/* 207F8 8002FFF8 3800FE8E */  lw         $fp, 0x38($s7)
/* 207FC 8002FFFC 0400E28E */  lw         $v0, 0x4($s7)
/* 20800 80030000 00000000 */  nop
/* 20804 80030004 04004014 */  bnez       $v0, .L80030018
/* 20808 80030008 1800A3AF */   sw        $v1, 0x18($sp)
/* 2080C 8003000C 6400A0AF */  sw         $zero, 0x64($sp)
/* 20810 80030010 6800A0AF */  sw         $zero, 0x68($sp)
/* 20814 80030014 6C00A0AF */  sw         $zero, 0x6C($sp)
.L80030018:
/* 20818 80030018 0800E28E */  lw         $v0, 0x8($s7)
/* 2081C 8003001C 00000000 */  nop
/* 20820 80030020 BA004018 */  blez       $v0, .L8003030C
/* 20824 80030024 21880000 */   addu      $s1, $zero, $zero
.L80030028:
/* 20828 80030028 D140010C */  jal        u32Random
/* 2082C 8003002C FF0F0424 */   addiu     $a0, $zero, 0xFFF
/* 20830 80030030 21804000 */  addu       $s0, $v0, $zero
/* 20834 80030034 D140010C */  jal        u32Random
/* 20838 80030038 FF0F0424 */   addiu     $a0, $zero, 0xFFF
/* 2083C 8003003C 21984000 */  addu       $s3, $v0, $zero
/* 20840 80030040 1000A28F */  lw         $v0, 0x10($sp)
/* 20844 80030044 1400A38F */  lw         $v1, 0x14($sp)
/* 20848 80030048 00000000 */  nop
/* 2084C 8003004C 29004310 */  beq        $v0, $v1, .L800300F4
/* 20850 80030050 00000000 */   nop
/* 20854 80030054 6400A28F */  lw         $v0, 0x64($sp)
/* 20858 80030058 6800A38F */  lw         $v1, 0x68($sp)
/* 2085C 8003005C 01003126 */  addiu      $s1, $s1, 0x1
/* 20860 80030060 2000B1AF */  sw         $s1, 0x20($sp)
/* 20864 80030064 00120200 */  sll        $v0, $v0, 8
/* 20868 80030068 2400A2AF */  sw         $v0, 0x24($sp)
/* 2086C 8003006C 6C00A28F */  lw         $v0, 0x6C($sp)
/* 20870 80030070 001A0300 */  sll        $v1, $v1, 8
/* 20874 80030074 2800A3AF */  sw         $v1, 0x28($sp)
/* 20878 80030078 1C00C326 */  addiu      $v1, $s6, 0x1C
/* 2087C 8003007C 3400A3AF */  sw         $v1, 0x34($sp)
/* 20880 80030080 7400C326 */  addiu      $v1, $s6, 0x74
/* 20884 80030084 1C00A3AF */  sw         $v1, 0x1C($sp)
/* 20888 80030088 1000A38F */  lw         $v1, 0x10($sp)
/* 2088C 8003008C 00120200 */  sll        $v0, $v0, 8
/* 20890 80030090 3000A2AF */  sw         $v0, 0x30($sp)
/* 20894 80030094 4400C226 */  addiu      $v0, $s6, 0x44
/* 20898 80030098 2C00A2AF */  sw         $v0, 0x2C($sp)
/* 2089C 8003009C 2A100302 */  slt        $v0, $s0, $v1
/* 208A0 800300A0 06004014 */  bnez       $v0, .L800300BC
/* 208A4 800300A4 00000000 */   nop
/* 208A8 800300A8 1400A38F */  lw         $v1, 0x14($sp)
/* 208AC 800300AC 00000000 */  nop
/* 208B0 800300B0 2A107000 */  slt        $v0, $v1, $s0
/* 208B4 800300B4 21004010 */  beqz       $v0, .L8003013C
/* 208B8 800300B8 00000000 */   nop
.L800300BC:
/* 208BC 800300BC D140010C */  jal        u32Random
/* 208C0 800300C0 FF0F0424 */   addiu     $a0, $zero, 0xFFF
/* 208C4 800300C4 1000A38F */  lw         $v1, 0x10($sp)
/* 208C8 800300C8 21804000 */  addu       $s0, $v0, $zero
/* 208CC 800300CC 2A100302 */  slt        $v0, $s0, $v1
/* 208D0 800300D0 FAFF4014 */  bnez       $v0, .L800300BC
/* 208D4 800300D4 00000000 */   nop
/* 208D8 800300D8 1400A38F */  lw         $v1, 0x14($sp)
/* 208DC 800300DC 00000000 */  nop
/* 208E0 800300E0 2A107000 */  slt        $v0, $v1, $s0
/* 208E4 800300E4 F5FF4014 */  bnez       $v0, .L800300BC
/* 208E8 800300E8 00000000 */   nop
/* 208EC 800300EC 4FC00008 */  j          .L8003013C
/* 208F0 800300F0 00000000 */   nop
.L800300F4:
/* 208F4 800300F4 1000B08F */  lw         $s0, 0x10($sp)
/* 208F8 800300F8 6400A28F */  lw         $v0, 0x64($sp)
/* 208FC 800300FC 6800A38F */  lw         $v1, 0x68($sp)
/* 20900 80030100 01003126 */  addiu      $s1, $s1, 0x1
/* 20904 80030104 2000B1AF */  sw         $s1, 0x20($sp)
/* 20908 80030108 00120200 */  sll        $v0, $v0, 8
/* 2090C 8003010C 2400A2AF */  sw         $v0, 0x24($sp)
/* 20910 80030110 6C00A28F */  lw         $v0, 0x6C($sp)
/* 20914 80030114 001A0300 */  sll        $v1, $v1, 8
/* 20918 80030118 2800A3AF */  sw         $v1, 0x28($sp)
/* 2091C 8003011C 1C00C326 */  addiu      $v1, $s6, 0x1C
/* 20920 80030120 3400A3AF */  sw         $v1, 0x34($sp)
/* 20924 80030124 7400C326 */  addiu      $v1, $s6, 0x74
/* 20928 80030128 1C00A3AF */  sw         $v1, 0x1C($sp)
/* 2092C 8003012C 00120200 */  sll        $v0, $v0, 8
/* 20930 80030130 3000A2AF */  sw         $v0, 0x30($sp)
/* 20934 80030134 4400C226 */  addiu      $v0, $s6, 0x44
/* 20938 80030138 2C00A2AF */  sw         $v0, 0x2C($sp)
.L8003013C:
/* 2093C 8003013C 1800A28F */  lw         $v0, 0x18($sp)
/* 20940 80030140 00000000 */  nop
/* 20944 80030144 1500C213 */  beq        $fp, $v0, .L8003019C
/* 20948 80030148 2A107E02 */   slt       $v0, $s3, $fp
/* 2094C 8003014C 06004014 */  bnez       $v0, .L80030168
/* 20950 80030150 00000000 */   nop
/* 20954 80030154 1800A38F */  lw         $v1, 0x18($sp)
/* 20958 80030158 00000000 */  nop
/* 2095C 8003015C 2A107300 */  slt        $v0, $v1, $s3
/* 20960 80030160 0F004010 */  beqz       $v0, .L800301A0
/* 20964 80030164 00000000 */   nop
.L80030168:
/* 20968 80030168 D140010C */  jal        u32Random
/* 2096C 8003016C FF0F0424 */   addiu     $a0, $zero, 0xFFF
/* 20970 80030170 21984000 */  addu       $s3, $v0, $zero
/* 20974 80030174 2A107E02 */  slt        $v0, $s3, $fp
/* 20978 80030178 FBFF4014 */  bnez       $v0, .L80030168
/* 2097C 8003017C 00000000 */   nop
/* 20980 80030180 1800A38F */  lw         $v1, 0x18($sp)
/* 20984 80030184 00000000 */  nop
/* 20988 80030188 2A107300 */  slt        $v0, $v1, $s3
/* 2098C 8003018C F6FF4014 */  bnez       $v0, .L80030168
/* 20990 80030190 00000000 */   nop
/* 20994 80030194 68C00008 */  j          .L800301A0
/* 20998 80030198 00000000 */   nop
.L8003019C:
/* 2099C 8003019C 2198C003 */  addu       $s3, $fp, $zero
.L800301A0:
/* 209A0 800301A0 7BEB010C */  jal        rcos
/* 209A4 800301A4 21200002 */   addu      $a0, $s0, $zero
/* 209A8 800301A8 21200002 */  addu       $a0, $s0, $zero
/* 209AC 800301AC 47EB010C */  jal        rsin
/* 209B0 800301B0 21904000 */   addu      $s2, $v0, $zero
/* 209B4 800301B4 21206002 */  addu       $a0, $s3, $zero
/* 209B8 800301B8 7BEB010C */  jal        rcos
/* 209BC 800301BC 21884000 */   addu      $s1, $v0, $zero
/* 209C0 800301C0 21206002 */  addu       $a0, $s3, $zero
/* 209C4 800301C4 47EB010C */  jal        rsin
/* 209C8 800301C8 21804000 */   addu      $s0, $v0, $zero
/* 209CC 800301CC 18003002 */  mult       $s1, $s0
/* 209D0 800301D0 12880000 */  mflo       $s1
/* 209D4 800301D4 00000000 */  nop
/* 209D8 800301D8 00000000 */  nop
/* 209DC 800301DC 18005002 */  mult       $s2, $s0
/* 209E0 800301E0 12900000 */  mflo       $s2
/* 209E4 800301E4 7000A38F */  lw         $v1, 0x70($sp)
/* 209E8 800301E8 038B1100 */  sra        $s1, $s1, 12
/* 209EC 800301EC 18002302 */  mult       $s1, $v1
/* 209F0 800301F0 12A80000 */  mflo       $s5
/* 209F4 800301F4 21A04000 */  addu       $s4, $v0, $zero
/* 209F8 800301F8 00000000 */  nop
/* 209FC 800301FC 18008302 */  mult       $s4, $v1
/* 20A00 80030200 12980000 */  mflo       $s3
/* 20A04 80030204 03931200 */  sra        $s2, $s2, 12
/* 20A08 80030208 00000000 */  nop
/* 20A0C 8003020C 18004302 */  mult       $s2, $v1
/* 20A10 80030210 12800000 */  mflo       $s0
/* 20A14 80030214 7400A28F */  lw         $v0, 0x74($sp)
/* 20A18 80030218 00000000 */  nop
/* 20A1C 8003021C 18002202 */  mult       $s1, $v0
/* 20A20 80030220 12880000 */  mflo       $s1
/* 20A24 80030224 00000000 */  nop
/* 20A28 80030228 00000000 */  nop
/* 20A2C 8003022C 18008202 */  mult       $s4, $v0
/* 20A30 80030230 12A00000 */  mflo       $s4
/* 20A34 80030234 7C00A48F */  lw         $a0, 0x7C($sp)
/* 20A38 80030238 00000000 */  nop
/* 20A3C 8003023C 18004202 */  mult       $s2, $v0
/* 20A40 80030240 03A91500 */  sra        $s5, $s5, 4
/* 20A44 80030244 2800A38F */  lw         $v1, 0x28($sp)
/* 20A48 80030248 03991300 */  sra        $s3, $s3, 4
/* 20A4C 8003024C 21987300 */  addu       $s3, $v1, $s3
/* 20A50 80030250 03811000 */  sra        $s0, $s0, 4
/* 20A54 80030254 2400A28F */  lw         $v0, 0x24($sp)
/* 20A58 80030258 03891100 */  sra        $s1, $s1, 4
/* 20A5C 8003025C 21A85500 */  addu       $s5, $v0, $s5
/* 20A60 80030260 3000A28F */  lw         $v0, 0x30($sp)
/* 20A64 80030264 03A11400 */  sra        $s4, $s4, 4
/* 20A68 80030268 21805000 */  addu       $s0, $v0, $s0
/* 20A6C 8003026C 12900000 */  mflo       $s2
/* 20A70 80030270 D140010C */  jal        u32Random
/* 20A74 80030274 03911200 */   sra       $s2, $s2, 4
/* 20A78 80030278 01000324 */  addiu      $v1, $zero, 0x1
/* 20A7C 8003027C 0000C3A6 */  sh         $v1, 0x0($s6)
/* 20A80 80030280 0400D5AE */  sw         $s5, 0x4($s6)
/* 20A84 80030284 0800D3AE */  sw         $s3, 0x8($s6)
/* 20A88 80030288 0C00D0AE */  sw         $s0, 0xC($s6)
/* 20A8C 8003028C 1000D1AE */  sw         $s1, 0x10($s6)
/* 20A90 80030290 1400D4AE */  sw         $s4, 0x14($s6)
/* 20A94 80030294 1800D2AE */  sw         $s2, 0x18($s6)
/* 20A98 80030298 7800A38F */  lw         $v1, 0x78($sp)
/* 20A9C 8003029C 00000000 */  nop
/* 20AA0 800302A0 23106200 */  subu       $v0, $v1, $v0
/* 20AA4 800302A4 0200C2A6 */  sh         $v0, 0x2($s6)
/* 20AA8 800302A8 4C00E392 */  lbu        $v1, 0x4C($s7)
/* 20AAC 800302AC 3400A58F */  lw         $a1, 0x34($sp)
/* 20AB0 800302B0 00000000 */  nop
/* 20AB4 800302B4 0400A3A0 */  sb         $v1, 0x4($a1)
/* 20AB8 800302B8 4D00E292 */  lbu        $v0, 0x4D($s7)
/* 20ABC 800302BC 00000000 */  nop
/* 20AC0 800302C0 0500A2A0 */  sb         $v0, 0x5($a1)
/* 20AC4 800302C4 4E00E392 */  lbu        $v1, 0x4E($s7)
/* 20AC8 800302C8 00000000 */  nop
/* 20ACC 800302CC 0600A3A0 */  sb         $v1, 0x6($a1)
/* 20AD0 800302D0 4C00E492 */  lbu        $a0, 0x4C($s7)
/* 20AD4 800302D4 2C00A58F */  lw         $a1, 0x2C($sp)
/* 20AD8 800302D8 00000000 */  nop
/* 20ADC 800302DC 0400A4A0 */  sb         $a0, 0x4($a1)
/* 20AE0 800302E0 4D00E292 */  lbu        $v0, 0x4D($s7)
/* 20AE4 800302E4 00000000 */  nop
/* 20AE8 800302E8 0500A2A0 */  sb         $v0, 0x5($a1)
/* 20AEC 800302EC 4E00E392 */  lbu        $v1, 0x4E($s7)
/* 20AF0 800302F0 2000B18F */  lw         $s1, 0x20($sp)
/* 20AF4 800302F4 0600A3A0 */  sb         $v1, 0x6($a1)
/* 20AF8 800302F8 0800E28E */  lw         $v0, 0x8($s7)
/* 20AFC 800302FC 1C00B68F */  lw         $s6, 0x1C($sp)
/* 20B00 80030300 2A102202 */  slt        $v0, $s1, $v0
/* 20B04 80030304 48FF4014 */  bnez       $v0, .L80030028
/* 20B08 80030308 00000000 */   nop
.L8003030C:
/* 20B0C 8003030C 5C00BF8F */  lw         $ra, 0x5C($sp)
/* 20B10 80030310 5800BE8F */  lw         $fp, 0x58($sp)
/* 20B14 80030314 5400B78F */  lw         $s7, 0x54($sp)
/* 20B18 80030318 5000B68F */  lw         $s6, 0x50($sp)
/* 20B1C 8003031C 4C00B58F */  lw         $s5, 0x4C($sp)
/* 20B20 80030320 4800B48F */  lw         $s4, 0x48($sp)
/* 20B24 80030324 4400B38F */  lw         $s3, 0x44($sp)
/* 20B28 80030328 4000B28F */  lw         $s2, 0x40($sp)
/* 20B2C 8003032C 3C00B18F */  lw         $s1, 0x3C($sp)
/* 20B30 80030330 3800B08F */  lw         $s0, 0x38($sp)
/* 20B34 80030334 0800E003 */  jr         $ra
/* 20B38 80030338 6000BD27 */   addiu     $sp, $sp, 0x60
.size InitParticle, . - InitParticle
