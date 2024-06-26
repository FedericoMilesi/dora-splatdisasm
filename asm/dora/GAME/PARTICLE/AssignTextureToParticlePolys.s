.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel AssignTextureToParticlePolys
/* 19A10 80029210 F0FFBD27 */  addiu      $sp, $sp, -0x10
/* 19A14 80029214 C4138393 */  lbu        $v1, %gp_rel(TEMPR)($gp)
/* 19A18 80029218 21688000 */  addu       $t5, $a0, $zero
/* 19A1C 8002921C 0800B2AF */  sw         $s2, 0x8($sp)
/* 19A20 80029220 0400B1AF */  sw         $s1, 0x4($sp)
/* 19A24 80029224 0000B0AF */  sw         $s0, 0x0($sp)
/* 19A28 80029228 4000A78D */  lw         $a3, 0x40($t5)
/* 19A2C 8002922C 0000A88C */  lw         $t0, 0x0($a1)
/* 19A30 80029230 0400B98C */  lw         $t9, 0x4($a1)
/* 19A34 80029234 0800AA8C */  lw         $t2, 0x8($a1)
/* 19A38 80029238 0C00A98C */  lw         $t1, 0xC($a1)
/* 19A3C 8002923C 1000B88C */  lw         $t8, 0x10($a1)
/* 19A40 80029240 4C00A3A1 */  sb         $v1, 0x4C($t5)
/* 19A44 80029244 C0138293 */  lbu        $v0, %gp_rel(TEMPG)($gp)
/* 19A48 80029248 00000000 */  nop
/* 19A4C 8002924C 4D00A2A1 */  sb         $v0, 0x4D($t5)
/* 19A50 80029250 BC138393 */  lbu        $v1, %gp_rel(TEMPB)($gp)
/* 19A54 80029254 0800A28D */  lw         $v0, 0x8($t5)
/* 19A58 80029258 21300000 */  addu       $a2, $zero, $zero
/* 19A5C 8002925C 4E004018 */  blez       $v0, .L80029398
/* 19A60 80029260 4E00A3A1 */   sb        $v1, 0x4E($t5)
/* 19A64 80029264 80100800 */  sll        $v0, $t0, 2
/* 19A68 80029268 0C80043C */  lui        $a0, %hi(VRAMItems)
/* 19A6C 8002926C 38AD8424 */  addiu      $a0, $a0, %lo(VRAMItems)
/* 19A70 80029270 21104800 */  addu       $v0, $v0, $t0
/* 19A74 80029274 80100200 */  sll        $v0, $v0, 2
/* 19A78 80029278 08008324 */  addiu      $v1, $a0, 0x8
/* 19A7C 8002927C 21784300 */  addu       $t7, $v0, $v1
/* 19A80 80029280 21284400 */  addu       $a1, $v0, $a0
/* 19A84 80029284 03000333 */  andi       $v1, $t8, 0x3
/* 19A88 80029288 40710300 */  sll        $t6, $v1, 5
/* 19A8C 8002928C 09001224 */  addiu      $s2, $zero, 0x9
/* 19A90 80029290 2C001124 */  addiu      $s1, $zero, 0x2C
/* 19A94 80029294 2E001024 */  addiu      $s0, $zero, 0x2E
.L80029298:
/* 19A98 80029298 0100CB24 */  addiu      $t3, $a2, 0x1
/* 19A9C 8002929C 7400EC24 */  addiu      $t4, $a3, 0x74
/* 19AA0 800292A0 1C00E624 */  addiu      $a2, $a3, 0x1C
/* 19AA4 800292A4 01000824 */  addiu      $t0, $zero, 0x1
.L800292A8:
/* 19AA8 800292A8 0300D2A0 */  sb         $s2, 0x3($a2)
/* 19AAC 800292AC 0700D1A0 */  sb         $s1, 0x7($a2)
/* 19AB0 800292B0 C4138293 */  lbu        $v0, %gp_rel(TEMPR)($gp)
/* 19AB4 800292B4 00000000 */  nop
/* 19AB8 800292B8 0400C2A0 */  sb         $v0, 0x4($a2)
/* 19ABC 800292BC C0138393 */  lbu        $v1, %gp_rel(TEMPG)($gp)
/* 19AC0 800292C0 00000000 */  nop
/* 19AC4 800292C4 0500C3A0 */  sb         $v1, 0x5($a2)
/* 19AC8 800292C8 BC138293 */  lbu        $v0, %gp_rel(TEMPB)($gp)
/* 19ACC 800292CC 00000000 */  nop
/* 19AD0 800292D0 0600C2A0 */  sb         $v0, 0x6($a2)
/* 19AD4 800292D4 0000E795 */  lhu        $a3, 0x0($t7)
/* 19AD8 800292D8 0E00D9A4 */  sh         $t9, 0xE($a2)
/* 19ADC 800292DC 1600C7A4 */  sh         $a3, 0x16($a2)
/* 19AE0 800292E0 0E00A290 */  lbu        $v0, 0xE($a1)
/* 19AE4 800292E4 00000000 */  nop
/* 19AE8 800292E8 0C00C2A0 */  sb         $v0, 0xC($a2)
/* 19AEC 800292EC 0F00A390 */  lbu        $v1, 0xF($a1)
/* 19AF0 800292F0 00000000 */  nop
/* 19AF4 800292F4 0D00C3A0 */  sb         $v1, 0xD($a2)
/* 19AF8 800292F8 0E00A290 */  lbu        $v0, 0xE($a1)
/* 19AFC 800292FC 00000000 */  nop
/* 19B00 80029300 21104A00 */  addu       $v0, $v0, $t2
/* 19B04 80029304 FFFF4224 */  addiu      $v0, $v0, -0x1
/* 19B08 80029308 1400C2A0 */  sb         $v0, 0x14($a2)
/* 19B0C 8002930C 0F00A390 */  lbu        $v1, 0xF($a1)
/* 19B10 80029310 00000000 */  nop
/* 19B14 80029314 1500C3A0 */  sb         $v1, 0x15($a2)
/* 19B18 80029318 0E00A490 */  lbu        $a0, 0xE($a1)
/* 19B1C 8002931C 00000000 */  nop
/* 19B20 80029320 1C00C4A0 */  sb         $a0, 0x1C($a2)
/* 19B24 80029324 0F00A290 */  lbu        $v0, 0xF($a1)
/* 19B28 80029328 00000000 */  nop
/* 19B2C 8002932C 21104900 */  addu       $v0, $v0, $t1
/* 19B30 80029330 FFFF4224 */  addiu      $v0, $v0, -0x1
/* 19B34 80029334 1D00C2A0 */  sb         $v0, 0x1D($a2)
/* 19B38 80029338 0E00A390 */  lbu        $v1, 0xE($a1)
/* 19B3C 8002933C 00000000 */  nop
/* 19B40 80029340 21186A00 */  addu       $v1, $v1, $t2
/* 19B44 80029344 FFFF6324 */  addiu      $v1, $v1, -0x1
/* 19B48 80029348 2400C3A0 */  sb         $v1, 0x24($a2)
/* 19B4C 8002934C 0F00A290 */  lbu        $v0, 0xF($a1)
/* 19B50 80029350 00000000 */  nop
/* 19B54 80029354 21104900 */  addu       $v0, $v0, $t1
/* 19B58 80029358 FFFF4224 */  addiu      $v0, $v0, -0x1
/* 19B5C 8002935C 05000013 */  beqz       $t8, .L80029374
/* 19B60 80029360 2500C2A0 */   sb        $v0, 0x25($a2)
/* 19B64 80029364 9FFFE230 */  andi       $v0, $a3, 0xFF9F
/* 19B68 80029368 25104E00 */  or         $v0, $v0, $t6
/* 19B6C 8002936C 0700D0A0 */  sb         $s0, 0x7($a2)
/* 19B70 80029370 1600C2A4 */  sh         $v0, 0x16($a2)
.L80029374:
/* 19B74 80029374 FFFF0825 */  addiu      $t0, $t0, -0x1
/* 19B78 80029378 CBFF0105 */  bgez       $t0, .L800292A8
/* 19B7C 8002937C 2800C624 */   addiu     $a2, $a2, 0x28
/* 19B80 80029380 21306001 */  addu       $a2, $t3, $zero
/* 19B84 80029384 0800A28D */  lw         $v0, 0x8($t5)
/* 19B88 80029388 00000000 */  nop
/* 19B8C 8002938C 2A10C200 */  slt        $v0, $a2, $v0
/* 19B90 80029390 C1FF4014 */  bnez       $v0, .L80029298
/* 19B94 80029394 21388001 */   addu      $a3, $t4, $zero
.L80029398:
/* 19B98 80029398 0800B28F */  lw         $s2, 0x8($sp)
/* 19B9C 8002939C 0400B18F */  lw         $s1, 0x4($sp)
/* 19BA0 800293A0 0000B08F */  lw         $s0, 0x0($sp)
/* 19BA4 800293A4 0800E003 */  jr         $ra
/* 19BA8 800293A8 1000BD27 */   addiu     $sp, $sp, 0x10
.size AssignTextureToParticlePolys, . - AssignTextureToParticlePolys
