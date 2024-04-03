.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel pxm_frameh
/* 4396C 8005316C 4416828F */  lw         $v0, %gp_rel(pxm_framecount_last_pickupbone)($gp)
/* 43970 80053170 B0FFBD27 */  addiu      $sp, $sp, -0x50
/* 43974 80053174 4C00BFAF */  sw         $ra, 0x4C($sp)
/* 43978 80053178 4800BEAF */  sw         $fp, 0x48($sp)
/* 4397C 8005317C 4400B7AF */  sw         $s7, 0x44($sp)
/* 43980 80053180 4000B6AF */  sw         $s6, 0x40($sp)
/* 43984 80053184 3C00B5AF */  sw         $s5, 0x3C($sp)
/* 43988 80053188 3800B4AF */  sw         $s4, 0x38($sp)
/* 4398C 8005318C 3400B3AF */  sw         $s3, 0x34($sp)
/* 43990 80053190 3000B2AF */  sw         $s2, 0x30($sp)
/* 43994 80053194 2C00B1AF */  sw         $s1, 0x2C($sp)
/* 43998 80053198 03004010 */  beqz       $v0, .L800531A8
/* 4399C 8005319C 2800B0AF */   sw        $s0, 0x28($sp)
/* 439A0 800531A0 FFFF4224 */  addiu      $v0, $v0, -0x1
/* 439A4 800531A4 441682AF */  sw         $v0, %gp_rel(pxm_framecount_last_pickupbone)($gp)
.L800531A8:
/* 439A8 800531A8 0980023C */  lui        $v0, %hi(pxm_transport)
/* 439AC 800531AC 28524290 */  lbu        $v0, %lo(pxm_transport)($v0)
/* 439B0 800531B0 01000324 */  addiu      $v1, $zero, 0x1
/* 439B4 800531B4 FF005030 */  andi       $s0, $v0, 0xFF
/* 439B8 800531B8 C3000316 */  bne        $s0, $v1, .L800534C8
/* 439BC 800531BC 00000000 */   nop
/* 439C0 800531C0 A652010C */  jal        pxm_play_queue
/* 439C4 800531C4 00000000 */   nop
/* 439C8 800531C8 0980033C */  lui        $v1, %hi(pxm_transport)
/* 439CC 800531CC 28526390 */  lbu        $v1, %lo(pxm_transport)($v1)
/* 439D0 800531D0 00000000 */  nop
/* 439D4 800531D4 0B007010 */  beq        $v1, $s0, .L80053204
/* 439D8 800531D8 00000000 */   nop
/* 439DC 800531DC 0980033C */  lui        $v1, %hi(pxm_transport)
/* 439E0 800531E0 28526390 */  lbu        $v1, %lo(pxm_transport)($v1)
/* 439E4 800531E4 03000224 */  addiu      $v0, $zero, 0x3
/* 439E8 800531E8 08006214 */  bne        $v1, $v0, .L8005320C
/* 439EC 800531EC 00000000 */   nop
/* 439F0 800531F0 0980023C */  lui        $v0, %hi(pxm_stepcontrol)
/* 439F4 800531F4 68584290 */  lbu        $v0, %lo(pxm_stepcontrol)($v0)
/* 439F8 800531F8 00000000 */  nop
/* 439FC 800531FC 03004010 */  beqz       $v0, .L8005320C
/* 43A00 80053200 00000000 */   nop
.L80053204:
/* 43A04 80053204 484A010C */  jal        pxm_clock_h
/* 43A08 80053208 00000000 */   nop
.L8005320C:
/* 43A0C 8005320C E40F838F */  lw         $v1, %gp_rel(pxm_emitter_global_switch)($gp)
/* 43A10 80053210 01000224 */  addiu      $v0, $zero, 0x1
/* 43A14 80053214 AC006214 */  bne        $v1, $v0, .L800534C8
/* 43A18 80053218 0980023C */   lui       $v0, %hi(ETActor)
/* 43A1C 8005321C B05A4324 */  addiu      $v1, $v0, %lo(ETActor)
/* 43A20 80053220 B05A448C */  lw         $a0, %lo(ETActor)($v0)
/* 43A24 80053224 0400658C */  lw         $a1, 0x4($v1)
/* 43A28 80053228 0800628C */  lw         $v0, 0x8($v1)
/* 43A2C 8005322C 0980033C */  lui        $v1, %hi(pxm_emitters)
/* 43A30 80053230 8458638C */  lw         $v1, %lo(pxm_emitters)($v1)
/* 43A34 80053234 1C00A2A7 */  sh         $v0, 0x1C($sp)
/* 43A38 80053238 0980023C */  lui        $v0, %hi(pxm_numemitters)
/* 43A3C 8005323C 6458428C */  lw         $v0, %lo(pxm_numemitters)($v0)
/* 43A40 80053240 21900000 */  addu       $s2, $zero, $zero
/* 43A44 80053244 1800A4A7 */  sh         $a0, 0x18($sp)
/* 43A48 80053248 1A00A5A7 */  sh         $a1, 0x1A($sp)
/* 43A4C 8005324C 2000A3AF */  sw         $v1, 0x20($sp)
/* 43A50 80053250 9D004018 */  blez       $v0, .L800534C8
/* 43A54 80053254 2400A2AF */   sw        $v0, 0x24($sp)
/* 43A58 80053258 01001624 */  addiu      $s6, $zero, 0x1
.L8005325C:
/* 43A5C 8005325C 40101200 */  sll        $v0, $s2, 1
/* 43A60 80053260 21105200 */  addu       $v0, $v0, $s2
/* 43A64 80053264 80100200 */  sll        $v0, $v0, 2
/* 43A68 80053268 23105200 */  subu       $v0, $v0, $s2
/* 43A6C 8005326C 80100200 */  sll        $v0, $v0, 2
/* 43A70 80053270 2000A38F */  lw         $v1, 0x20($sp)
/* 43A74 80053274 1000143C */  lui        $s4, (0x100000 >> 16)
/* 43A78 80053278 21806200 */  addu       $s0, $v1, $v0
/* 43A7C 8005327C 0C00038E */  lw         $v1, 0xC($s0)
/* 43A80 80053280 0400048E */  lw         $a0, 0x4($s0)
/* 43A84 80053284 01007338 */  xori       $s3, $v1, 0x1
/* 43A88 80053288 01007332 */  andi       $s3, $s3, 0x1
/* 43A8C 8005328C 02008228 */  slti       $v0, $a0, 0x2
/* 43A90 80053290 1E004014 */  bnez       $v0, .L8005330C
/* 43A94 80053294 01007730 */   andi      $s7, $v1, 0x1
/* 43A98 80053298 21880000 */  addu       $s1, $zero, $zero
/* 43A9C 8005329C 01005E26 */  addiu      $fp, $s2, 0x1
/* 43AA0 800532A0 FFFF8224 */  addiu      $v0, $a0, -0x1
/* 43AA4 800532A4 23004018 */  blez       $v0, .L80053334
/* 43AA8 800532A8 21A84000 */   addu      $s5, $v0, $zero
/* 43AAC 800532AC 08001224 */  addiu      $s2, $zero, 0x8
/* 43AB0 800532B0 1800A627 */  addiu      $a2, $sp, 0x18
.L800532B4:
/* 43AB4 800532B4 0000058E */  lw         $a1, 0x0($s0)
/* 43AB8 800532B8 C0201100 */  sll        $a0, $s1, 3
/* 43ABC 800532BC 2120A400 */  addu       $a0, $a1, $a0
/* 43AC0 800532C0 6B51010C */  jal        pxm_dist_to_line2D
/* 43AC4 800532C4 2128B200 */   addu      $a1, $a1, $s2
/* 43AC8 800532C8 21184000 */  addu       $v1, $v0, $zero
/* 43ACC 800532CC 80016228 */  slti       $v0, $v1, 0x180
/* 43AD0 800532D0 02004010 */  beqz       $v0, .L800532DC
/* 43AD4 800532D4 2A107400 */   slt       $v0, $v1, $s4
/* 43AD8 800532D8 21B00000 */  addu       $s6, $zero, $zero
.L800532DC:
/* 43ADC 800532DC 02004010 */  beqz       $v0, .L800532E8
/* 43AE0 800532E0 00000000 */   nop
/* 43AE4 800532E4 21A06000 */  addu       $s4, $v1, $zero
.L800532E8:
/* 43AE8 800532E8 01003126 */  addiu      $s1, $s1, 0x1
/* 43AEC 800532EC 2A103502 */  slt        $v0, $s1, $s5
/* 43AF0 800532F0 10004010 */  beqz       $v0, .L80053334
/* 43AF4 800532F4 08005226 */   addiu     $s2, $s2, 0x8
/* 43AF8 800532F8 2400822A */  slti       $v0, $s4, 0x24
/* 43AFC 800532FC EDFF4010 */  beqz       $v0, .L800532B4
/* 43B00 80053300 1800A627 */   addiu     $a2, $sp, 0x18
/* 43B04 80053304 CD4C0108 */  j          .L80053334
/* 43B08 80053308 00000000 */   nop
.L8005330C:
/* 43B0C 8005330C 0000048E */  lw         $a0, 0x0($s0)
/* 43B10 80053310 1800A527 */  addiu      $a1, $sp, 0x18
/* 43B14 80053314 4652010C */  jal        pxm_dist_to_point
/* 43B18 80053318 01005E26 */   addiu     $fp, $s2, 0x1
/* 43B1C 8005331C 21184000 */  addu       $v1, $v0, $zero
/* 43B20 80053320 80016228 */  slti       $v0, $v1, 0x180
/* 43B24 80053324 03004010 */  beqz       $v0, .L80053334
/* 43B28 80053328 00000000 */   nop
/* 43B2C 8005332C 21B00000 */  addu       $s6, $zero, $zero
/* 43B30 80053330 21A06000 */  addu       $s4, $v1, $zero
.L80053334:
/* 43B34 80053334 0500C016 */  bnez       $s6, .L8005334C
/* 43B38 80053338 00000000 */   nop
/* 43B3C 8005333C 1000028E */  lw         $v0, 0x10($s0)
/* 43B40 80053340 00000000 */  nop
/* 43B44 80053344 0C004014 */  bnez       $v0, .L80053378
/* 43B48 80053348 00000000 */   nop
.L8005334C:
/* 43B4C 8005334C 5900E012 */  beqz       $s7, .L800534B4
/* 43B50 80053350 FEFF0324 */   addiu     $v1, $zero, -0x2
/* 43B54 80053354 0C00028E */  lw         $v0, 0xC($s0)
/* 43B58 80053358 2800048E */  lw         $a0, 0x28($s0)
/* 43B5C 8005335C 24104300 */  and        $v0, $v0, $v1
/* 43B60 80053360 54008010 */  beqz       $a0, .L800534B4
/* 43B64 80053364 0C0002AE */   sw        $v0, 0xC($s0)
/* 43B68 80053368 E153010C */  jal        pxm_que_noteoff
/* 43B6C 8005336C 00000000 */   nop
/* 43B70 80053370 2D4D0108 */  j          .L800534B4
/* 43B74 80053374 00000000 */   nop
.L80053378:
/* 43B78 80053378 18006012 */  beqz       $s3, .L800533DC
/* 43B7C 8005337C 24000324 */   addiu     $v1, $zero, 0x24
/* 43B80 80053380 0C00028E */  lw         $v0, 0xC($s0)
/* 43B84 80053384 1C0003A6 */  sh         $v1, 0x1C($s0)
/* 43B88 80053388 0800038E */  lw         $v1, 0x8($s0)
/* 43B8C 8005338C 01004234 */  ori        $v0, $v0, 0x1
/* 43B90 80053390 0C0002AE */  sw         $v0, 0xC($s0)
/* 43B94 80053394 00810234 */  ori        $v0, $zero, 0x8100
/* 43B98 80053398 05006210 */  beq        $v1, $v0, .L800533B0
/* 43B9C 8005339C 01810234 */   ori       $v0, $zero, 0x8101
/* 43BA0 800533A0 06006210 */  beq        $v1, $v0, .L800533BC
/* 43BA4 800533A4 02000424 */   addiu     $a0, $zero, 0x2
/* 43BA8 800533A8 2D4D0108 */  j          .L800534B4
/* 43BAC 800533AC 00000000 */   nop
.L800533B0:
/* 43BB0 800533B0 02000424 */  addiu      $a0, $zero, 0x2
/* 43BB4 800533B4 F04C0108 */  j          .L800533C0
/* 43BB8 800533B8 33000524 */   addiu     $a1, $zero, 0x33
.L800533BC:
/* 43BBC 800533BC 32000524 */  addiu      $a1, $zero, 0x32
.L800533C0:
/* 43BC0 800533C0 3C000624 */  addiu      $a2, $zero, 0x3C
/* 43BC4 800533C4 7F000724 */  addiu      $a3, $zero, 0x7F
/* 43BC8 800533C8 0020023C */  lui        $v0, (0x20000000 >> 16)
/* 43BCC 800533CC 4A53010C */  jal        pxm_que_noteon_layered
/* 43BD0 800533D0 1000A2AF */   sw        $v0, 0x10($sp)
/* 43BD4 800533D4 2D4D0108 */  j          .L800534B4
/* 43BD8 800533D8 280002AE */   sw        $v0, 0x28($s0)
.L800533DC:
/* 43BDC 800533DC AA2A023C */  lui        $v0, (0x2AAAAAAB >> 16)
/* 43BE0 800533E0 ABAA4234 */  ori        $v0, $v0, (0x2AAAAAAB & 0xFFFF)
/* 43BE4 800533E4 80010324 */  addiu      $v1, $zero, 0x180
/* 43BE8 800533E8 23187400 */  subu       $v1, $v1, $s4
/* 43BEC 800533EC 00240300 */  sll        $a0, $v1, 16
/* 43BF0 800533F0 23208300 */  subu       $a0, $a0, $v1
/* 43BF4 800533F4 18008200 */  mult       $a0, $v0
/* 43BF8 800533F8 21180000 */  addu       $v1, $zero, $zero
/* 43BFC 800533FC C3270400 */  sra        $a0, $a0, 31
/* 43C00 80053400 2800058E */  lw         $a1, 0x28($s0)
/* 43C04 80053404 10100000 */  mfhi       $v0
/* 43C08 80053408 83110200 */  sra        $v0, $v0, 6
/* 43C0C 8005340C 0200A010 */  beqz       $a1, .L80053418
/* 43C10 80053410 23904400 */   subu      $s2, $v0, $a0
/* 43C14 80053414 1000A38C */  lw         $v1, 0x10($a1)
.L80053418:
/* 43C18 80053418 00000000 */  nop
/* 43C1C 8005341C 25006010 */  beqz       $v1, .L800534B4
/* 43C20 80053420 1E0012A6 */   sh        $s2, 0x1E($s0)
/* 43C24 80053424 1C00708C */  lw         $s0, 0x1C($v1)
/* 43C28 80053428 00000000 */  nop
/* 43C2C 8005342C 21000012 */  beqz       $s0, .L800534B4
/* 43C30 80053430 21A00000 */   addu      $s4, $zero, $zero
/* 43C34 80053434 FFFF1534 */  ori        $s5, $zero, 0xFFFF
/* 43C38 80053438 0A80023C */  lui        $v0, %hi(pxm_chanstat)
/* 43C3C 8005343C E87F5324 */  addiu      $s3, $v0, %lo(pxm_chanstat)
.L80053440:
/* 43C40 80053440 01000224 */  addiu      $v0, $zero, 0x1
/* 43C44 80053444 04888202 */  sllv       $s1, $v0, $s4
/* 43C48 80053448 24181102 */  and        $v1, $s0, $s1
/* 43C4C 8005344C 15006010 */  beqz       $v1, .L800534A4
/* 43C50 80053450 27101100 */   nor       $v0, $zero, $s1
/* 43C54 80053454 14006586 */  lh         $a1, 0x14($s3)
/* 43C58 80053458 00000000 */  nop
/* 43C5C 8005345C 1800B200 */  mult       $a1, $s2
/* 43C60 80053460 16006286 */  lh         $v0, 0x16($s3)
/* 43C64 80053464 12280000 */  mflo       $a1
/* 43C68 80053468 0200A104 */  bgez       $a1, .L80053474
/* 43C6C 8005346C 2118A000 */   addu      $v1, $a1, $zero
/* 43C70 80053470 2118B500 */  addu       $v1, $a1, $s5
.L80053474:
/* 43C74 80053474 18005200 */  mult       $v0, $s2
/* 43C78 80053478 032C0300 */  sra        $a1, $v1, 16
/* 43C7C 8005347C 12100000 */  mflo       $v0
/* 43C80 80053480 02004104 */  bgez       $v0, .L8005348C
/* 43C84 80053484 21304000 */   addu      $a2, $v0, $zero
/* 43C88 80053488 21305500 */  addu       $a2, $v0, $s5
.L8005348C:
/* 43C8C 8005348C 21208002 */  addu       $a0, $s4, $zero
/* 43C90 80053490 002C0500 */  sll        $a1, $a1, 16
/* 43C94 80053494 032C0500 */  sra        $a1, $a1, 16
/* 43C98 80053498 1306020C */  jal        SpuSetVoiceVolume
/* 43C9C 8005349C 03340600 */   sra       $a2, $a2, 16
/* 43CA0 800534A0 27101100 */  nor        $v0, $zero, $s1
.L800534A4:
/* 43CA4 800534A4 24800202 */  and        $s0, $s0, $v0
/* 43CA8 800534A8 1C007326 */  addiu      $s3, $s3, 0x1C
/* 43CAC 800534AC E4FF0016 */  bnez       $s0, .L80053440
/* 43CB0 800534B0 01009426 */   addiu     $s4, $s4, 0x1
.L800534B4:
/* 43CB4 800534B4 2400A38F */  lw         $v1, 0x24($sp)
/* 43CB8 800534B8 2190C003 */  addu       $s2, $fp, $zero
/* 43CBC 800534BC 2A104302 */  slt        $v0, $s2, $v1
/* 43CC0 800534C0 66FF4014 */  bnez       $v0, .L8005325C
/* 43CC4 800534C4 01001624 */   addiu     $s6, $zero, 0x1
.L800534C8:
/* 43CC8 800534C8 0980033C */  lui        $v1, %hi(pxm_tticks)
/* 43CCC 800534CC 5858638C */  lw         $v1, %lo(pxm_tticks)($v1)
/* 43CD0 800534D0 EC0F828F */  lw         $v0, %gp_rel(pxm_tticks_all_sounds_off)($gp)
/* 43CD4 800534D4 00000000 */  nop
/* 43CD8 800534D8 21006214 */  bne        $v1, $v0, .L80053560
/* 43CDC 800534DC 00000000 */   nop
/* 43CE0 800534E0 E653010C */  jal        pxm_clear_sfx_queues
/* 43CE4 800534E4 21800000 */   addu      $s0, $zero, $zero
/* 43CE8 800534E8 21200000 */  addu       $a0, $zero, $zero
/* 43CEC 800534EC FF00053C */  lui        $a1, (0xFFFFFF >> 16)
/* 43CF0 800534F0 0F05020C */  jal        SpuSetKey
/* 43CF4 800534F4 FFFFA534 */   ori       $a1, $a1, (0xFFFFFF & 0xFFFF)
/* 43CF8 800534F8 0980013C */  lui        $at, %hi(pxm_spu_chan_bits)
/* 43CFC 800534FC 7C5220AC */  sw         $zero, %lo(pxm_spu_chan_bits)($at)
/* 43D00 80053500 0B80023C */  lui        $v0, %hi(pxm_voicestat)
/* 43D04 80053504 A8825124 */  addiu      $s1, $v0, %lo(pxm_voicestat)
.L80053508:
/* 43D08 80053508 180030AE */  sw         $s0, 0x18($s1)
/* 43D0C 8005350C 7955010C */  jal        pxm_free_voice
/* 43D10 80053510 21202002 */   addu      $a0, $s1, $zero
/* 43D14 80053514 5855010C */  jal        pxm_free_spuchan
/* 43D18 80053518 21200002 */   addu      $a0, $s0, $zero
/* 43D1C 8005351C 01001026 */  addiu      $s0, $s0, 0x1
/* 43D20 80053520 1700022E */  sltiu      $v0, $s0, 0x17
/* 43D24 80053524 F8FF4014 */  bnez       $v0, .L80053508
/* 43D28 80053528 28003126 */   addiu     $s1, $s1, 0x28
/* 43D2C 8005352C 0980043C */  lui        $a0, %hi(pxm_numemitters)
/* 43D30 80053530 6458848C */  lw         $a0, %lo(pxm_numemitters)($a0)
/* 43D34 80053534 0980023C */  lui        $v0, %hi(pxm_emitters)
/* 43D38 80053538 8458428C */  lw         $v0, %lo(pxm_emitters)($v0)
/* 43D3C 8005353C 07008010 */  beqz       $a0, .L8005355C
/* 43D40 80053540 21800000 */   addu      $s0, $zero, $zero
/* 43D44 80053544 0C004324 */  addiu      $v1, $v0, 0xC
.L80053548:
/* 43D48 80053548 000060AC */  sw         $zero, 0x0($v1)
/* 43D4C 8005354C 01001026 */  addiu      $s0, $s0, 0x1
/* 43D50 80053550 2B100402 */  sltu       $v0, $s0, $a0
/* 43D54 80053554 FCFF4014 */  bnez       $v0, .L80053548
/* 43D58 80053558 2C006324 */   addiu     $v1, $v1, 0x2C
.L8005355C:
/* 43D5C 8005355C EC0F80AF */  sw         $zero, %gp_rel(pxm_tticks_all_sounds_off)($gp)
.L80053560:
/* 43D60 80053560 4C00BF8F */  lw         $ra, 0x4C($sp)
/* 43D64 80053564 4800BE8F */  lw         $fp, 0x48($sp)
/* 43D68 80053568 4400B78F */  lw         $s7, 0x44($sp)
/* 43D6C 8005356C 4000B68F */  lw         $s6, 0x40($sp)
/* 43D70 80053570 3C00B58F */  lw         $s5, 0x3C($sp)
/* 43D74 80053574 3800B48F */  lw         $s4, 0x38($sp)
/* 43D78 80053578 3400B38F */  lw         $s3, 0x34($sp)
/* 43D7C 8005357C 3000B28F */  lw         $s2, 0x30($sp)
/* 43D80 80053580 2C00B18F */  lw         $s1, 0x2C($sp)
/* 43D84 80053584 2800B08F */  lw         $s0, 0x28($sp)
/* 43D88 80053588 0800E003 */  jr         $ra
/* 43D8C 8005358C 5000BD27 */   addiu     $sp, $sp, 0x50
.size pxm_frameh, . - pxm_frameh
