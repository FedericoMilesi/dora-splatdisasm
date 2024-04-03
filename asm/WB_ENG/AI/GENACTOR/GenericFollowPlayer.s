.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel GenericFollowPlayer
/* 39260 80048A60 78FFBD27 */  addiu      $sp, $sp, -0x88
/* 39264 80048A64 6000B0AF */  sw         $s0, 0x60($sp)
/* 39268 80048A68 0980103C */  lui        $s0, %hi(ETActor)
/* 3926C 80048A6C B05A068E */  lw         $a2, %lo(ETActor)($s0)
/* 39270 80048A70 6400B1AF */  sw         $s1, 0x64($sp)
/* 39274 80048A74 21888000 */  addu       $s1, $a0, $zero
/* 39278 80048A78 6800B2AF */  sw         $s2, 0x68($sp)
/* 3927C 80048A7C B05A1226 */  addiu      $s2, $s0, %lo(ETActor)
/* 39280 80048A80 8400BFAF */  sw         $ra, 0x84($sp)
/* 39284 80048A84 8000BEAF */  sw         $fp, 0x80($sp)
/* 39288 80048A88 7C00B7AF */  sw         $s7, 0x7C($sp)
/* 3928C 80048A8C 7800B6AF */  sw         $s6, 0x78($sp)
/* 39290 80048A90 7400B5AF */  sw         $s5, 0x74($sp)
/* 39294 80048A94 7000B4AF */  sw         $s4, 0x70($sp)
/* 39298 80048A98 6C00B3AF */  sw         $s3, 0x6C($sp)
/* 3929C 80048A9C 0000228E */  lw         $v0, 0x0($s1)
/* 392A0 80048AA0 2401348E */  lw         $s4, 0x124($s1)
/* 392A4 80048AA4 0800238E */  lw         $v1, 0x8($s1)
/* 392A8 80048AA8 2330C200 */  subu       $a2, $a2, $v0
/* 392AC 80048AAC 0800428E */  lw         $v0, 0x8($s2)
/* 392B0 80048AB0 1000938E */  lw         $s3, 0x10($s4)
/* 392B4 80048AB4 0000958E */  lw         $s5, 0x0($s4)
/* 392B8 80048AB8 2120C000 */  addu       $a0, $a2, $zero
/* 392BC 80048ABC 5000A6AF */  sw         $a2, 0x50($sp)
/* 392C0 80048AC0 23104300 */  subu       $v0, $v0, $v1
/* 392C4 80048AC4 21284000 */  addu       $a1, $v0, $zero
/* 392C8 80048AC8 FEE9000C */  jal        DistApprox_2d
/* 392CC 80048ACC 5800A2AF */   sw        $v0, 0x58($sp)
/* 392D0 80048AD0 6C003726 */  addiu      $s7, $s1, 0x6C
/* 392D4 80048AD4 2120E002 */  addu       $a0, $s7, $zero
/* 392D8 80048AD8 B05A038E */  lw         $v1, %lo(ETActor)($s0)
/* 392DC 80048ADC 0400458E */  lw         $a1, 0x4($s2)
/* 392E0 80048AE0 0800468E */  lw         $a2, 0x8($s2)
/* 392E4 80048AE4 21B04000 */  addu       $s6, $v0, $zero
/* 392E8 80048AE8 4000A3AF */  sw         $v1, 0x40($sp)
/* 392EC 80048AEC 4400A5AF */  sw         $a1, 0x44($sp)
/* 392F0 80048AF0 73FB000C */  jal        MotionPhysics_Halt
/* 392F4 80048AF4 4800A6AF */   sw        $a2, 0x48($sp)
/* 392F8 80048AF8 4400238E */  lw         $v1, 0x44($s1)
/* 392FC 80048AFC 00000000 */  nop
/* 39300 80048B00 1C00628C */  lw         $v0, 0x1C($v1)
/* 39304 80048B04 00000000 */  nop
/* 39308 80048B08 00084230 */  andi       $v0, $v0, 0x800
/* 3930C 80048B0C 22004010 */  beqz       $v0, .L80048B98
/* 39310 80048B10 21F00000 */   addu      $fp, $zero, $zero
/* 39314 80048B14 9C00448E */  lw         $a0, 0x9C($s2)
/* 39318 80048B18 A400458E */  lw         $a1, 0xA4($s2)
/* 3931C 80048B1C FEE9000C */  jal        DistApprox_2d
/* 39320 80048B20 80111524 */   addiu     $s5, $zero, 0x1180
/* 39324 80048B24 FB90000C */  jal        GetPlayerRunSpeed
/* 39328 80048B28 00000000 */   nop
/* 3932C 80048B2C 21804000 */  addu       $s0, $v0, $zero
/* 39330 80048B30 0980033C */  lui        $v1, %hi(gGameState)
/* 39334 80048B34 8456638C */  lw         $v1, %lo(gGameState)($v1)
/* 39338 80048B38 0A000224 */  addiu      $v0, $zero, 0xA
/* 3933C 80048B3C 10006214 */  bne        $v1, $v0, .L80048B80
/* 39340 80048B40 2120E002 */   addu      $a0, $s7, $zero
/* 39344 80048B44 7000458E */  lw         $a1, 0x70($s2)
/* 39348 80048B48 00000000 */  nop
/* 3934C 80048B4C 80FFA524 */  addiu      $a1, $a1, -0x80
/* 39350 80048B50 000025AE */  sw         $a1, 0x0($s1)
/* 39354 80048B54 7400468E */  lw         $a2, 0x74($s2)
/* 39358 80048B58 00000000 */  nop
/* 3935C 80048B5C 040026AE */  sw         $a2, 0x4($s1)
/* 39360 80048B60 7800428E */  lw         $v0, 0x78($s2)
/* 39364 80048B64 00000000 */  nop
/* 39368 80048B68 21384000 */  addu       $a3, $v0, $zero
/* 3936C 80048B6C 77FB000C */  jal        MotionPhysics_SetPosition
/* 39370 80048B70 080022AE */   sw        $v0, 0x8($s1)
/* 39374 80048B74 03000324 */  addiu      $v1, $zero, 0x3
/* 39378 80048B78 E7220108 */  j          .L80048B9C
/* 3937C 80048B7C 140083AE */   sw        $v1, 0x14($s4)
.L80048B80:
/* 39380 80048B80 8068000C */  jal        CheckETStateFORStopEnemyAI
/* 39384 80048B84 00000000 */   nop
/* 39388 80048B88 04004010 */  beqz       $v0, .L80048B9C
/* 3938C 80048B8C 08000224 */   addiu     $v0, $zero, 0x8
/* 39390 80048B90 E7220108 */  j          .L80048B9C
/* 39394 80048B94 140082AE */   sw        $v0, 0x14($s4)
.L80048B98:
/* 39398 80048B98 2180A002 */  addu       $s0, $s5, $zero
.L80048B9C:
/* 3939C 80048B9C 1400838E */  lw         $v1, 0x14($s4)
/* 393A0 80048BA0 00000000 */  nop
/* 393A4 80048BA4 0900622C */  sltiu      $v0, $v1, 0x9
/* 393A8 80048BA8 58014010 */  beqz       $v0, .L8004910C
/* 393AC 80048BAC 0180023C */   lui       $v0, %hi(jtbl_80012E24)
/* 393B0 80048BB0 242E4224 */  addiu      $v0, $v0, %lo(jtbl_80012E24)
/* 393B4 80048BB4 80180300 */  sll        $v1, $v1, 2
/* 393B8 80048BB8 21186200 */  addu       $v1, $v1, $v0
/* 393BC 80048BBC 0000648C */  lw         $a0, 0x0($v1)
/* 393C0 80048BC0 00000000 */  nop
/* 393C4 80048BC4 08008000 */  jr         $a0
/* 393C8 80048BC8 00000000 */   nop
jlabel .L80048BCC
/* 393CC 80048BCC 6400622A */  slti       $v0, $s3, 0x64
/* 393D0 80048BD0 02004010 */  beqz       $v0, .L80048BDC
/* 393D4 80048BD4 00000000 */   nop
/* 393D8 80048BD8 64001324 */  addiu      $s3, $zero, 0x64
.L80048BDC:
/* 393DC 80048BDC 4400238E */  lw         $v1, 0x44($s1)
/* 393E0 80048BE0 00000000 */  nop
/* 393E4 80048BE4 1C00628C */  lw         $v0, 0x1C($v1)
/* 393E8 80048BE8 00000000 */  nop
/* 393EC 80048BEC 00084230 */  andi       $v0, $v0, 0x800
/* 393F0 80048BF0 05004010 */  beqz       $v0, .L80048C08
/* 393F4 80048BF4 8700C22E */   sltiu     $v0, $s6, 0x87
/* 393F8 80048BF8 03004010 */  beqz       $v0, .L80048C08
/* 393FC 80048BFC 03000224 */   addiu     $v0, $zero, 0x3
/* 39400 80048C00 340080AE */  sw         $zero, 0x34($s4)
/* 39404 80048C04 140082AE */  sw         $v0, 0x14($s4)
.L80048C08:
/* 39408 80048C08 8401228E */  lw         $v0, 0x184($s1)
/* 3940C 80048C0C 00000000 */  nop
/* 39410 80048C10 1C00438C */  lw         $v1, 0x1C($v0)
/* 39414 80048C14 00000000 */  nop
/* 39418 80048C18 0D006010 */  beqz       $v1, .L80048C50
/* 3941C 80048C1C 2A107502 */   slt       $v0, $s3, $s5
/* 39420 80048C20 9B68000C */  jal        ISPlayerRunning
/* 39424 80048C24 00000000 */   nop
/* 39428 80048C28 03004010 */  beqz       $v0, .L80048C38
/* 3942C 80048C2C 0101C22E */   sltiu     $v0, $s6, 0x101
/* 39430 80048C30 05004010 */  beqz       $v0, .L80048C48
/* 39434 80048C34 04000224 */   addiu     $v0, $zero, 0x4
.L80048C38:
/* 39438 80048C38 8101C22E */  sltiu      $v0, $s6, 0x181
/* 3943C 80048C3C 04004014 */  bnez       $v0, .L80048C50
/* 39440 80048C40 2A107502 */   slt       $v0, $s3, $s5
/* 39444 80048C44 04000224 */  addiu      $v0, $zero, 0x4
.L80048C48:
/* 39448 80048C48 140082AE */  sw         $v0, 0x14($s4)
/* 3944C 80048C4C 2A107502 */  slt        $v0, $s3, $s5
.L80048C50:
/* 39450 80048C50 06004010 */  beqz       $v0, .L80048C6C
/* 39454 80048C54 2A10B302 */   slt       $v0, $s5, $s3
/* 39458 80048C58 AC0D828F */  lw         $v0, %gp_rel(GENERIC_ACC)($gp)
/* 3945C 80048C5C 00000000 */  nop
/* 39460 80048C60 21986202 */  addu       $s3, $s3, $v0
/* 39464 80048C64 23230108 */  j          .L80048C8C
/* 39468 80048C68 2A18B302 */   slt       $v1, $s5, $s3
.L80048C6C:
/* 3946C 80048C6C 0A004010 */  beqz       $v0, .L80048C98
/* 39470 80048C70 00000000 */   nop
/* 39474 80048C74 B40D828F */  lw         $v0, %gp_rel(GENERIC_DACC)($gp)
/* 39478 80048C78 00000000 */  nop
/* 3947C 80048C7C 18006202 */  mult       $s3, $v0
/* 39480 80048C80 12100000 */  mflo       $v0
/* 39484 80048C84 039C0200 */  sra        $s3, $v0, 16
/* 39488 80048C88 2A187502 */  slt        $v1, $s3, $s5
.L80048C8C:
/* 3948C 80048C8C 02006010 */  beqz       $v1, .L80048C98
/* 39490 80048C90 00000000 */   nop
/* 39494 80048C94 2198A002 */  addu       $s3, $s5, $zero
.L80048C98:
/* 39498 80048C98 B80D828F */  lw         $v0, %gp_rel(g_friendlylost)($gp)
/* 3949C 80048C9C 00000000 */  nop
/* 394A0 80048CA0 0F004010 */  beqz       $v0, .L80048CE0
/* 394A4 80048CA4 0103C22E */   sltiu     $v0, $s6, 0x301
/* 394A8 80048CA8 0E004014 */  bnez       $v0, .L80048CE4
/* 394AC 80048CAC 01000224 */   addiu     $v0, $zero, 0x1
/* 394B0 80048CB0 4400238E */  lw         $v1, 0x44($s1)
/* 394B4 80048CB4 00000000 */  nop
/* 394B8 80048CB8 1C00628C */  lw         $v0, 0x1C($v1)
/* 394BC 80048CBC 00000000 */  nop
/* 394C0 80048CC0 00084230 */  andi       $v0, $v0, 0x800
/* 394C4 80048CC4 06004010 */  beqz       $v0, .L80048CE0
/* 394C8 80048CC8 08000224 */   addiu     $v0, $zero, 0x8
/* 394CC 80048CCC 140082AE */  sw         $v0, 0x14($s4)
/* 394D0 80048CD0 13100424 */  addiu      $a0, $zero, 0x1013
/* 394D4 80048CD4 21282002 */  addu       $a1, $s1, $zero
/* 394D8 80048CD8 6F4A010C */  jal        pxm_sendevent
/* 394DC 80048CDC 21300000 */   addu      $a2, $zero, $zero
.L80048CE0:
/* 394E0 80048CE0 01000224 */  addiu      $v0, $zero, 0x1
.L80048CE4:
/* 394E4 80048CE4 440122AE */  sw         $v0, 0x144($s1)
/* 394E8 80048CE8 21202002 */  addu       $a0, $s1, $zero
/* 394EC 80048CEC 01000524 */  addiu      $a1, $zero, 0x1
/* 394F0 80048CF0 04000624 */  addiu      $a2, $zero, 0x4
/* 394F4 80048CF4 ADE3000C */  jal        CheckAnimWithInterp
/* 394F8 80048CF8 2C012726 */   addiu     $a3, $s1, 0x12C
/* 394FC 80048CFC 44240108 */  j          .L80049110
/* 39500 80048D00 00000000 */   nop
jlabel .L80048D04
/* 39504 80048D04 2025010C */  jal        CommonActorPostBrains
/* 39508 80048D08 21202002 */   addu      $a0, $s1, $zero
/* 3950C 80048D0C 2401328E */  lw         $s2, 0x124($s1)
/* 39510 80048D10 8401238E */  lw         $v1, 0x184($s1)
/* 39514 80048D14 3400508E */  lw         $s0, 0x34($s2)
/* 39518 80048D18 21F04000 */  addu       $fp, $v0, $zero
/* 3951C 80048D1C 440120AE */  sw         $zero, 0x144($s1)
/* 39520 80048D20 2400628C */  lw         $v0, 0x24($v1)
/* 39524 80048D24 00000000 */  nop
/* 39528 80048D28 21004010 */  beqz       $v0, .L80048DB0
/* 3952C 80048D2C 21980000 */   addu      $s3, $zero, $zero
/* 39530 80048D30 12000012 */  beqz       $s0, .L80048D7C
/* 39534 80048D34 FFFF1026 */   addiu     $s0, $s0, -0x1
/* 39538 80048D38 2C000016 */  bnez       $s0, .L80048DEC
/* 3953C 80048D3C 08000224 */   addiu     $v0, $zero, 0x8
/* 39540 80048D40 3C01238E */  lw         $v1, 0x13C($s1)
/* 39544 80048D44 00000000 */  nop
/* 39548 80048D48 05006210 */  beq        $v1, $v0, .L80048D60
/* 3954C 80048D4C 21202002 */   addu      $a0, $s1, $zero
/* 39550 80048D50 08000524 */  addiu      $a1, $zero, 0x8
/* 39554 80048D54 04000624 */  addiu      $a2, $zero, 0x4
/* 39558 80048D58 8FE2000C */  jal        SetAnimWithInterp
/* 3955C 80048D5C 2C012726 */   addiu     $a3, $s1, 0x12C
.L80048D60:
/* 39560 80048D60 D140010C */  jal        u32Random
/* 39564 80048D64 0A000424 */   addiu     $a0, $zero, 0xA
/* 39568 80048D68 05004224 */  addiu      $v0, $v0, 0x5
/* 3956C 80048D6C 00190200 */  sll        $v1, $v0, 4
/* 39570 80048D70 23186200 */  subu       $v1, $v1, $v0
/* 39574 80048D74 7B230108 */  j          .L80048DEC
/* 39578 80048D78 40800300 */   sll       $s0, $v1, 1
.L80048D7C:
/* 3957C 80048D7C D140010C */  jal        u32Random
/* 39580 80048D80 0A000424 */   addiu     $a0, $zero, 0xA
/* 39584 80048D84 05004224 */  addiu      $v0, $v0, 0x5
/* 39588 80048D88 00190200 */  sll        $v1, $v0, 4
/* 3958C 80048D8C 23186200 */  subu       $v1, $v1, $v0
/* 39590 80048D90 40800300 */  sll        $s0, $v1, 1
/* 39594 80048D94 21202002 */  addu       $a0, $s1, $zero
/* 39598 80048D98 21280000 */  addu       $a1, $zero, $zero
/* 3959C 80048D9C 04000624 */  addiu      $a2, $zero, 0x4
/* 395A0 80048DA0 8FE2000C */  jal        SetAnimWithInterp
/* 395A4 80048DA4 2C012726 */   addiu     $a3, $s1, 0x12C
/* 395A8 80048DA8 7C230108 */  j          .L80048DF0
/* 395AC 80048DAC 340050AE */   sw        $s0, 0x34($s2)
.L80048DB0:
/* 395B0 80048DB0 5401228E */  lw         $v0, 0x154($s1)
/* 395B4 80048DB4 00000000 */  nop
/* 395B8 80048DB8 02004230 */  andi       $v0, $v0, 0x2
/* 395BC 80048DBC 0B004014 */  bnez       $v0, .L80048DEC
/* 395C0 80048DC0 00000000 */   nop
/* 395C4 80048DC4 3C01238E */  lw         $v1, 0x13C($s1)
/* 395C8 80048DC8 00000000 */  nop
/* 395CC 80048DCC 07006010 */  beqz       $v1, .L80048DEC
/* 395D0 80048DD0 10000224 */   addiu     $v0, $zero, 0x10
/* 395D4 80048DD4 05006210 */  beq        $v1, $v0, .L80048DEC
/* 395D8 80048DD8 21202002 */   addu      $a0, $s1, $zero
/* 395DC 80048DDC 21280000 */  addu       $a1, $zero, $zero
/* 395E0 80048DE0 04000624 */  addiu      $a2, $zero, 0x4
/* 395E4 80048DE4 8FE2000C */  jal        SetAnimWithInterp
/* 395E8 80048DE8 2C012726 */   addiu     $a3, $s1, 0x12C
.L80048DEC:
/* 395EC 80048DEC 340050AE */  sw         $s0, 0x34($s2)
.L80048DF0:
/* 395F0 80048DF0 03131E00 */  sra        $v0, $fp, 12
/* 395F4 80048DF4 01004230 */  andi       $v0, $v0, 0x1
/* 395F8 80048DF8 C5004010 */  beqz       $v0, .L80049110
/* 395FC 80048DFC 00000000 */   nop
/* 39600 80048E00 44240108 */  j          .L80049110
/* 39604 80048E04 140080AE */   sw        $zero, 0x14($s4)
jlabel .L80048E08
/* 39608 80048E08 6527010C */  jal        GetBackonTrack
/* 3960C 80048E0C 21202002 */   addu      $a0, $s1, $zero
/* 39610 80048E10 0A80033C */  lui        $v1, %hi(FollowTrackPath)
/* 39614 80048E14 C84E628C */  lw         $v0, %lo(FollowTrackPath)($v1)
/* 39618 80048E18 00000000 */  nop
/* 3961C 80048E1C 0000448C */  lw         $a0, 0x0($v0)
/* 39620 80048E20 01000324 */  addiu      $v1, $zero, 0x1
/* 39624 80048E24 07008314 */  bne        $a0, $v1, .L80048E44
/* 39628 80048E28 06000224 */   addiu     $v0, $zero, 0x6
/* 3962C 80048E2C B80D828F */  lw         $v0, %gp_rel(g_friendlylost)($gp)
/* 39630 80048E30 00000000 */  nop
/* 39634 80048E34 B5004010 */  beqz       $v0, .L8004910C
/* 39638 80048E38 08000224 */   addiu     $v0, $zero, 0x8
/* 3963C 80048E3C 44240108 */  j          .L80049110
/* 39640 80048E40 140082AE */   sw        $v0, 0x14($s4)
.L80048E44:
/* 39644 80048E44 44240108 */  j          .L80049110
/* 39648 80048E48 140082AE */   sw        $v0, 0x14($s4)
jlabel .L80048E4C
/* 3964C 80048E4C 21202002 */  addu       $a0, $s1, $zero
/* 39650 80048E50 01000524 */  addiu      $a1, $zero, 0x1
/* 39654 80048E54 04000624 */  addiu      $a2, $zero, 0x4
/* 39658 80048E58 8FE2000C */  jal        SetAnimWithInterp
/* 3965C 80048E5C 2C012726 */   addiu     $a3, $s1, 0x12C
/* 39660 80048E60 01000224 */  addiu      $v0, $zero, 0x1
/* 39664 80048E64 440122AE */  sw         $v0, 0x144($s1)
/* 39668 80048E68 21202002 */  addu       $a0, $s1, $zero
/* 3966C 80048E6C 0A80023C */  lui        $v0, %hi(FollowTrackPath)
/* 39670 80048E70 C84E5024 */  addiu      $s0, $v0, %lo(FollowTrackPath)
/* 39674 80048E74 AF12010C */  jal        PathBrain
/* 39678 80048E78 21280002 */   addu      $a1, $s0, $zero
/* 3967C 80048E7C 2025010C */  jal        CommonActorPostBrains
/* 39680 80048E80 21202002 */   addu      $a0, $s1, $zero
/* 39684 80048E84 21F04000 */  addu       $fp, $v0, $zero
/* 39688 80048E88 83141E00 */  sra        $v0, $fp, 18
/* 3968C 80048E8C 02004010 */  beqz       $v0, .L80048E98
/* 39690 80048E90 08000224 */   addiu     $v0, $zero, 0x8
/* 39694 80048E94 140082AE */  sw         $v0, 0x14($s4)
.L80048E98:
/* 39698 80048E98 D913010C */  jal        IsPathDone
/* 3969C 80048E9C 21200002 */   addu      $a0, $s0, $zero
/* 396A0 80048EA0 9A004014 */  bnez       $v0, .L8004910C
/* 396A4 80048EA4 8000C22E */   sltiu     $v0, $s6, 0x80
/* 396A8 80048EA8 99004010 */  beqz       $v0, .L80049110
/* 396AC 80048EAC 00000000 */   nop
/* 396B0 80048EB0 44240108 */  j          .L80049110
/* 396B4 80048EB4 140080AE */   sw        $zero, 0x14($s4)
jlabel .L80048EB8
/* 396B8 80048EB8 B40D828F */  lw         $v0, %gp_rel(GENERIC_DACC)($gp)
/* 396BC 80048EBC 00000000 */  nop
/* 396C0 80048EC0 18006202 */  mult       $s3, $v0
/* 396C4 80048EC4 12100000 */  mflo       $v0
/* 396C8 80048EC8 039C0200 */  sra        $s3, $v0, 16
/* 396CC 80048ECC 0A00632A */  slti       $v1, $s3, 0xA
/* 396D0 80048ED0 02006010 */  beqz       $v1, .L80048EDC
/* 396D4 80048ED4 00000000 */   nop
/* 396D8 80048ED8 21980000 */  addu       $s3, $zero, $zero
.L80048EDC:
/* 396DC 80048EDC 2401328E */  lw         $s2, 0x124($s1)
/* 396E0 80048EE0 8401238E */  lw         $v1, 0x184($s1)
/* 396E4 80048EE4 3400508E */  lw         $s0, 0x34($s2)
/* 396E8 80048EE8 440120AE */  sw         $zero, 0x144($s1)
/* 396EC 80048EEC 2400628C */  lw         $v0, 0x24($v1)
/* 396F0 80048EF0 00000000 */  nop
/* 396F4 80048EF4 21004010 */  beqz       $v0, .L80048F7C
/* 396F8 80048EF8 00000000 */   nop
/* 396FC 80048EFC 12000012 */  beqz       $s0, .L80048F48
/* 39700 80048F00 FFFF1026 */   addiu     $s0, $s0, -0x1
/* 39704 80048F04 2C000016 */  bnez       $s0, .L80048FB8
/* 39708 80048F08 08000224 */   addiu     $v0, $zero, 0x8
/* 3970C 80048F0C 3C01238E */  lw         $v1, 0x13C($s1)
/* 39710 80048F10 00000000 */  nop
/* 39714 80048F14 05006210 */  beq        $v1, $v0, .L80048F2C
/* 39718 80048F18 21202002 */   addu      $a0, $s1, $zero
/* 3971C 80048F1C 08000524 */  addiu      $a1, $zero, 0x8
/* 39720 80048F20 04000624 */  addiu      $a2, $zero, 0x4
/* 39724 80048F24 8FE2000C */  jal        SetAnimWithInterp
/* 39728 80048F28 2C012726 */   addiu     $a3, $s1, 0x12C
.L80048F2C:
/* 3972C 80048F2C D140010C */  jal        u32Random
/* 39730 80048F30 0A000424 */   addiu     $a0, $zero, 0xA
/* 39734 80048F34 05004224 */  addiu      $v0, $v0, 0x5
/* 39738 80048F38 00190200 */  sll        $v1, $v0, 4
/* 3973C 80048F3C 23186200 */  subu       $v1, $v1, $v0
/* 39740 80048F40 EE230108 */  j          .L80048FB8
/* 39744 80048F44 40800300 */   sll       $s0, $v1, 1
.L80048F48:
/* 39748 80048F48 D140010C */  jal        u32Random
/* 3974C 80048F4C 0A000424 */   addiu     $a0, $zero, 0xA
/* 39750 80048F50 05004224 */  addiu      $v0, $v0, 0x5
/* 39754 80048F54 00190200 */  sll        $v1, $v0, 4
/* 39758 80048F58 23186200 */  subu       $v1, $v1, $v0
/* 3975C 80048F5C 40800300 */  sll        $s0, $v1, 1
/* 39760 80048F60 21202002 */  addu       $a0, $s1, $zero
/* 39764 80048F64 21280000 */  addu       $a1, $zero, $zero
/* 39768 80048F68 04000624 */  addiu      $a2, $zero, 0x4
/* 3976C 80048F6C 8FE2000C */  jal        SetAnimWithInterp
/* 39770 80048F70 2C012726 */   addiu     $a3, $s1, 0x12C
/* 39774 80048F74 EF230108 */  j          .L80048FBC
/* 39778 80048F78 340050AE */   sw        $s0, 0x34($s2)
.L80048F7C:
/* 3977C 80048F7C 5401228E */  lw         $v0, 0x154($s1)
/* 39780 80048F80 00000000 */  nop
/* 39784 80048F84 02004230 */  andi       $v0, $v0, 0x2
/* 39788 80048F88 0B004014 */  bnez       $v0, .L80048FB8
/* 3978C 80048F8C 00000000 */   nop
/* 39790 80048F90 3C01238E */  lw         $v1, 0x13C($s1)
/* 39794 80048F94 00000000 */  nop
/* 39798 80048F98 07006010 */  beqz       $v1, .L80048FB8
/* 3979C 80048F9C 10000224 */   addiu     $v0, $zero, 0x10
/* 397A0 80048FA0 05006210 */  beq        $v1, $v0, .L80048FB8
/* 397A4 80048FA4 21202002 */   addu      $a0, $s1, $zero
/* 397A8 80048FA8 21280000 */  addu       $a1, $zero, $zero
/* 397AC 80048FAC 04000624 */  addiu      $a2, $zero, 0x4
/* 397B0 80048FB0 8FE2000C */  jal        SetAnimWithInterp
/* 397B4 80048FB4 2C012726 */   addiu     $a3, $s1, 0x12C
.L80048FB8:
/* 397B8 80048FB8 340050AE */  sw         $s0, 0x34($s2)
.L80048FBC:
/* 397BC 80048FBC 4400238E */  lw         $v1, 0x44($s1)
/* 397C0 80048FC0 00000000 */  nop
/* 397C4 80048FC4 1C00628C */  lw         $v0, 0x1C($v1)
/* 397C8 80048FC8 00000000 */  nop
/* 397CC 80048FCC 00084230 */  andi       $v0, $v0, 0x800
/* 397D0 80048FD0 4F004010 */  beqz       $v0, .L80049110
/* 397D4 80048FD4 0101C22E */   sltiu     $v0, $s6, 0x101
/* 397D8 80048FD8 4D004014 */  bnez       $v0, .L80049110
/* 397DC 80048FDC 00000000 */   nop
/* 397E0 80048FE0 44240108 */  j          .L80049110
/* 397E4 80048FE4 140080AE */   sw        $zero, 0x14($s4)
jlabel .L80048FE8
/* 397E8 80048FE8 D140010C */  jal        u32Random
/* 397EC 80048FEC 02000424 */   addiu     $a0, $zero, 0x2
/* 397F0 80048FF0 21204000 */  addu       $a0, $v0, $zero
/* 397F4 80048FF4 C800622A */  slti       $v0, $s3, 0xC8
/* 397F8 80048FF8 02004010 */  beqz       $v0, .L80049004
/* 397FC 80048FFC 00000000 */   nop
/* 39800 80049000 B00D938F */  lw         $s3, %gp_rel(GENERIC_INITIAL_RUN)($gp)
.L80049004:
/* 39804 80049004 AC0D828F */  lw         $v0, %gp_rel(GENERIC_ACC)($gp)
/* 39808 80049008 00000000 */  nop
/* 3980C 8004900C 21986202 */  addu       $s3, $s3, $v0
/* 39810 80049010 2A181302 */  slt        $v1, $s0, $s3
/* 39814 80049014 02006010 */  beqz       $v1, .L80049020
/* 39818 80049018 00000000 */   nop
/* 3981C 8004901C 21980002 */  addu       $s3, $s0, $zero
.L80049020:
/* 39820 80049020 5401228E */  lw         $v0, 0x154($s1)
/* 39824 80049024 00000000 */  nop
/* 39828 80049028 02004230 */  andi       $v0, $v0, 0x2
/* 3982C 8004902C 27004014 */  bnez       $v0, .L800490CC
/* 39830 80049030 00000000 */   nop
/* 39834 80049034 07008010 */  beqz       $a0, .L80049054
/* 39838 80049038 21202002 */   addu      $a0, $s1, $zero
/* 3983C 8004903C 06000524 */  addiu      $a1, $zero, 0x6
/* 39840 80049040 04000624 */  addiu      $a2, $zero, 0x4
/* 39844 80049044 8FE2000C */  jal        SetAnimWithInterp
/* 39848 80049048 2C012726 */   addiu     $a3, $s1, 0x12C
/* 3984C 8004904C 2F240108 */  j          .L800490BC
/* 39850 80049050 00000000 */   nop
.L80049054:
/* 39854 80049054 4001228E */  lw         $v0, 0x140($s1)
/* 39858 80049058 10000324 */  addiu      $v1, $zero, 0x10
/* 3985C 8004905C 14004310 */  beq        $v0, $v1, .L800490B0
/* 39860 80049060 10000524 */   addiu     $a1, $zero, 0x10
/* 39864 80049064 3C01228E */  lw         $v0, 0x13C($s1)
/* 39868 80049068 00000000 */  nop
/* 3986C 8004906C 10004310 */  beq        $v0, $v1, .L800490B0
/* 39870 80049070 00000000 */   nop
/* 39874 80049074 28E3000C */  jal        GetSeqNumFrames
/* 39878 80049078 10000524 */   addiu     $a1, $zero, 0x10
/* 3987C 8004907C 21202002 */  addu       $a0, $s1, $zero
/* 39880 80049080 10000524 */  addiu      $a1, $zero, 0x10
/* 39884 80049084 05000624 */  addiu      $a2, $zero, 0x5
/* 39888 80049088 21384000 */  addu       $a3, $v0, $zero
/* 3988C 8004908C 04000224 */  addiu      $v0, $zero, 0x4
/* 39890 80049090 02000324 */  addiu      $v1, $zero, 0x2
/* 39894 80049094 1000A2AF */  sw         $v0, 0x10($sp)
/* 39898 80049098 2C012226 */  addiu      $v0, $s1, 0x12C
/* 3989C 8004909C 1400A3AF */  sw         $v1, 0x14($sp)
/* 398A0 800490A0 72E2000C */  jal        RequestAnim
/* 398A4 800490A4 1800A2AF */   sw        $v0, 0x18($sp)
/* 398A8 800490A8 2F240108 */  j          .L800490BC
/* 398AC 800490AC 00000000 */   nop
.L800490B0:
/* 398B0 800490B0 21300000 */  addu       $a2, $zero, $zero
/* 398B4 800490B4 8FE2000C */  jal        SetAnimWithInterp
/* 398B8 800490B8 2C012726 */   addiu     $a3, $s1, 0x12C
.L800490BC:
/* 398BC 800490BC 5401228E */  lw         $v0, 0x154($s1)
/* 398C0 800490C0 00000000 */  nop
/* 398C4 800490C4 02004234 */  ori        $v0, $v0, 0x2
/* 398C8 800490C8 540122AE */  sw         $v0, 0x154($s1)
.L800490CC:
/* 398CC 800490CC 9B68000C */  jal        ISPlayerRunning
/* 398D0 800490D0 00000000 */   nop
/* 398D4 800490D4 09004014 */  bnez       $v0, .L800490FC
/* 398D8 800490D8 C800C22E */   sltiu     $v0, $s6, 0xC8
/* 398DC 800490DC 0C004010 */  beqz       $v0, .L80049110
/* 398E0 800490E0 21202002 */   addu      $a0, $s1, $zero
/* 398E4 800490E4 01000524 */  addiu      $a1, $zero, 0x1
/* 398E8 800490E8 06000624 */  addiu      $a2, $zero, 0x6
/* 398EC 800490EC ADE3000C */  jal        CheckAnimWithInterp
/* 398F0 800490F0 2C012726 */   addiu     $a3, $s1, 0x12C
/* 398F4 800490F4 44240108 */  j          .L80049110
/* 398F8 800490F8 140080AE */   sw        $zero, 0x14($s4)
.L800490FC:
/* 398FC 800490FC 04004010 */  beqz       $v0, .L80049110
/* 39900 80049100 00000000 */   nop
/* 39904 80049104 44240108 */  j          .L80049110
/* 39908 80049108 0CFE7326 */   addiu     $s3, $s3, -0x1F4
jlabel .L8004910C
/* 3990C 8004910C 140080AE */  sw         $zero, 0x14($s4)
.L80049110:
/* 39910 80049110 1400838E */  lw         $v1, 0x14($s4)
/* 39914 80049114 00000000 */  nop
/* 39918 80049118 FBFF6224 */  addiu      $v0, $v1, -0x5
/* 3991C 8004911C 0200422C */  sltiu      $v0, $v0, 0x2
/* 39920 80049120 26004014 */  bnez       $v0, .L800491BC
/* 39924 80049124 2110C003 */   addu      $v0, $fp, $zero
/* 39928 80049128 08001024 */  addiu      $s0, $zero, 0x8
/* 3992C 8004912C 23007010 */  beq        $v1, $s0, .L800491BC
/* 39930 80049130 3000A427 */   addiu     $a0, $sp, 0x30
/* 39934 80049134 4000A527 */  addiu      $a1, $sp, 0x40
/* 39938 80049138 21306002 */  addu       $a2, $s3, $zero
/* 3993C 8004913C 0000228E */  lw         $v0, 0x0($s1)
/* 39940 80049140 0400238E */  lw         $v1, 0x4($s1)
/* 39944 80049144 0800288E */  lw         $t0, 0x8($s1)
/* 39948 80049148 2000A727 */  addiu      $a3, $sp, 0x20
/* 3994C 8004914C 3000A2AF */  sw         $v0, 0x30($sp)
/* 39950 80049150 3400A3AF */  sw         $v1, 0x34($sp)
/* 39954 80049154 DE13010C */  jal        GetDirVector
/* 39958 80049158 3800A8AF */   sw        $t0, 0x38($sp)
/* 3995C 8004915C 2000A58F */  lw         $a1, 0x20($sp)
/* 39960 80049160 2400A68F */  lw         $a2, 0x24($sp)
/* 39964 80049164 2800A78F */  lw         $a3, 0x28($sp)
/* 39968 80049168 7BFB000C */  jal        MotionPhysics_AddVectorForce
/* 3996C 8004916C 6C002426 */   addiu     $a0, $s1, 0x6C
/* 39970 80049170 0AD3000C */  jal        CommonActorPostBrainsBoots
/* 39974 80049174 21202002 */   addu      $a0, $s1, $zero
/* 39978 80049178 21F04000 */  addu       $fp, $v0, $zero
/* 3997C 8004917C 83141E00 */  sra        $v0, $fp, 18
/* 39980 80049180 03004010 */  beqz       $v0, .L80049190
/* 39984 80049184 FF00C233 */   andi      $v0, $fp, 0xFF
/* 39988 80049188 6E240108 */  j          .L800491B8
/* 3998C 8004918C 140090AE */   sw        $s0, 0x14($s4)
.L80049190:
/* 39990 80049190 0A004010 */  beqz       $v0, .L800491BC
/* 39994 80049194 2110C003 */   addu      $v0, $fp, $zero
/* 39998 80049198 4400238E */  lw         $v1, 0x44($s1)
/* 3999C 8004919C 00000000 */  nop
/* 399A0 800491A0 1C00628C */  lw         $v0, 0x1C($v1)
/* 399A4 800491A4 00000000 */  nop
/* 399A8 800491A8 00084230 */  andi       $v0, $v0, 0x800
/* 399AC 800491AC 02004010 */  beqz       $v0, .L800491B8
/* 399B0 800491B0 05000224 */   addiu     $v0, $zero, 0x5
/* 399B4 800491B4 140082AE */  sw         $v0, 0x14($s4)
.L800491B8:
/* 399B8 800491B8 2110C003 */  addu       $v0, $fp, $zero
.L800491BC:
/* 399BC 800491BC 8400BF8F */  lw         $ra, 0x84($sp)
/* 399C0 800491C0 8000BE8F */  lw         $fp, 0x80($sp)
/* 399C4 800491C4 7C00B78F */  lw         $s7, 0x7C($sp)
/* 399C8 800491C8 7800B68F */  lw         $s6, 0x78($sp)
/* 399CC 800491CC 7400B58F */  lw         $s5, 0x74($sp)
/* 399D0 800491D0 100093AE */  sw         $s3, 0x10($s4)
/* 399D4 800491D4 7000B48F */  lw         $s4, 0x70($sp)
/* 399D8 800491D8 6C00B38F */  lw         $s3, 0x6C($sp)
/* 399DC 800491DC 6800B28F */  lw         $s2, 0x68($sp)
/* 399E0 800491E0 6400B18F */  lw         $s1, 0x64($sp)
/* 399E4 800491E4 6000B08F */  lw         $s0, 0x60($sp)
/* 399E8 800491E8 0800E003 */  jr         $ra
/* 399EC 800491EC 8800BD27 */   addiu     $sp, $sp, 0x88
.size GenericFollowPlayer, . - GenericFollowPlayer
