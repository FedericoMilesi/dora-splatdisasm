.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel PrintC
/* 4924C 80058A4C 0C00A7AF */  sw         $a3, 0xC($sp)
/* 49250 80058A50 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* 49254 80058A54 1800B2AF */  sw         $s2, 0x18($sp)
/* 49258 80058A58 21900000 */  addu       $s2, $zero, $zero
/* 4925C 80058A5C 2400B5AF */  sw         $s5, 0x24($sp)
/* 49260 80058A60 FFFF1524 */  addiu      $s5, $zero, -0x1
/* 49264 80058A64 00440400 */  sll        $t0, $a0, 16
/* 49268 80058A68 1000B0AF */  sw         $s0, 0x10($sp)
/* 4926C 80058A6C 0B80103C */  lui        $s0, %hi(bufC.66)
/* 49270 80058A70 2000B4AF */  sw         $s4, 0x20($sp)
/* 49274 80058A74 18B61426 */  addiu      $s4, $s0, %lo(bufC.66)
/* 49278 80058A78 21208002 */  addu       $a0, $s4, $zero
/* 4927C 80058A7C 001C0500 */  sll        $v1, $a1, 16
/* 49280 80058A80 2128E000 */  addu       $a1, $a3, $zero
/* 49284 80058A84 00140600 */  sll        $v0, $a2, 16
/* 49288 80058A88 4800A627 */  addiu      $a2, $sp, 0x48
/* 4928C 80058A8C 2C00B7AF */  sw         $s7, 0x2C($sp)
/* 49290 80058A90 03BC0800 */  sra        $s7, $t0, 16
/* 49294 80058A94 3000BEAF */  sw         $fp, 0x30($sp)
/* 49298 80058A98 03F40300 */  sra        $fp, $v1, 16
/* 4929C 80058A9C 2800B6AF */  sw         $s6, 0x28($sp)
/* 492A0 80058AA0 03B40200 */  sra        $s6, $v0, 16
/* 492A4 80058AA4 3400BFAF */  sw         $ra, 0x34($sp)
/* 492A8 80058AA8 1C00B3AF */  sw         $s3, 0x1C($sp)
/* 492AC 80058AAC 1400B1AF */  sw         $s1, 0x14($sp)
/* 492B0 80058AB0 7F61010C */  jal        pssprintf
/* 492B4 80058AB4 4400A7AF */   sw        $a3, 0x44($sp)
/* 492B8 80058AB8 21208002 */  addu       $a0, $s4, $zero
/* 492BC 80058ABC 5C10828F */  lw         $v0, %gp_rel(gTextCurrentFontIndex)($gp)
/* 492C0 80058AC0 8810838F */  lw         $v1, %gp_rel(gppTextFonts)($gp)
/* 492C4 80058AC4 80100200 */  sll        $v0, $v0, 2
/* 492C8 80058AC8 21104300 */  addu       $v0, $v0, $v1
/* 492CC 80058ACC 0000458C */  lw         $a1, 0x0($v0)
/* 492D0 80058AD0 00000000 */  nop
/* 492D4 80058AD4 1800B394 */  lhu        $s3, 0x18($a1)
/* 492D8 80058AD8 A3C2010C */  jal        strlen
/* 492DC 80058ADC 21880000 */   addu      $s1, $zero, $zero
/* 492E0 80058AE0 21304000 */  addu       $a2, $v0, $zero
/* 492E4 80058AE4 3300C018 */  blez       $a2, .L80058BB4
/* 492E8 80058AE8 21380002 */   addu      $a3, $s0, $zero
/* 492EC 80058AEC 18B6E390 */  lbu        $v1, %lo(bufC.66)($a3)
/* 492F0 80058AF0 0A000224 */  addiu      $v0, $zero, 0xA
/* 492F4 80058AF4 30006210 */  beq        $v1, $v0, .L80058BB8
/* 492F8 80058AF8 23105302 */   subu      $v0, $s2, $s3
/* 492FC 80058AFC 21808002 */  addu       $s0, $s4, $zero
/* 49300 80058B00 7C000A24 */  addiu      $t2, $zero, 0x7C
/* 49304 80058B04 0A000924 */  addiu      $t1, $zero, 0xA
/* 49308 80058B08 5C10828F */  lw         $v0, %gp_rel(gTextCurrentFontIndex)($gp)
/* 4930C 80058B0C 8810838F */  lw         $v1, %gp_rel(gppTextFonts)($gp)
/* 49310 80058B10 80100200 */  sll        $v0, $v0, 2
/* 49314 80058B14 21404300 */  addu       $t0, $v0, $v1
.L80058B18:
/* 49318 80058B18 21103002 */  addu       $v0, $s1, $s0
/* 4931C 80058B1C 00004390 */  lbu        $v1, 0x0($v0)
/* 49320 80058B20 00000000 */  nop
/* 49324 80058B24 11006A14 */  bne        $v1, $t2, .L80058B6C
/* 49328 80058B28 01002526 */   addiu     $a1, $s1, 0x1
/* 4932C 80058B2C 2120B000 */  addu       $a0, $a1, $s0
/* 49330 80058B30 00008390 */  lbu        $v1, 0x0($a0)
/* 49334 80058B34 00000000 */  nop
/* 49338 80058B38 3000622C */  sltiu      $v0, $v1, 0x30
/* 4933C 80058B3C 0A004014 */  bnez       $v0, .L80058B68
/* 49340 80058B40 21103002 */   addu      $v0, $s1, $s0
/* 49344 80058B44 3A00622C */  sltiu      $v0, $v1, 0x3A
/* 49348 80058B48 06004010 */  beqz       $v0, .L80058B64
/* 4934C 80058B4C FFFF4232 */   andi      $v0, $s2, 0xFFFF
/* 49350 80058B50 00008390 */  lbu        $v1, 0x0($a0)
/* 49354 80058B54 FFFFB130 */  andi       $s1, $a1, 0xFFFF
/* 49358 80058B58 D0FF6324 */  addiu      $v1, $v1, -0x30
/* 4935C 80058B5C E2620108 */  j          .L80058B88
/* 49360 80058B60 23104300 */   subu      $v0, $v0, $v1
.L80058B64:
/* 49364 80058B64 21103002 */  addu       $v0, $s1, $s0
.L80058B68:
/* 49368 80058B68 00004390 */  lbu        $v1, 0x0($v0)
.L80058B6C:
/* 4936C 80058B6C 0000048D */  lw         $a0, 0x0($t0)
/* 49370 80058B70 80180300 */  sll        $v1, $v1, 2
/* 49374 80058B74 21208300 */  addu       $a0, $a0, $v1
/* 49378 80058B78 20008290 */  lbu        $v0, 0x20($a0)
/* 4937C 80058B7C 00000000 */  nop
/* 49380 80058B80 21106202 */  addu       $v0, $s3, $v0
/* 49384 80058B84 21104202 */  addu       $v0, $s2, $v0
.L80058B88:
/* 49388 80058B88 00140200 */  sll        $v0, $v0, 16
/* 4938C 80058B8C 03940200 */  sra        $s2, $v0, 16
/* 49390 80058B90 01002226 */  addiu      $v0, $s1, 0x1
/* 49394 80058B94 FFFF5130 */  andi       $s1, $v0, 0xFFFF
/* 49398 80058B98 2A182602 */  slt        $v1, $s1, $a2
/* 4939C 80058B9C 05006010 */  beqz       $v1, .L80058BB4
/* 493A0 80058BA0 21103002 */   addu      $v0, $s1, $s0
/* 493A4 80058BA4 00004390 */  lbu        $v1, 0x0($v0)
/* 493A8 80058BA8 00000000 */  nop
/* 493AC 80058BAC DAFF6914 */  bne        $v1, $t1, .L80058B18
/* 493B0 80058BB0 00000000 */   nop
.L80058BB4:
/* 493B4 80058BB4 23105302 */  subu       $v0, $s2, $s3
.L80058BB8:
/* 493B8 80058BB8 00140200 */  sll        $v0, $v0, 16
/* 493BC 80058BBC 03940200 */  sra        $s2, $v0, 16
/* 493C0 80058BC0 21880000 */  addu       $s1, $zero, $zero
/* 493C4 80058BC4 C2170200 */  srl        $v0, $v0, 31
/* 493C8 80058BC8 21104202 */  addu       $v0, $s2, $v0
/* 493CC 80058BCC C0130200 */  sll        $v0, $v0, 15
/* 493D0 80058BD0 03140200 */  sra        $v0, $v0, 16
/* 493D4 80058BD4 1100C018 */  blez       $a2, .L80058C1C
/* 493D8 80058BD8 2328E202 */   subu      $a1, $s7, $v0
/* 493DC 80058BDC 18B6E390 */  lbu        $v1, %lo(bufC.66)($a3)
/* 493E0 80058BE0 0A000224 */  addiu      $v0, $zero, 0xA
/* 493E4 80058BE4 03006214 */  bne        $v1, $v0, .L80058BF4
/* 493E8 80058BE8 01002226 */   addiu     $v0, $s1, 0x1
/* 493EC 80058BEC 07630108 */  j          .L80058C1C
/* 493F0 80058BF0 21A80000 */   addu      $s5, $zero, $zero
.L80058BF4:
/* 493F4 80058BF4 FFFF5130 */  andi       $s1, $v0, 0xFFFF
/* 493F8 80058BF8 2A182602 */  slt        $v1, $s1, $a2
/* 493FC 80058BFC 07006010 */  beqz       $v1, .L80058C1C
/* 49400 80058C00 18B6E224 */   addiu     $v0, $a3, %lo(bufC.66)
/* 49404 80058C04 21102202 */  addu       $v0, $s1, $v0
/* 49408 80058C08 00004490 */  lbu        $a0, 0x0($v0)
/* 4940C 80058C0C 0A000324 */  addiu      $v1, $zero, 0xA
/* 49410 80058C10 F8FF8314 */  bne        $a0, $v1, .L80058BF4
/* 49414 80058C14 01002226 */   addiu     $v0, $s1, 0x1
/* 49418 80058C18 21A82002 */  addu       $s5, $s1, $zero
.L80058C1C:
/* 4941C 80058C1C 0300A006 */  bltz       $s5, .L80058C2C
/* 49420 80058C20 18B6E224 */   addiu     $v0, $a3, %lo(bufC.66)
/* 49424 80058C24 2110A202 */  addu       $v0, $s5, $v0
/* 49428 80058C28 000040A0 */  sb         $zero, 0x0($v0)
.L80058C2C:
/* 4942C 80058C2C 18B6F024 */  addiu      $s0, $a3, %lo(bufC.66)
/* 49430 80058C30 21200002 */  addu       $a0, $s0, $zero
/* 49434 80058C34 2130C003 */  addu       $a2, $fp, $zero
/* 49438 80058C38 EA60010C */  jal        TextAddString
/* 4943C 80058C3C 2138C002 */   addu      $a3, $s6, $zero
/* 49440 80058C40 1300A006 */  bltz       $s5, .L80058C90
/* 49444 80058C44 2120E002 */   addu      $a0, $s7, $zero
/* 49448 80058C48 2130C002 */  addu       $a2, $s6, $zero
/* 4944C 80058C4C 2128B002 */  addu       $a1, $s5, $s0
/* 49450 80058C50 0A000324 */  addiu      $v1, $zero, 0xA
/* 49454 80058C54 01000726 */  addiu      $a3, $s0, 0x1
/* 49458 80058C58 0000A3A0 */  sb         $v1, 0x0($a1)
/* 4945C 80058C5C 5C10828F */  lw         $v0, %gp_rel(gTextCurrentFontIndex)($gp)
/* 49460 80058C60 8810838F */  lw         $v1, %gp_rel(gppTextFonts)($gp)
/* 49464 80058C64 80100200 */  sll        $v0, $v0, 2
/* 49468 80058C68 21104300 */  addu       $v0, $v0, $v1
/* 4946C 80058C6C 0000438C */  lw         $v1, 0x0($v0)
/* 49470 80058C70 21382702 */  addu       $a3, $s1, $a3
/* 49474 80058C74 1C00658C */  lw         $a1, 0x1C($v1)
/* 49478 80058C78 0000628C */  lw         $v0, 0x0($v1)
/* 4947C 80058C7C 2128C503 */  addu       $a1, $fp, $a1
/* 49480 80058C80 2128A200 */  addu       $a1, $a1, $v0
/* 49484 80058C84 002C0500 */  sll        $a1, $a1, 16
/* 49488 80058C88 9362010C */  jal        PrintC
/* 4948C 80058C8C 032C0500 */   sra       $a1, $a1, 16
.L80058C90:
/* 49490 80058C90 3400BF8F */  lw         $ra, 0x34($sp)
/* 49494 80058C94 3000BE8F */  lw         $fp, 0x30($sp)
/* 49498 80058C98 2C00B78F */  lw         $s7, 0x2C($sp)
/* 4949C 80058C9C 2800B68F */  lw         $s6, 0x28($sp)
/* 494A0 80058CA0 2400B58F */  lw         $s5, 0x24($sp)
/* 494A4 80058CA4 2000B48F */  lw         $s4, 0x20($sp)
/* 494A8 80058CA8 1C00B38F */  lw         $s3, 0x1C($sp)
/* 494AC 80058CAC 1800B28F */  lw         $s2, 0x18($sp)
/* 494B0 80058CB0 1400B18F */  lw         $s1, 0x14($sp)
/* 494B4 80058CB4 1000B08F */  lw         $s0, 0x10($sp)
/* 494B8 80058CB8 0800E003 */  jr         $ra
/* 494BC 80058CBC 3800BD27 */   addiu     $sp, $sp, 0x38
.size PrintC, . - PrintC
