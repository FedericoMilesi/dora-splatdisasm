.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

/* Handwritten function */
glabel DrawCelDepth2
/* 50A0C 8006020C F8FFBD27 */  addiu      $sp, $sp, -0x8
/* 50A10 80060210 0000B0AF */  sw         $s0, 0x0($sp)
/* 50A14 80060214 801F103C */  lui        $s0, (0x1F800040 >> 16)
/* 50A18 80060218 40001036 */  ori        $s0, $s0, (0x1F800040 & 0xFFFF)
/* 50A1C 8006021C 801F0B3C */  lui        $t3, (0x1F80005C >> 16)
/* 50A20 80060220 0400B1AF */  sw         $s1, 0x4($sp)
/* 50A24 80060224 3800E28C */  lw         $v0, 0x38($a3)
/* 50A28 80060228 3C00E38C */  lw         $v1, 0x3C($a3)
/* 50A2C 8006022C 2000AE8F */  lw         $t6, 0x20($sp)
/* 50A30 80060230 4000E48C */  lw         $a0, 0x40($a3)
/* 50A34 80060234 1C00B98F */  lw         $t9, 0x1C($sp)
/* 50A38 80060238 21104300 */  addu       $v0, $v0, $v1
/* 50A3C 8006023C 21104400 */  addu       $v0, $v0, $a0
/* 50A40 80060240 4400E38C */  lw         $v1, 0x44($a3)
/* 50A44 80060244 4800E48C */  lw         $a0, 0x48($a3)
/* 50A48 80060248 21104300 */  addu       $v0, $v0, $v1
/* 50A4C 8006024C 21104400 */  addu       $v0, $v0, $a0
/* 50A50 80060250 4C00E38C */  lw         $v1, 0x4C($a3)
/* 50A54 80060254 5000E48C */  lw         $a0, 0x50($a3)
/* 50A58 80060258 21104300 */  addu       $v0, $v0, $v1
/* 50A5C 8006025C 5400E38C */  lw         $v1, 0x54($a3)
/* 50A60 80060260 21104400 */  addu       $v0, $v0, $a0
/* 50A64 80060264 21284300 */  addu       $a1, $v0, $v1
/* 50A68 80060268 FA01A010 */  beqz       $a1, .L80060A54
/* 50A6C 8006026C 5C006B35 */   ori       $t3, $t3, (0x1F80005C & 0xFFFF)
/* 50A70 80060270 09800F3C */  lui        $t7, %hi(DistBuf)
/* 50A74 80060274 9057EF8D */  lw         $t7, %lo(DistBuf)($t7)
/* 50A78 80060278 1800A28F */  lw         $v0, 0x18($sp)
/* 50A7C 8006027C 0980043C */  lui        $a0, %hi(CellAttributesPtr)
/* 50A80 80060280 6C50848C */  lw         $a0, %lo(CellAttributesPtr)($a0)
/* 50A84 80060284 FF034230 */  andi       $v0, $v0, 0x3FF
/* 50A88 80060288 80180200 */  sll        $v1, $v0, 2
/* 50A8C 8006028C 21186200 */  addu       $v1, $v1, $v0
/* 50A90 80060290 C0180300 */  sll        $v1, $v1, 3
/* 50A94 80060294 21208300 */  addu       $a0, $a0, $v1
/* 50A98 80060298 0100A224 */  addiu      $v0, $a1, 0x1
/* 50A9C 8006029C 000082AC */  sw         $v0, 0x0($a0)
/* 50AA0 800602A0 3800E28C */  lw         $v0, 0x38($a3)
/* 50AA4 800602A4 0800E88C */  lw         $t0, 0x8($a3)
/* 50AA8 800602A8 38004018 */  blez       $v0, .L8006038C
/* 50AAC 800602AC 00000000 */   nop
/* 50AB0 800602B0 FF000A3C */  lui        $t2, (0xFFFFFF >> 16)
/* 50AB4 800602B4 FFFF4A35 */  ori        $t2, $t2, (0xFFFFFF & 0xFFFF)
/* 50AB8 800602B8 0004183C */  lui        $t8, (0x4000000 >> 16)
/* 50ABC 800602BC 21604000 */  addu       $t4, $v0, $zero
.L800602C0:
/* 50AC0 800602C0 14000295 */  lhu        $v0, 0x14($t0)
/* 50AC4 800602C4 0000CD91 */  lbu        $t5, 0x0($t6)
/* 50AC8 800602C8 80200200 */  sll        $a0, $v0, 2
/* 50ACC 800602CC 21108F00 */  addu       $v0, $a0, $t7
/* 50AD0 800602D0 0000428C */  lw         $v0, 0x0($v0)
/* 50AD4 800602D4 00000000 */  nop
/* 50AD8 800602D8 28004228 */  slti       $v0, $v0, 0x28
/* 50ADC 800602DC 28004014 */  bnez       $v0, .L80060380
/* 50AE0 800602E0 0100CE25 */   addiu     $t6, $t6, 0x1
/* 50AE4 800602E4 21486401 */  addu       $t1, $t3, $a0
/* 50AE8 800602E8 16000395 */  lhu        $v1, 0x16($t0)
/* 50AEC 800602EC 18000295 */  lhu        $v0, 0x18($t0)
/* 50AF0 800602F0 0000248D */  lw         $a0, 0x0($t1)
/* 50AF4 800602F4 80180300 */  sll        $v1, $v1, 2
/* 50AF8 800602F8 21306301 */  addu       $a2, $t3, $v1
/* 50AFC 800602FC 80100200 */  sll        $v0, $v0, 2
/* 50B00 80060300 21286201 */  addu       $a1, $t3, $v0
/* 50B04 80060304 0000C38C */  lw         $v1, 0x0($a2)
/* 50B08 80060308 0000A28C */  lw         $v0, 0x0($a1)
/* 50B0C 8006030C 00608448 */  mtc2       $a0, $12 /* handwritten instruction */
/* 50B10 80060310 00708248 */  mtc2       $v0, $14 /* handwritten instruction */
/* 50B14 80060314 00688348 */  mtc2       $v1, $13 /* handwritten instruction */
/* 50B18 80060318 00000000 */  nop
/* 50B1C 8006031C 00000000 */  nop
/* 50B20 80060320 0600404B */  NCLIP
/* 50B24 80060324 000018EA */  swc2       $24, 0x0($s0)
/* 50B28 80060328 801F023C */  lui        $v0, (0x1F800040 >> 16)
/* 50B2C 8006032C 4000428C */  lw         $v0, (0x1F800040 & 0xFFFF)($v0)
/* 50B30 80060330 00000000 */  nop
/* 50B34 80060334 12004104 */  bgez       $v0, .L80060380
/* 50B38 80060338 00000000 */   nop
/* 50B3C 8006033C 08000CE9 */  swc2       $12, 0x8($t0)
/* 50B40 80060340 0C000DE9 */  swc2       $13, 0xC($t0)
/* 50B44 80060344 10000EE9 */  swc2       $14, 0x10($t0)
/* 50B48 80060348 C0100D00 */  sll        $v0, $t5, 3
/* 50B4C 8006034C 21285900 */  addu       $a1, $v0, $t9
/* 50B50 80060350 0000A48C */  lw         $a0, 0x0($a1)
/* 50B54 80060354 00000000 */  nop
/* 50B58 80060358 05008010 */  beqz       $a0, .L80060370
/* 50B5C 8006035C 21184000 */   addu      $v1, $v0, $zero
/* 50B60 80060360 24108A00 */  and        $v0, $a0, $t2
/* 50B64 80060364 25105800 */  or         $v0, $v0, $t8
/* 50B68 80060368 DE800108 */  j          .L80060378
/* 50B6C 8006036C 000002AD */   sw        $v0, 0x0($t0)
.L80060370:
/* 50B70 80060370 000018AD */  sw         $t8, 0x0($t0)
/* 50B74 80060374 0400A8AC */  sw         $t0, 0x4($a1)
.L80060378:
/* 50B78 80060378 21107900 */  addu       $v0, $v1, $t9
/* 50B7C 8006037C 000048AC */  sw         $t0, 0x0($v0)
.L80060380:
/* 50B80 80060380 FFFF8C25 */  addiu      $t4, $t4, -0x1
/* 50B84 80060384 CEFF8015 */  bnez       $t4, .L800602C0
/* 50B88 80060388 1C000825 */   addiu     $t0, $t0, 0x1C
.L8006038C:
/* 50B8C 8006038C 801F0B3C */  lui        $t3, (0x1F80005C >> 16)
/* 50B90 80060390 09800F3C */  lui        $t7, %hi(DistBuf)
/* 50B94 80060394 9057EF8D */  lw         $t7, %lo(DistBuf)($t7)
/* 50B98 80060398 3C00E28C */  lw         $v0, 0x3C($a3)
/* 50B9C 8006039C 0C00E88C */  lw         $t0, 0xC($a3)
/* 50BA0 800603A0 3C004018 */  blez       $v0, .L80060494
/* 50BA4 800603A4 5C006B35 */   ori       $t3, $t3, (0x1F80005C & 0xFFFF)
/* 50BA8 800603A8 FF00183C */  lui        $t8, (0xFFFFFF >> 16)
/* 50BAC 800603AC FFFF1837 */  ori        $t8, $t8, (0xFFFFFF & 0xFFFF)
/* 50BB0 800603B0 0005113C */  lui        $s1, (0x5000000 >> 16)
/* 50BB4 800603B4 21604000 */  addu       $t4, $v0, $zero
.L800603B8:
/* 50BB8 800603B8 18000295 */  lhu        $v0, 0x18($t0)
/* 50BBC 800603BC 0000CD91 */  lbu        $t5, 0x0($t6)
/* 50BC0 800603C0 80200200 */  sll        $a0, $v0, 2
/* 50BC4 800603C4 21108F00 */  addu       $v0, $a0, $t7
/* 50BC8 800603C8 0000428C */  lw         $v0, 0x0($v0)
/* 50BCC 800603CC 00000000 */  nop
/* 50BD0 800603D0 28004228 */  slti       $v0, $v0, 0x28
/* 50BD4 800603D4 2C004014 */  bnez       $v0, .L80060488
/* 50BD8 800603D8 0100CE25 */   addiu     $t6, $t6, 0x1
/* 50BDC 800603DC 21486401 */  addu       $t1, $t3, $a0
/* 50BE0 800603E0 1A000295 */  lhu        $v0, 0x1A($t0)
/* 50BE4 800603E4 1C000395 */  lhu        $v1, 0x1C($t0)
/* 50BE8 800603E8 0000248D */  lw         $a0, 0x0($t1)
/* 50BEC 800603EC 80100200 */  sll        $v0, $v0, 2
/* 50BF0 800603F0 21306201 */  addu       $a2, $t3, $v0
/* 50BF4 800603F4 80180300 */  sll        $v1, $v1, 2
/* 50BF8 800603F8 21286301 */  addu       $a1, $t3, $v1
/* 50BFC 800603FC 1E000295 */  lhu        $v0, 0x1E($t0)
/* 50C00 80060400 0000C38C */  lw         $v1, 0x0($a2)
/* 50C04 80060404 80100200 */  sll        $v0, $v0, 2
/* 50C08 80060408 21506201 */  addu       $t2, $t3, $v0
/* 50C0C 8006040C 0000A28C */  lw         $v0, 0x0($a1)
/* 50C10 80060410 00608448 */  mtc2       $a0, $12 /* handwritten instruction */
/* 50C14 80060414 00708248 */  mtc2       $v0, $14 /* handwritten instruction */
/* 50C18 80060418 00688348 */  mtc2       $v1, $13 /* handwritten instruction */
/* 50C1C 8006041C 00000000 */  nop
/* 50C20 80060420 00000000 */  nop
/* 50C24 80060424 0600404B */  NCLIP
/* 50C28 80060428 000018EA */  swc2       $24, 0x0($s0)
/* 50C2C 8006042C 801F023C */  lui        $v0, (0x1F800040 >> 16)
/* 50C30 80060430 4000428C */  lw         $v0, (0x1F800040 & 0xFFFF)($v0)
/* 50C34 80060434 00000000 */  nop
/* 50C38 80060438 13004104 */  bgez       $v0, .L80060488
/* 50C3C 8006043C 00000000 */   nop
/* 50C40 80060440 08000CE9 */  swc2       $12, 0x8($t0)
/* 50C44 80060444 0C000DE9 */  swc2       $13, 0xC($t0)
/* 50C48 80060448 10000EE9 */  swc2       $14, 0x10($t0)
/* 50C4C 8006044C C0180D00 */  sll        $v1, $t5, 3
/* 50C50 80060450 0000428D */  lw         $v0, 0x0($t2)
/* 50C54 80060454 21207900 */  addu       $a0, $v1, $t9
/* 50C58 80060458 140002AD */  sw         $v0, 0x14($t0)
/* 50C5C 8006045C 0000828C */  lw         $v0, 0x0($a0)
/* 50C60 80060460 00000000 */  nop
/* 50C64 80060464 04004010 */  beqz       $v0, .L80060478
/* 50C68 80060468 24105800 */   and       $v0, $v0, $t8
/* 50C6C 8006046C 25105100 */  or         $v0, $v0, $s1
/* 50C70 80060470 20810108 */  j          .L80060480
/* 50C74 80060474 000002AD */   sw        $v0, 0x0($t0)
.L80060478:
/* 50C78 80060478 000011AD */  sw         $s1, 0x0($t0)
/* 50C7C 8006047C 040088AC */  sw         $t0, 0x4($a0)
.L80060480:
/* 50C80 80060480 21107900 */  addu       $v0, $v1, $t9
/* 50C84 80060484 000048AC */  sw         $t0, 0x0($v0)
.L80060488:
/* 50C88 80060488 FFFF8C25 */  addiu      $t4, $t4, -0x1
/* 50C8C 8006048C CAFF8015 */  bnez       $t4, .L800603B8
/* 50C90 80060490 20000825 */   addiu     $t0, $t0, 0x20
.L80060494:
/* 50C94 80060494 801F0B3C */  lui        $t3, (0x1F80005C >> 16)
/* 50C98 80060498 09800F3C */  lui        $t7, %hi(DistBuf)
/* 50C9C 8006049C 9057EF8D */  lw         $t7, %lo(DistBuf)($t7)
/* 50CA0 800604A0 4000E28C */  lw         $v0, 0x40($a3)
/* 50CA4 800604A4 1000E88C */  lw         $t0, 0x10($a3)
/* 50CA8 800604A8 38004018 */  blez       $v0, .L8006058C
/* 50CAC 800604AC 5C006B35 */   ori       $t3, $t3, (0x1F80005C & 0xFFFF)
/* 50CB0 800604B0 FF000A3C */  lui        $t2, (0xFFFFFF >> 16)
/* 50CB4 800604B4 FFFF4A35 */  ori        $t2, $t2, (0xFFFFFF & 0xFFFF)
/* 50CB8 800604B8 0006183C */  lui        $t8, (0x6000000 >> 16)
/* 50CBC 800604BC 21604000 */  addu       $t4, $v0, $zero
.L800604C0:
/* 50CC0 800604C0 1C000295 */  lhu        $v0, 0x1C($t0)
/* 50CC4 800604C4 0000CD91 */  lbu        $t5, 0x0($t6)
/* 50CC8 800604C8 80200200 */  sll        $a0, $v0, 2
/* 50CCC 800604CC 21108F00 */  addu       $v0, $a0, $t7
/* 50CD0 800604D0 0000428C */  lw         $v0, 0x0($v0)
/* 50CD4 800604D4 00000000 */  nop
/* 50CD8 800604D8 28004228 */  slti       $v0, $v0, 0x28
/* 50CDC 800604DC 28004014 */  bnez       $v0, .L80060580
/* 50CE0 800604E0 0100CE25 */   addiu     $t6, $t6, 0x1
/* 50CE4 800604E4 21486401 */  addu       $t1, $t3, $a0
/* 50CE8 800604E8 1E000395 */  lhu        $v1, 0x1E($t0)
/* 50CEC 800604EC 20000295 */  lhu        $v0, 0x20($t0)
/* 50CF0 800604F0 0000248D */  lw         $a0, 0x0($t1)
/* 50CF4 800604F4 80180300 */  sll        $v1, $v1, 2
/* 50CF8 800604F8 21306301 */  addu       $a2, $t3, $v1
/* 50CFC 800604FC 80100200 */  sll        $v0, $v0, 2
/* 50D00 80060500 21286201 */  addu       $a1, $t3, $v0
/* 50D04 80060504 0000C38C */  lw         $v1, 0x0($a2)
/* 50D08 80060508 0000A28C */  lw         $v0, 0x0($a1)
/* 50D0C 8006050C 00608448 */  mtc2       $a0, $12 /* handwritten instruction */
/* 50D10 80060510 00708248 */  mtc2       $v0, $14 /* handwritten instruction */
/* 50D14 80060514 00688348 */  mtc2       $v1, $13 /* handwritten instruction */
/* 50D18 80060518 00000000 */  nop
/* 50D1C 8006051C 00000000 */  nop
/* 50D20 80060520 0600404B */  NCLIP
/* 50D24 80060524 000018EA */  swc2       $24, 0x0($s0)
/* 50D28 80060528 801F023C */  lui        $v0, (0x1F800040 >> 16)
/* 50D2C 8006052C 4000428C */  lw         $v0, (0x1F800040 & 0xFFFF)($v0)
/* 50D30 80060530 00000000 */  nop
/* 50D34 80060534 12004104 */  bgez       $v0, .L80060580
/* 50D38 80060538 00000000 */   nop
/* 50D3C 8006053C 08000CE9 */  swc2       $12, 0x8($t0)
/* 50D40 80060540 10000DE9 */  swc2       $13, 0x10($t0)
/* 50D44 80060544 18000EE9 */  swc2       $14, 0x18($t0)
/* 50D48 80060548 C0100D00 */  sll        $v0, $t5, 3
/* 50D4C 8006054C 21285900 */  addu       $a1, $v0, $t9
/* 50D50 80060550 0000A48C */  lw         $a0, 0x0($a1)
/* 50D54 80060554 00000000 */  nop
/* 50D58 80060558 05008010 */  beqz       $a0, .L80060570
/* 50D5C 8006055C 21184000 */   addu      $v1, $v0, $zero
/* 50D60 80060560 24108A00 */  and        $v0, $a0, $t2
/* 50D64 80060564 25105800 */  or         $v0, $v0, $t8
/* 50D68 80060568 5E810108 */  j          .L80060578
/* 50D6C 8006056C 000002AD */   sw        $v0, 0x0($t0)
.L80060570:
/* 50D70 80060570 000018AD */  sw         $t8, 0x0($t0)
/* 50D74 80060574 0400A8AC */  sw         $t0, 0x4($a1)
.L80060578:
/* 50D78 80060578 21107900 */  addu       $v0, $v1, $t9
/* 50D7C 8006057C 000048AC */  sw         $t0, 0x0($v0)
.L80060580:
/* 50D80 80060580 FFFF8C25 */  addiu      $t4, $t4, -0x1
/* 50D84 80060584 CEFF8015 */  bnez       $t4, .L800604C0
/* 50D88 80060588 24000825 */   addiu     $t0, $t0, 0x24
.L8006058C:
/* 50D8C 8006058C 801F0B3C */  lui        $t3, (0x1F80005C >> 16)
/* 50D90 80060590 09800F3C */  lui        $t7, %hi(DistBuf)
/* 50D94 80060594 9057EF8D */  lw         $t7, %lo(DistBuf)($t7)
/* 50D98 80060598 4400E28C */  lw         $v0, 0x44($a3)
/* 50D9C 8006059C 1400E88C */  lw         $t0, 0x14($a3)
/* 50DA0 800605A0 3C004018 */  blez       $v0, .L80060694
/* 50DA4 800605A4 5C006B35 */   ori       $t3, $t3, (0x1F80005C & 0xFFFF)
/* 50DA8 800605A8 FF00183C */  lui        $t8, (0xFFFFFF >> 16)
/* 50DAC 800605AC FFFF1837 */  ori        $t8, $t8, (0xFFFFFF & 0xFFFF)
/* 50DB0 800605B0 0008113C */  lui        $s1, (0x8000000 >> 16)
/* 50DB4 800605B4 21604000 */  addu       $t4, $v0, $zero
.L800605B8:
/* 50DB8 800605B8 24000295 */  lhu        $v0, 0x24($t0)
/* 50DBC 800605BC 0000CD91 */  lbu        $t5, 0x0($t6)
/* 50DC0 800605C0 80200200 */  sll        $a0, $v0, 2
/* 50DC4 800605C4 21108F00 */  addu       $v0, $a0, $t7
/* 50DC8 800605C8 0000428C */  lw         $v0, 0x0($v0)
/* 50DCC 800605CC 00000000 */  nop
/* 50DD0 800605D0 28004228 */  slti       $v0, $v0, 0x28
/* 50DD4 800605D4 2C004014 */  bnez       $v0, .L80060688
/* 50DD8 800605D8 0100CE25 */   addiu     $t6, $t6, 0x1
/* 50DDC 800605DC 21486401 */  addu       $t1, $t3, $a0
/* 50DE0 800605E0 26000295 */  lhu        $v0, 0x26($t0)
/* 50DE4 800605E4 28000395 */  lhu        $v1, 0x28($t0)
/* 50DE8 800605E8 0000248D */  lw         $a0, 0x0($t1)
/* 50DEC 800605EC 80100200 */  sll        $v0, $v0, 2
/* 50DF0 800605F0 21306201 */  addu       $a2, $t3, $v0
/* 50DF4 800605F4 80180300 */  sll        $v1, $v1, 2
/* 50DF8 800605F8 21286301 */  addu       $a1, $t3, $v1
/* 50DFC 800605FC 2A000295 */  lhu        $v0, 0x2A($t0)
/* 50E00 80060600 0000C38C */  lw         $v1, 0x0($a2)
/* 50E04 80060604 80100200 */  sll        $v0, $v0, 2
/* 50E08 80060608 21506201 */  addu       $t2, $t3, $v0
/* 50E0C 8006060C 0000A28C */  lw         $v0, 0x0($a1)
/* 50E10 80060610 00608448 */  mtc2       $a0, $12 /* handwritten instruction */
/* 50E14 80060614 00708248 */  mtc2       $v0, $14 /* handwritten instruction */
/* 50E18 80060618 00688348 */  mtc2       $v1, $13 /* handwritten instruction */
/* 50E1C 8006061C 00000000 */  nop
/* 50E20 80060620 00000000 */  nop
/* 50E24 80060624 0600404B */  NCLIP
/* 50E28 80060628 000018EA */  swc2       $24, 0x0($s0)
/* 50E2C 8006062C 801F023C */  lui        $v0, (0x1F800040 >> 16)
/* 50E30 80060630 4000428C */  lw         $v0, (0x1F800040 & 0xFFFF)($v0)
/* 50E34 80060634 00000000 */  nop
/* 50E38 80060638 13004104 */  bgez       $v0, .L80060688
/* 50E3C 8006063C 00000000 */   nop
/* 50E40 80060640 08000CE9 */  swc2       $12, 0x8($t0)
/* 50E44 80060644 10000DE9 */  swc2       $13, 0x10($t0)
/* 50E48 80060648 18000EE9 */  swc2       $14, 0x18($t0)
/* 50E4C 8006064C C0180D00 */  sll        $v1, $t5, 3
/* 50E50 80060650 0000428D */  lw         $v0, 0x0($t2)
/* 50E54 80060654 21207900 */  addu       $a0, $v1, $t9
/* 50E58 80060658 200002AD */  sw         $v0, 0x20($t0)
/* 50E5C 8006065C 0000828C */  lw         $v0, 0x0($a0)
/* 50E60 80060660 00000000 */  nop
/* 50E64 80060664 04004010 */  beqz       $v0, .L80060678
/* 50E68 80060668 24105800 */   and       $v0, $v0, $t8
/* 50E6C 8006066C 25105100 */  or         $v0, $v0, $s1
/* 50E70 80060670 A0810108 */  j          .L80060680
/* 50E74 80060674 000002AD */   sw        $v0, 0x0($t0)
.L80060678:
/* 50E78 80060678 000011AD */  sw         $s1, 0x0($t0)
/* 50E7C 8006067C 040088AC */  sw         $t0, 0x4($a0)
.L80060680:
/* 50E80 80060680 21107900 */  addu       $v0, $v1, $t9
/* 50E84 80060684 000048AC */  sw         $t0, 0x0($v0)
.L80060688:
/* 50E88 80060688 FFFF8C25 */  addiu      $t4, $t4, -0x1
/* 50E8C 8006068C CAFF8015 */  bnez       $t4, .L800605B8
/* 50E90 80060690 2C000825 */   addiu     $t0, $t0, 0x2C
.L80060694:
/* 50E94 80060694 801F0B3C */  lui        $t3, (0x1F80005C >> 16)
/* 50E98 80060698 09800F3C */  lui        $t7, %hi(DistBuf)
/* 50E9C 8006069C 9057EF8D */  lw         $t7, %lo(DistBuf)($t7)
/* 50EA0 800606A0 4800E28C */  lw         $v0, 0x48($a3)
/* 50EA4 800606A4 1800E88C */  lw         $t0, 0x18($a3)
/* 50EA8 800606A8 38004018 */  blez       $v0, .L8006078C
/* 50EAC 800606AC 5C006B35 */   ori       $t3, $t3, (0x1F80005C & 0xFFFF)
/* 50EB0 800606B0 FF000A3C */  lui        $t2, (0xFFFFFF >> 16)
/* 50EB4 800606B4 FFFF4A35 */  ori        $t2, $t2, (0xFFFFFF & 0xFFFF)
/* 50EB8 800606B8 0007183C */  lui        $t8, (0x7000000 >> 16)
/* 50EBC 800606BC 21604000 */  addu       $t4, $v0, $zero
.L800606C0:
/* 50EC0 800606C0 20000295 */  lhu        $v0, 0x20($t0)
/* 50EC4 800606C4 0000CD91 */  lbu        $t5, 0x0($t6)
/* 50EC8 800606C8 80200200 */  sll        $a0, $v0, 2
/* 50ECC 800606CC 21108F00 */  addu       $v0, $a0, $t7
/* 50ED0 800606D0 0000428C */  lw         $v0, 0x0($v0)
/* 50ED4 800606D4 00000000 */  nop
/* 50ED8 800606D8 28004228 */  slti       $v0, $v0, 0x28
/* 50EDC 800606DC 28004014 */  bnez       $v0, .L80060780
/* 50EE0 800606E0 0100CE25 */   addiu     $t6, $t6, 0x1
/* 50EE4 800606E4 21486401 */  addu       $t1, $t3, $a0
/* 50EE8 800606E8 22000395 */  lhu        $v1, 0x22($t0)
/* 50EEC 800606EC 24000295 */  lhu        $v0, 0x24($t0)
/* 50EF0 800606F0 0000248D */  lw         $a0, 0x0($t1)
/* 50EF4 800606F4 80180300 */  sll        $v1, $v1, 2
/* 50EF8 800606F8 21306301 */  addu       $a2, $t3, $v1
/* 50EFC 800606FC 80100200 */  sll        $v0, $v0, 2
/* 50F00 80060700 21286201 */  addu       $a1, $t3, $v0
/* 50F04 80060704 0000C38C */  lw         $v1, 0x0($a2)
/* 50F08 80060708 0000A28C */  lw         $v0, 0x0($a1)
/* 50F0C 8006070C 00608448 */  mtc2       $a0, $12 /* handwritten instruction */
/* 50F10 80060710 00708248 */  mtc2       $v0, $14 /* handwritten instruction */
/* 50F14 80060714 00688348 */  mtc2       $v1, $13 /* handwritten instruction */
/* 50F18 80060718 00000000 */  nop
/* 50F1C 8006071C 00000000 */  nop
/* 50F20 80060720 0600404B */  NCLIP
/* 50F24 80060724 000018EA */  swc2       $24, 0x0($s0)
/* 50F28 80060728 801F023C */  lui        $v0, (0x1F800040 >> 16)
/* 50F2C 8006072C 4000428C */  lw         $v0, (0x1F800040 & 0xFFFF)($v0)
/* 50F30 80060730 00000000 */  nop
/* 50F34 80060734 12004104 */  bgez       $v0, .L80060780
/* 50F38 80060738 00000000 */   nop
/* 50F3C 8006073C 08000CE9 */  swc2       $12, 0x8($t0)
/* 50F40 80060740 10000DE9 */  swc2       $13, 0x10($t0)
/* 50F44 80060744 18000EE9 */  swc2       $14, 0x18($t0)
/* 50F48 80060748 C0100D00 */  sll        $v0, $t5, 3
/* 50F4C 8006074C 21285900 */  addu       $a1, $v0, $t9
/* 50F50 80060750 0000A48C */  lw         $a0, 0x0($a1)
/* 50F54 80060754 00000000 */  nop
/* 50F58 80060758 05008010 */  beqz       $a0, .L80060770
/* 50F5C 8006075C 21184000 */   addu      $v1, $v0, $zero
/* 50F60 80060760 24108A00 */  and        $v0, $a0, $t2
/* 50F64 80060764 25105800 */  or         $v0, $v0, $t8
/* 50F68 80060768 DE810108 */  j          .L80060778
/* 50F6C 8006076C 000002AD */   sw        $v0, 0x0($t0)
.L80060770:
/* 50F70 80060770 000018AD */  sw         $t8, 0x0($t0)
/* 50F74 80060774 0400A8AC */  sw         $t0, 0x4($a1)
.L80060778:
/* 50F78 80060778 21107900 */  addu       $v0, $v1, $t9
/* 50F7C 8006077C 000048AC */  sw         $t0, 0x0($v0)
.L80060780:
/* 50F80 80060780 FFFF8C25 */  addiu      $t4, $t4, -0x1
/* 50F84 80060784 CEFF8015 */  bnez       $t4, .L800606C0
/* 50F88 80060788 28000825 */   addiu     $t0, $t0, 0x28
.L8006078C:
/* 50F8C 8006078C 801F0B3C */  lui        $t3, (0x1F80005C >> 16)
/* 50F90 80060790 09800F3C */  lui        $t7, %hi(DistBuf)
/* 50F94 80060794 9057EF8D */  lw         $t7, %lo(DistBuf)($t7)
/* 50F98 80060798 4C00E28C */  lw         $v0, 0x4C($a3)
/* 50F9C 8006079C 1C00E88C */  lw         $t0, 0x1C($a3)
/* 50FA0 800607A0 3C004018 */  blez       $v0, .L80060894
/* 50FA4 800607A4 5C006B35 */   ori       $t3, $t3, (0x1F80005C & 0xFFFF)
/* 50FA8 800607A8 FF00183C */  lui        $t8, (0xFFFFFF >> 16)
/* 50FAC 800607AC FFFF1837 */  ori        $t8, $t8, (0xFFFFFF & 0xFFFF)
/* 50FB0 800607B0 0009113C */  lui        $s1, (0x9000000 >> 16)
/* 50FB4 800607B4 21604000 */  addu       $t4, $v0, $zero
.L800607B8:
/* 50FB8 800607B8 28000295 */  lhu        $v0, 0x28($t0)
/* 50FBC 800607BC 0000CD91 */  lbu        $t5, 0x0($t6)
/* 50FC0 800607C0 80200200 */  sll        $a0, $v0, 2
/* 50FC4 800607C4 21108F00 */  addu       $v0, $a0, $t7
/* 50FC8 800607C8 0000428C */  lw         $v0, 0x0($v0)
/* 50FCC 800607CC 00000000 */  nop
/* 50FD0 800607D0 28004228 */  slti       $v0, $v0, 0x28
/* 50FD4 800607D4 2C004014 */  bnez       $v0, .L80060888
/* 50FD8 800607D8 0100CE25 */   addiu     $t6, $t6, 0x1
/* 50FDC 800607DC 21486401 */  addu       $t1, $t3, $a0
/* 50FE0 800607E0 2A000295 */  lhu        $v0, 0x2A($t0)
/* 50FE4 800607E4 2C000395 */  lhu        $v1, 0x2C($t0)
/* 50FE8 800607E8 0000248D */  lw         $a0, 0x0($t1)
/* 50FEC 800607EC 80100200 */  sll        $v0, $v0, 2
/* 50FF0 800607F0 21306201 */  addu       $a2, $t3, $v0
/* 50FF4 800607F4 80180300 */  sll        $v1, $v1, 2
/* 50FF8 800607F8 21286301 */  addu       $a1, $t3, $v1
/* 50FFC 800607FC 2E000295 */  lhu        $v0, 0x2E($t0)
/* 51000 80060800 0000C38C */  lw         $v1, 0x0($a2)
/* 51004 80060804 80100200 */  sll        $v0, $v0, 2
/* 51008 80060808 21506201 */  addu       $t2, $t3, $v0
/* 5100C 8006080C 0000A28C */  lw         $v0, 0x0($a1)
/* 51010 80060810 00608448 */  mtc2       $a0, $12 /* handwritten instruction */
/* 51014 80060814 00708248 */  mtc2       $v0, $14 /* handwritten instruction */
/* 51018 80060818 00688348 */  mtc2       $v1, $13 /* handwritten instruction */
/* 5101C 8006081C 00000000 */  nop
/* 51020 80060820 00000000 */  nop
/* 51024 80060824 0600404B */  NCLIP
/* 51028 80060828 000018EA */  swc2       $24, 0x0($s0)
/* 5102C 8006082C 801F023C */  lui        $v0, (0x1F800040 >> 16)
/* 51030 80060830 4000428C */  lw         $v0, (0x1F800040 & 0xFFFF)($v0)
/* 51034 80060834 00000000 */  nop
/* 51038 80060838 13004104 */  bgez       $v0, .L80060888
/* 5103C 8006083C 00000000 */   nop
/* 51040 80060840 08000CE9 */  swc2       $12, 0x8($t0)
/* 51044 80060844 10000DE9 */  swc2       $13, 0x10($t0)
/* 51048 80060848 18000EE9 */  swc2       $14, 0x18($t0)
/* 5104C 8006084C C0180D00 */  sll        $v1, $t5, 3
/* 51050 80060850 0000428D */  lw         $v0, 0x0($t2)
/* 51054 80060854 21207900 */  addu       $a0, $v1, $t9
/* 51058 80060858 200002AD */  sw         $v0, 0x20($t0)
/* 5105C 8006085C 0000828C */  lw         $v0, 0x0($a0)
/* 51060 80060860 00000000 */  nop
/* 51064 80060864 04004010 */  beqz       $v0, .L80060878
/* 51068 80060868 24105800 */   and       $v0, $v0, $t8
/* 5106C 8006086C 25105100 */  or         $v0, $v0, $s1
/* 51070 80060870 20820108 */  j          .L80060880
/* 51074 80060874 000002AD */   sw        $v0, 0x0($t0)
.L80060878:
/* 51078 80060878 000011AD */  sw         $s1, 0x0($t0)
/* 5107C 8006087C 040088AC */  sw         $t0, 0x4($a0)
.L80060880:
/* 51080 80060880 21107900 */  addu       $v0, $v1, $t9
/* 51084 80060884 000048AC */  sw         $t0, 0x0($v0)
.L80060888:
/* 51088 80060888 FFFF8C25 */  addiu      $t4, $t4, -0x1
/* 5108C 8006088C CAFF8015 */  bnez       $t4, .L800607B8
/* 51090 80060890 34000825 */   addiu     $t0, $t0, 0x34
.L80060894:
/* 51094 80060894 801F0B3C */  lui        $t3, (0x1F80005C >> 16)
/* 51098 80060898 09800F3C */  lui        $t7, %hi(DistBuf)
/* 5109C 8006089C 9057EF8D */  lw         $t7, %lo(DistBuf)($t7)
/* 510A0 800608A0 5000E28C */  lw         $v0, 0x50($a3)
/* 510A4 800608A4 2000E88C */  lw         $t0, 0x20($a3)
/* 510A8 800608A8 38004018 */  blez       $v0, .L8006098C
/* 510AC 800608AC 5C006B35 */   ori       $t3, $t3, (0x1F80005C & 0xFFFF)
/* 510B0 800608B0 FF000A3C */  lui        $t2, (0xFFFFFF >> 16)
/* 510B4 800608B4 FFFF4A35 */  ori        $t2, $t2, (0xFFFFFF & 0xFFFF)
/* 510B8 800608B8 0009183C */  lui        $t8, (0x9000000 >> 16)
/* 510BC 800608BC 21604000 */  addu       $t4, $v0, $zero
.L800608C0:
/* 510C0 800608C0 28000295 */  lhu        $v0, 0x28($t0)
/* 510C4 800608C4 0000CD91 */  lbu        $t5, 0x0($t6)
/* 510C8 800608C8 80200200 */  sll        $a0, $v0, 2
/* 510CC 800608CC 21108F00 */  addu       $v0, $a0, $t7
/* 510D0 800608D0 0000428C */  lw         $v0, 0x0($v0)
/* 510D4 800608D4 00000000 */  nop
/* 510D8 800608D8 28004228 */  slti       $v0, $v0, 0x28
/* 510DC 800608DC 28004014 */  bnez       $v0, .L80060980
/* 510E0 800608E0 0100CE25 */   addiu     $t6, $t6, 0x1
/* 510E4 800608E4 21486401 */  addu       $t1, $t3, $a0
/* 510E8 800608E8 2A000395 */  lhu        $v1, 0x2A($t0)
/* 510EC 800608EC 2C000295 */  lhu        $v0, 0x2C($t0)
/* 510F0 800608F0 0000248D */  lw         $a0, 0x0($t1)
/* 510F4 800608F4 80180300 */  sll        $v1, $v1, 2
/* 510F8 800608F8 21306301 */  addu       $a2, $t3, $v1
/* 510FC 800608FC 80100200 */  sll        $v0, $v0, 2
/* 51100 80060900 21286201 */  addu       $a1, $t3, $v0
/* 51104 80060904 0000C38C */  lw         $v1, 0x0($a2)
/* 51108 80060908 0000A28C */  lw         $v0, 0x0($a1)
/* 5110C 8006090C 00608448 */  mtc2       $a0, $12 /* handwritten instruction */
/* 51110 80060910 00708248 */  mtc2       $v0, $14 /* handwritten instruction */
/* 51114 80060914 00688348 */  mtc2       $v1, $13 /* handwritten instruction */
/* 51118 80060918 00000000 */  nop
/* 5111C 8006091C 00000000 */  nop
/* 51120 80060920 0600404B */  NCLIP
/* 51124 80060924 000018EA */  swc2       $24, 0x0($s0)
/* 51128 80060928 801F023C */  lui        $v0, (0x1F800040 >> 16)
/* 5112C 8006092C 4000428C */  lw         $v0, (0x1F800040 & 0xFFFF)($v0)
/* 51130 80060930 00000000 */  nop
/* 51134 80060934 12004104 */  bgez       $v0, .L80060980
/* 51138 80060938 00000000 */   nop
/* 5113C 8006093C 08000CE9 */  swc2       $12, 0x8($t0)
/* 51140 80060940 14000DE9 */  swc2       $13, 0x14($t0)
/* 51144 80060944 20000EE9 */  swc2       $14, 0x20($t0)
/* 51148 80060948 C0100D00 */  sll        $v0, $t5, 3
/* 5114C 8006094C 21285900 */  addu       $a1, $v0, $t9
/* 51150 80060950 0000A48C */  lw         $a0, 0x0($a1)
/* 51154 80060954 00000000 */  nop
/* 51158 80060958 05008010 */  beqz       $a0, .L80060970
/* 5115C 8006095C 21184000 */   addu      $v1, $v0, $zero
/* 51160 80060960 24108A00 */  and        $v0, $a0, $t2
/* 51164 80060964 25105800 */  or         $v0, $v0, $t8
/* 51168 80060968 5E820108 */  j          .L80060978
/* 5116C 8006096C 000002AD */   sw        $v0, 0x0($t0)
.L80060970:
/* 51170 80060970 000018AD */  sw         $t8, 0x0($t0)
/* 51174 80060974 0400A8AC */  sw         $t0, 0x4($a1)
.L80060978:
/* 51178 80060978 21107900 */  addu       $v0, $v1, $t9
/* 5117C 8006097C 000048AC */  sw         $t0, 0x0($v0)
.L80060980:
/* 51180 80060980 FFFF8C25 */  addiu      $t4, $t4, -0x1
/* 51184 80060984 CEFF8015 */  bnez       $t4, .L800608C0
/* 51188 80060988 30000825 */   addiu     $t0, $t0, 0x30
.L8006098C:
/* 5118C 8006098C 801F0B3C */  lui        $t3, (0x1F80005C >> 16)
/* 51190 80060990 5400E28C */  lw         $v0, 0x54($a3)
/* 51194 80060994 2400E78C */  lw         $a3, 0x24($a3)
/* 51198 80060998 2E004018 */  blez       $v0, .L80060A54
/* 5119C 8006099C 5C006B35 */   ori       $t3, $t3, (0x1F80005C & 0xFFFF)
/* 511A0 800609A0 FF000F3C */  lui        $t7, (0xFFFFFF >> 16)
/* 511A4 800609A4 FFFFEF35 */  ori        $t7, $t7, (0xFFFFFF & 0xFFFF)
/* 511A8 800609A8 000C103C */  lui        $s0, (0xC000000 >> 16)
/* 511AC 800609AC 21604000 */  addu       $t4, $v0, $zero
/* 511B0 800609B0 3400E824 */  addiu      $t0, $a3, 0x34
.L800609B4:
/* 511B4 800609B4 00000295 */  lhu        $v0, 0x0($t0)
/* 511B8 800609B8 0000CD91 */  lbu        $t5, 0x0($t6)
/* 511BC 800609BC 02000395 */  lhu        $v1, 0x2($t0)
/* 511C0 800609C0 04000495 */  lhu        $a0, 0x4($t0)
/* 511C4 800609C4 80100200 */  sll        $v0, $v0, 2
/* 511C8 800609C8 21104B00 */  addu       $v0, $v0, $t3
/* 511CC 800609CC 80180300 */  sll        $v1, $v1, 2
/* 511D0 800609D0 21186B00 */  addu       $v1, $v1, $t3
/* 511D4 800609D4 80200400 */  sll        $a0, $a0, 2
/* 511D8 800609D8 21208B00 */  addu       $a0, $a0, $t3
/* 511DC 800609DC 0000498C */  lw         $t1, 0x0($v0)
/* 511E0 800609E0 0000668C */  lw         $a2, 0x0($v1)
/* 511E4 800609E4 06000295 */  lhu        $v0, 0x6($t0)
/* 511E8 800609E8 0000858C */  lw         $a1, 0x0($a0)
/* 511EC 800609EC 80100200 */  sll        $v0, $v0, 2
/* 511F0 800609F0 21104B00 */  addu       $v0, $v0, $t3
/* 511F4 800609F4 00004A8C */  lw         $t2, 0x0($v0)
/* 511F8 800609F8 C0100D00 */  sll        $v0, $t5, 3
/* 511FC 800609FC 21185900 */  addu       $v1, $v0, $t9
/* 51200 80060A00 D4FF09AD */  sw         $t1, -0x2C($t0)
/* 51204 80060A04 E0FF06AD */  sw         $a2, -0x20($t0)
/* 51208 80060A08 ECFF05AD */  sw         $a1, -0x14($t0)
/* 5120C 80060A0C F8FF0AAD */  sw         $t2, -0x8($t0)
/* 51210 80060A10 0000628C */  lw         $v0, 0x0($v1)
/* 51214 80060A14 00000000 */  nop
/* 51218 80060A18 05004010 */  beqz       $v0, .L80060A30
/* 5121C 80060A1C 0100CE25 */   addiu     $t6, $t6, 0x1
/* 51220 80060A20 24104F00 */  and        $v0, $v0, $t7
/* 51224 80060A24 25105000 */  or         $v0, $v0, $s0
/* 51228 80060A28 8E820108 */  j          .L80060A38
/* 5122C 80060A2C CCFF02AD */   sw        $v0, -0x34($t0)
.L80060A30:
/* 51230 80060A30 CCFF10AD */  sw         $s0, -0x34($t0)
/* 51234 80060A34 040067AC */  sw         $a3, 0x4($v1)
.L80060A38:
/* 51238 80060A38 C0100D00 */  sll        $v0, $t5, 3
/* 5123C 80060A3C 21105900 */  addu       $v0, $v0, $t9
/* 51240 80060A40 000047AC */  sw         $a3, 0x0($v0)
/* 51244 80060A44 FFFF8C25 */  addiu      $t4, $t4, -0x1
/* 51248 80060A48 40000825 */  addiu      $t0, $t0, 0x40
/* 5124C 80060A4C D9FF8015 */  bnez       $t4, .L800609B4
/* 51250 80060A50 4000E724 */   addiu     $a3, $a3, 0x40
.L80060A54:
/* 51254 80060A54 21100000 */  addu       $v0, $zero, $zero
/* 51258 80060A58 0400B18F */  lw         $s1, 0x4($sp)
/* 5125C 80060A5C 0000B08F */  lw         $s0, 0x0($sp)
/* 51260 80060A60 0800E003 */  jr         $ra
/* 51264 80060A64 0800BD27 */   addiu     $sp, $sp, 0x8
.size DrawCelDepth2, . - DrawCelDepth2
