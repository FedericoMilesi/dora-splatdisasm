.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel pxm_attach_zone_to_spu_chan
/* 459EC 800551EC 70FFBD27 */  addiu      $sp, $sp, -0x90
/* 459F0 800551F0 7C00B5AF */  sw         $s5, 0x7C($sp)
/* 459F4 800551F4 21A88000 */  addu       $s5, $a0, $zero
/* 459F8 800551F8 FF00A530 */  andi       $a1, $a1, 0xFF
/* 459FC 800551FC FF00C630 */  andi       $a2, $a2, 0xFF
/* 45A00 80055200 40100500 */  sll        $v0, $a1, 1
/* 45A04 80055204 21104500 */  addu       $v0, $v0, $a1
/* 45A08 80055208 80100200 */  sll        $v0, $v0, 2
/* 45A0C 8005520C 23104500 */  subu       $v0, $v0, $a1
/* 45A10 80055210 80100200 */  sll        $v0, $v0, 2
/* 45A14 80055214 0B80033C */  lui        $v1, %hi(pxm_sndfiles)
/* 45A18 80055218 E0866324 */  addiu      $v1, $v1, %lo(pxm_sndfiles)
/* 45A1C 8005521C 7800B4AF */  sw         $s4, 0x78($sp)
/* 45A20 80055220 21A04300 */  addu       $s4, $v0, $v1
/* 45A24 80055224 8C00BFAF */  sw         $ra, 0x8C($sp)
/* 45A28 80055228 8800BEAF */  sw         $fp, 0x88($sp)
/* 45A2C 8005522C 8400B7AF */  sw         $s7, 0x84($sp)
/* 45A30 80055230 8000B6AF */  sw         $s6, 0x80($sp)
/* 45A34 80055234 7400B3AF */  sw         $s3, 0x74($sp)
/* 45A38 80055238 7000B2AF */  sw         $s2, 0x70($sp)
/* 45A3C 8005523C 6C00B1AF */  sw         $s1, 0x6C($sp)
/* 45A40 80055240 6800B0AF */  sw         $s0, 0x68($sp)
/* 45A44 80055244 6000A6AF */  sw         $a2, 0x60($sp)
/* 45A48 80055248 0C00848E */  lw         $a0, 0xC($s4)
/* 45A4C 8005524C A800B78F */  lw         $s7, 0xA8($sp)
/* 45A50 80055250 A000B193 */  lbu        $s1, 0xA0($sp)
/* 45A54 80055254 2B208500 */  sltu       $a0, $a0, $a1
/* 45A58 80055258 95008014 */  bnez       $a0, .L800554B0
/* 45A5C 8005525C FF00E730 */   andi      $a3, $a3, 0xFF
/* 45A60 80055260 A400A38F */  lw         $v1, 0xA4($sp)
/* 45A64 80055264 00000000 */  nop
/* 45A68 80055268 C0100300 */  sll        $v0, $v1, 3
/* 45A6C 8005526C 23104300 */  subu       $v0, $v0, $v1
/* 45A70 80055270 80100200 */  sll        $v0, $v0, 2
/* 45A74 80055274 0A80033C */  lui        $v1, %hi(pxm_chanstat)
/* 45A78 80055278 E87F6324 */  addiu      $v1, $v1, %lo(pxm_chanstat)
/* 45A7C 8005527C 21904300 */  addu       $s2, $v0, $v1
/* 45A80 80055280 8000E232 */  andi       $v0, $s7, 0x80
/* 45A84 80055284 0C0057AE */  sw         $s7, 0xC($s2)
/* 45A88 80055288 04004010 */  beqz       $v0, .L8005529C
/* 45A8C 8005528C 0A000224 */   addiu     $v0, $zero, 0xA
/* 45A90 80055290 100042A2 */  sb         $v0, 0x10($s2)
/* 45A94 80055294 A9540108 */  j          .L800552A4
/* 45A98 80055298 21F0E000 */   addu      $fp, $a3, $zero
.L8005529C:
/* 45A9C 8005529C 100040A2 */  sb         $zero, 0x10($s2)
/* 45AA0 800552A0 21F0E000 */  addu       $fp, $a3, $zero
.L800552A4:
/* 45AA4 800552A4 0400E232 */  andi       $v0, $s7, 0x4
/* 45AA8 800552A8 180055AE */  sw         $s5, 0x18($s2)
/* 45AAC 800552AC 5800A0A7 */  sh         $zero, 0x58($sp)
/* 45AB0 800552B0 5A00A0A7 */  sh         $zero, 0x5A($sp)
/* 45AB4 800552B4 1100B092 */  lbu        $s0, 0x11($s5)
/* 45AB8 800552B8 0F00B692 */  lbu        $s6, 0xF($s5)
/* 45ABC 800552BC 1C004010 */  beqz       $v0, .L80055330
/* 45AC0 800552C0 80000424 */   addiu     $a0, $zero, 0x80
/* 45AC4 800552C4 FF001032 */  andi       $s0, $s0, 0xFF
/* 45AC8 800552C8 21280002 */  addu       $a1, $s0, $zero
/* 45ACC 800552CC 0952010C */  jal        pxm_muspaneq_L
/* 45AD0 800552D0 21302002 */   addu      $a2, $s1, $zero
/* 45AD4 800552D4 FFFF5330 */  andi       $s3, $v0, 0xFFFF
/* 45AD8 800552D8 80000424 */  addiu      $a0, $zero, 0x80
/* 45ADC 800552DC 21280002 */  addu       $a1, $s0, $zero
/* 45AE0 800552E0 2352010C */  jal        pxm_muspaneq_R
/* 45AE4 800552E4 21302002 */   addu      $a2, $s1, $zero
/* 45AE8 800552E8 0A80043C */  lui        $a0, %hi(pxm_mix)
/* 45AEC 800552EC C87F8524 */  addiu      $a1, $a0, %lo(pxm_mix)
/* 45AF0 800552F0 C87F868C */  lw         $a2, %lo(pxm_mix)($a0)
/* 45AF4 800552F4 0C00A38C */  lw         $v1, 0xC($a1)
/* 45AF8 800552F8 00000000 */  nop
/* 45AFC 800552FC 1800C300 */  mult       $a2, $v1
/* 45B00 80055300 FFFF4530 */  andi       $a1, $v0, 0xFFFF
/* 45B04 80055304 0A80023C */  lui        $v0, %hi(pxm_midichvolume)
/* 45B08 80055308 B87F4224 */  addiu      $v0, $v0, %lo(pxm_midichvolume)
/* 45B0C 8005530C 21102202 */  addu       $v0, $s1, $v0
/* 45B10 80055310 12300000 */  mflo       $a2
/* 45B14 80055314 00004390 */  lbu        $v1, 0x0($v0)
/* 45B18 80055318 C3310600 */  sra        $a2, $a2, 7
/* 45B1C 8005531C 1800C300 */  mult       $a2, $v1
/* 45B20 80055320 12300000 */  mflo       $a2
/* 45B24 80055324 00000000 */  nop
/* 45B28 80055328 E2540108 */  j          .L80055388
/* 45B2C 8005532C 1800D302 */   mult      $s6, $s3
.L80055330:
/* 45B30 80055330 FF001032 */  andi       $s0, $s0, 0xFF
/* 45B34 80055334 DD51010C */  jal        pxm_paneq_L
/* 45B38 80055338 21280002 */   addu      $a1, $s0, $zero
/* 45B3C 8005533C FFFF5330 */  andi       $s3, $v0, 0xFFFF
/* 45B40 80055340 80000424 */  addiu      $a0, $zero, 0x80
/* 45B44 80055344 F251010C */  jal        pxm_paneq_R
/* 45B48 80055348 21280002 */   addu      $a1, $s0, $zero
/* 45B4C 8005534C FFFF4530 */  andi       $a1, $v0, 0xFFFF
/* 45B50 80055350 2000E232 */  andi       $v0, $s7, 0x20
/* 45B54 80055354 09004014 */  bnez       $v0, .L8005537C
/* 45B58 80055358 0A80023C */   lui       $v0, %hi(pxm_mix)
/* 45B5C 8005535C C87F4224 */  addiu      $v0, $v0, %lo(pxm_mix)
/* 45B60 80055360 0400438C */  lw         $v1, 0x4($v0)
/* 45B64 80055364 1000448C */  lw         $a0, 0x10($v0)
/* 45B68 80055368 00000000 */  nop
/* 45B6C 8005536C 18006400 */  mult       $v1, $a0
/* 45B70 80055370 12180000 */  mflo       $v1
/* 45B74 80055374 E1540108 */  j          .L80055384
/* 45B78 80055378 C3310300 */   sra       $a2, $v1, 7
.L8005537C:
/* 45B7C 8005537C C87F4224 */  addiu      $v0, $v0, %lo(pxm_mix)
/* 45B80 80055380 1000468C */  lw         $a2, 0x10($v0)
.L80055384:
/* 45B84 80055384 1800D302 */  mult       $s6, $s3
.L80055388:
/* 45B88 80055388 12100000 */  mflo       $v0
/* 45B8C 8005538C 00000000 */  nop
/* 45B90 80055390 00000000 */  nop
/* 45B94 80055394 1800C502 */  mult       $s6, $a1
/* 45B98 80055398 12180000 */  mflo       $v1
/* 45B9C 8005539C 00000000 */  nop
/* 45BA0 800553A0 00000000 */  nop
/* 45BA4 800553A4 18004600 */  mult       $v0, $a2
/* 45BA8 800553A8 12100000 */  mflo       $v0
/* 45BAC 800553AC 00000000 */  nop
/* 45BB0 800553B0 00000000 */  nop
/* 45BB4 800553B4 18006600 */  mult       $v1, $a2
/* 45BB8 800553B8 12180000 */  mflo       $v1
/* 45BBC 800553BC 00000000 */  nop
/* 45BC0 800553C0 00000000 */  nop
/* 45BC4 800553C4 18005E00 */  mult       $v0, $fp
/* 45BC8 800553C8 12100000 */  mflo       $v0
/* 45BCC 800553CC 00000000 */  nop
/* 45BD0 800553D0 00000000 */  nop
/* 45BD4 800553D4 18007E00 */  mult       $v1, $fp
/* 45BD8 800553D8 83130200 */  sra        $v0, $v0, 14
/* 45BDC 800553DC 5000A2A7 */  sh         $v0, 0x50($sp)
/* 45BE0 800553E0 12180000 */  mflo       $v1
/* 45BE4 800553E4 831B0300 */  sra        $v1, $v1, 14
/* 45BE8 800553E8 5200A3A7 */  sh         $v1, 0x52($sp)
/* 45BEC 800553EC 5300A28B */  lwl        $v0, 0x53($sp)
/* 45BF0 800553F0 5000A29B */  lwr        $v0, 0x50($sp)
/* 45BF4 800553F4 00000000 */  nop
/* 45BF8 800553F8 1B00A2AB */  swl        $v0, 0x1B($sp)
/* 45BFC 800553FC 1800A2BB */  swr        $v0, 0x18($sp)
/* 45C00 80055400 5B00A28B */  lwl        $v0, 0x5B($sp)
/* 45C04 80055404 5800A29B */  lwr        $v0, 0x58($sp)
/* 45C08 80055408 00000000 */  nop
/* 45C0C 8005540C 1F00A2AB */  swl        $v0, 0x1F($sp)
/* 45C10 80055410 1C00A2BB */  swr        $v0, 0x1C($sp)
/* 45C14 80055414 5000A297 */  lhu        $v0, 0x50($sp)
/* 45C18 80055418 5200A397 */  lhu        $v1, 0x52($sp)
/* 45C1C 8005541C 140042A6 */  sh         $v0, 0x14($s2)
/* 45C20 80055420 160043A6 */  sh         $v1, 0x16($s2)
/* 45C24 80055424 6000A48F */  lw         $a0, 0x60($sp)
/* 45C28 80055428 0B00A292 */  lbu        $v0, 0xB($s5)
/* 45C2C 8005542C 001A0400 */  sll        $v1, $a0, 8
/* 45C30 80055430 00160200 */  sll        $v0, $v0, 24
/* 45C34 80055434 2600A3A7 */  sh         $v1, 0x26($sp)
/* 45C38 80055438 0A00A392 */  lbu        $v1, 0xA($s5)
/* 45C3C 8005543C 03160200 */  sra        $v0, $v0, 24
/* 45C40 80055440 001A0300 */  sll        $v1, $v1, 8
/* 45C44 80055444 25104300 */  or         $v0, $v0, $v1
/* 45C48 80055448 2800A2A7 */  sh         $v0, 0x28($sp)
/* 45C4C 8005544C 0200A396 */  lhu        $v1, 0x2($s5)
/* 45C50 80055450 2000828E */  lw         $v0, 0x20($s4)
/* 45C54 80055454 C0180300 */  sll        $v1, $v1, 3
/* 45C58 80055458 21186200 */  addu       $v1, $v1, $v0
/* 45C5C 8005545C 0000648C */  lw         $a0, 0x0($v1)
/* 45C60 80055460 0020033C */  lui        $v1, (0x20000000 >> 16)
/* 45C64 80055464 0000828E */  lw         $v0, 0x0($s4)
/* 45C68 80055468 2418E302 */  and        $v1, $s7, $v1
/* 45C6C 8005546C 21104400 */  addu       $v0, $v0, $a0
/* 45C70 80055470 06006010 */  beqz       $v1, .L8005548C
/* 45C74 80055474 2C00A2AF */   sw        $v0, 0x2C($sp)
/* 45C78 80055478 FF040224 */  addiu      $v0, $zero, 0x4FF
/* 45C7C 8005547C 0D000324 */  addiu      $v1, $zero, 0xD
/* 45C80 80055480 4A00A2A7 */  sh         $v0, 0x4A($sp)
/* 45C84 80055484 26550108 */  j          .L80055498
/* 45C88 80055488 4C00A3A7 */   sh        $v1, 0x4C($sp)
.L8005548C:
/* 45C8C 8005548C FF0F0224 */  addiu      $v0, $zero, 0xFFF
/* 45C90 80055490 4A00A2A7 */  sh         $v0, 0x4A($sp)
/* 45C94 80055494 4C00A2A7 */  sh         $v0, 0x4C($sp)
.L80055498:
/* 45C98 80055498 0600023C */  lui        $v0, (0x600E3 >> 16)
/* 45C9C 8005549C E3004234 */  ori        $v0, $v0, (0x600E3 & 0xFFFF)
/* 45CA0 800554A0 A400A48F */  lw         $a0, 0xA4($sp)
/* 45CA4 800554A4 1000A527 */  addiu      $a1, $sp, 0x10
/* 45CA8 800554A8 3306020C */  jal        SpuNSetVoiceAttr
/* 45CAC 800554AC 1400A2AF */   sw        $v0, 0x14($sp)
.L800554B0:
/* 45CB0 800554B0 8C00BF8F */  lw         $ra, 0x8C($sp)
/* 45CB4 800554B4 8800BE8F */  lw         $fp, 0x88($sp)
/* 45CB8 800554B8 8400B78F */  lw         $s7, 0x84($sp)
/* 45CBC 800554BC 8000B68F */  lw         $s6, 0x80($sp)
/* 45CC0 800554C0 7C00B58F */  lw         $s5, 0x7C($sp)
/* 45CC4 800554C4 7800B48F */  lw         $s4, 0x78($sp)
/* 45CC8 800554C8 7400B38F */  lw         $s3, 0x74($sp)
/* 45CCC 800554CC 7000B28F */  lw         $s2, 0x70($sp)
/* 45CD0 800554D0 6C00B18F */  lw         $s1, 0x6C($sp)
/* 45CD4 800554D4 6800B08F */  lw         $s0, 0x68($sp)
/* 45CD8 800554D8 0800E003 */  jr         $ra
/* 45CDC 800554DC 9000BD27 */   addiu     $sp, $sp, 0x90
.size pxm_attach_zone_to_spu_chan, . - pxm_attach_zone_to_spu_chan