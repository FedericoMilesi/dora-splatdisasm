.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ParticleSnowInit
/* 21238 80030A38 C0FFBD27 */  addiu      $sp, $sp, -0x40
/* 2123C 80030A3C 2800B4AF */  sw         $s4, 0x28($sp)
/* 21240 80030A40 21A00000 */  addu       $s4, $zero, $zero
/* 21244 80030A44 2400B3AF */  sw         $s3, 0x24($sp)
/* 21248 80030A48 21988000 */  addu       $s3, $a0, $zero
/* 2124C 80030A4C 80000324 */  addiu      $v1, $zero, 0x80
/* 21250 80030A50 3C00BFAF */  sw         $ra, 0x3C($sp)
/* 21254 80030A54 3800BEAF */  sw         $fp, 0x38($sp)
/* 21258 80030A58 3400B7AF */  sw         $s7, 0x34($sp)
/* 2125C 80030A5C 3000B6AF */  sw         $s6, 0x30($sp)
/* 21260 80030A60 2C00B5AF */  sw         $s5, 0x2C($sp)
/* 21264 80030A64 2000B2AF */  sw         $s2, 0x20($sp)
/* 21268 80030A68 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 2126C 80030A6C 1800B0AF */  sw         $s0, 0x18($sp)
/* 21270 80030A70 4000728E */  lw         $s2, 0x40($s3)
/* 21274 80030A74 0800628E */  lw         $v0, 0x8($s3)
/* 21278 80030A78 50001624 */  addiu      $s6, $zero, 0x50
/* 2127C 80030A7C C41383AF */  sw         $v1, %gp_rel(TEMPR)($gp)
/* 21280 80030A80 C01383AF */  sw         $v1, %gp_rel(TEMPG)($gp)
/* 21284 80030A84 BC1383AF */  sw         $v1, %gp_rel(TEMPB)($gp)
/* 21288 80030A88 0C0076AE */  sw         $s6, 0xC($s3)
/* 2128C 80030A8C 240065AE */  sw         $a1, 0x24($s3)
/* 21290 80030A90 280066AE */  sw         $a2, 0x28($s3)
/* 21294 80030A94 31004018 */  blez       $v0, .L80030B5C
/* 21298 80030A98 2C0067AE */   sw        $a3, 0x2C($s3)
/* 2129C 80030A9C 002A0500 */  sll        $a1, $a1, 8
/* 212A0 80030AA0 1000A5AF */  sw         $a1, 0x10($sp)
/* 212A4 80030AA4 0200153C */  lui        $s5, (0x20000 >> 16)
/* 212A8 80030AA8 00F20600 */  sll        $fp, $a2, 8
/* 212AC 80030AAC 00BA0700 */  sll        $s7, $a3, 8
.L80030AB0:
/* 212B0 80030AB0 D140010C */  jal        u32Random
/* 212B4 80030AB4 00040424 */   addiu     $a0, $zero, 0x400
/* 212B8 80030AB8 008A0200 */  sll        $s1, $v0, 8
/* 212BC 80030ABC 1000A28F */  lw         $v0, 0x10($sp)
/* 212C0 80030AC0 00040424 */  addiu      $a0, $zero, 0x400
/* 212C4 80030AC4 21885100 */  addu       $s1, $v0, $s1
/* 212C8 80030AC8 D140010C */  jal        u32Random
/* 212CC 80030ACC 23883502 */   subu      $s1, $s1, $s5
/* 212D0 80030AD0 1C004626 */  addiu      $a2, $s2, 0x1C
/* 212D4 80030AD4 4C006492 */  lbu        $a0, 0x4C($s3)
/* 212D8 80030AD8 01009426 */  addiu      $s4, $s4, 0x1
/* 212DC 80030ADC 0400C4A0 */  sb         $a0, 0x4($a2)
/* 212E0 80030AE0 4D006392 */  lbu        $v1, 0x4D($s3)
/* 212E4 80030AE4 00820200 */  sll        $s0, $v0, 8
/* 212E8 80030AE8 0500C3A0 */  sb         $v1, 0x5($a2)
/* 212EC 80030AEC 4E006492 */  lbu        $a0, 0x4E($s3)
/* 212F0 80030AF0 2180F002 */  addu       $s0, $s7, $s0
/* 212F4 80030AF4 0600C4A0 */  sb         $a0, 0x6($a2)
/* 212F8 80030AF8 4C006392 */  lbu        $v1, 0x4C($s3)
/* 212FC 80030AFC 44004626 */  addiu      $a2, $s2, 0x44
/* 21300 80030B00 0400C3A0 */  sb         $v1, 0x4($a2)
/* 21304 80030B04 4D006592 */  lbu        $a1, 0x4D($s3)
/* 21308 80030B08 23801502 */  subu       $s0, $s0, $s5
/* 2130C 80030B0C 0500C5A0 */  sb         $a1, 0x5($a2)
/* 21310 80030B10 4E006392 */  lbu        $v1, 0x4E($s3)
/* 21314 80030B14 01000424 */  addiu      $a0, $zero, 0x1
/* 21318 80030B18 D140010C */  jal        u32Random
/* 2131C 80030B1C 0600C3A0 */   sb        $v1, 0x6($a2)
/* 21320 80030B20 01000324 */  addiu      $v1, $zero, 0x1
/* 21324 80030B24 2310C202 */  subu       $v0, $s6, $v0
/* 21328 80030B28 000043A6 */  sh         $v1, 0x0($s2)
/* 2132C 80030B2C 040051AE */  sw         $s1, 0x4($s2)
/* 21330 80030B30 08005EAE */  sw         $fp, 0x8($s2)
/* 21334 80030B34 0C0050AE */  sw         $s0, 0xC($s2)
/* 21338 80030B38 100040AE */  sw         $zero, 0x10($s2)
/* 2133C 80030B3C 140040AE */  sw         $zero, 0x14($s2)
/* 21340 80030B40 180040AE */  sw         $zero, 0x18($s2)
/* 21344 80030B44 020042A6 */  sh         $v0, 0x2($s2)
/* 21348 80030B48 0800628E */  lw         $v0, 0x8($s3)
/* 2134C 80030B4C 00000000 */  nop
/* 21350 80030B50 2A108202 */  slt        $v0, $s4, $v0
/* 21354 80030B54 D6FF4014 */  bnez       $v0, .L80030AB0
/* 21358 80030B58 74005226 */   addiu     $s2, $s2, 0x74
.L80030B5C:
/* 2135C 80030B5C D140010C */  jal        u32Random
/* 21360 80030B60 08000424 */   addiu     $a0, $zero, 0x8
/* 21364 80030B64 3C00BF8F */  lw         $ra, 0x3C($sp)
/* 21368 80030B68 3800BE8F */  lw         $fp, 0x38($sp)
/* 2136C 80030B6C 3400B78F */  lw         $s7, 0x34($sp)
/* 21370 80030B70 3000B68F */  lw         $s6, 0x30($sp)
/* 21374 80030B74 2C00B58F */  lw         $s5, 0x2C($sp)
/* 21378 80030B78 2800B48F */  lw         $s4, 0x28($sp)
/* 2137C 80030B7C F0004224 */  addiu      $v0, $v0, 0xF0
/* 21380 80030B80 4A0062A6 */  sh         $v0, 0x4A($s3)
/* 21384 80030B84 000060AE */  sw         $zero, 0x0($s3)
/* 21388 80030B88 2400B38F */  lw         $s3, 0x24($sp)
/* 2138C 80030B8C 2000B28F */  lw         $s2, 0x20($sp)
/* 21390 80030B90 1C00B18F */  lw         $s1, 0x1C($sp)
/* 21394 80030B94 1800B08F */  lw         $s0, 0x18($sp)
/* 21398 80030B98 0800E003 */  jr         $ra
/* 2139C 80030B9C 4000BD27 */   addiu     $sp, $sp, 0x40
.size ParticleSnowInit, . - ParticleSnowInit
