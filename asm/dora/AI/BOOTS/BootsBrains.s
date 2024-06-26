.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel BootsBrains
/* 25750 80034F50 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* 25754 80034F54 0980023C */  lui        $v0, %hi(ETActor)
/* 25758 80034F58 2800B4AF */  sw         $s4, 0x28($sp)
/* 2575C 80034F5C B05A5424 */  addiu      $s4, $v0, %lo(ETActor)
/* 25760 80034F60 0A80033C */  lui        $v1, %hi(BootsActor)
/* 25764 80034F64 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 25768 80034F68 988D7124 */  addiu      $s1, $v1, %lo(BootsActor)
/* 2576C 80034F6C 1800B0AF */  sw         $s0, 0x18($sp)
/* 25770 80034F70 6C003026 */  addiu      $s0, $s1, 0x6C
/* 25774 80034F74 D009858F */  lw         $a1, %gp_rel(BootsExpressionFile)($gp)
/* 25778 80034F78 0A80023C */  lui        $v0, %hi(boots_aidata)
/* 2577C 80034F7C 2000B2AF */  sw         $s2, 0x20($sp)
/* 25780 80034F80 588F5224 */  addiu      $s2, $v0, %lo(boots_aidata)
/* 25784 80034F84 2400B3AF */  sw         $s3, 0x24($sp)
/* 25788 80034F88 21986000 */  addu       $s3, $v1, $zero
/* 2578C 80034F8C 2C00B5AF */  sw         $s5, 0x2C($sp)
/* 25790 80034F90 3400BFAF */  sw         $ra, 0x34($sp)
/* 25794 80034F94 3000B6AF */  sw         $s6, 0x30($sp)
/* 25798 80034F98 2401368E */  lw         $s6, 0x124($s1)
/* 2579C 80034F9C 3400A010 */  beqz       $a1, .L80035070
/* 257A0 80034FA0 21A84000 */   addu      $s5, $v0, $zero
/* 257A4 80034FA4 D809828F */  lw         $v0, %gp_rel(BootsEyeTimer)($gp)
/* 257A8 80034FA8 00000000 */  nop
/* 257AC 80034FAC FFFF4224 */  addiu      $v0, $v0, -0x1
/* 257B0 80034FB0 D80982AF */  sw         $v0, %gp_rel(BootsEyeTimer)($gp)
/* 257B4 80034FB4 2E004014 */  bnez       $v0, .L80035070
/* 257B8 80034FB8 AA2A033C */   lui       $v1, (0x2AAAAAAB >> 16)
/* 257BC 80034FBC D409848F */  lw         $a0, %gp_rel(BootsEyeFrame)($gp)
/* 257C0 80034FC0 ABAA6334 */  ori        $v1, $v1, (0x2AAAAAAB & 0xFFFF)
/* 257C4 80034FC4 01008424 */  addiu      $a0, $a0, 0x1
/* 257C8 80034FC8 18008300 */  mult       $a0, $v1
/* 257CC 80034FCC 2130A000 */  addu       $a2, $a1, $zero
/* 257D0 80034FD0 0A000224 */  addiu      $v0, $zero, 0xA
/* 257D4 80034FD4 D80982AF */  sw         $v0, %gp_rel(BootsEyeTimer)($gp)
/* 257D8 80034FD8 C32F0400 */  sra        $a1, $a0, 31
/* 257DC 80034FDC 10180000 */  mfhi       $v1
/* 257E0 80034FE0 43180300 */  sra        $v1, $v1, 1
/* 257E4 80034FE4 23186500 */  subu       $v1, $v1, $a1
/* 257E8 80034FE8 40100300 */  sll        $v0, $v1, 1
/* 257EC 80034FEC 21104300 */  addu       $v0, $v0, $v1
/* 257F0 80034FF0 80100200 */  sll        $v0, $v0, 2
/* 257F4 80034FF4 23208200 */  subu       $a0, $a0, $v0
/* 257F8 80034FF8 0880023C */  lui        $v0, %hi(BootsBlinkTable)
/* 257FC 80034FFC 287D4224 */  addiu      $v0, $v0, %lo(BootsBlinkTable)
/* 25800 80035000 D40984AF */  sw         $a0, %gp_rel(BootsEyeFrame)($gp)
/* 25804 80035004 80200400 */  sll        $a0, $a0, 2
/* 25808 80035008 21208200 */  addu       $a0, $a0, $v0
/* 2580C 8003500C 0000848C */  lw         $a0, 0x0($a0)
/* 25810 80035010 00000000 */  nop
/* 25814 80035014 05008018 */  blez       $a0, .L8003502C
/* 25818 80035018 0802C524 */   addiu     $a1, $a2, 0x208
.L8003501C:
/* 2581C 8003501C FFFF8424 */  addiu      $a0, $a0, -0x1
/* 25820 80035020 FEFF8014 */  bnez       $a0, .L8003501C
/* 25824 80035024 0812C624 */   addiu     $a2, $a2, 0x1208
/* 25828 80035028 0802C524 */  addiu      $a1, $a2, 0x208
.L8003502C:
/* 2582C 8003502C 0C80033C */  lui        $v1, %hi(VRAMItems)
/* 25830 80035030 4814868F */  lw         $a2, %gp_rel(BootsVramIndex)($gp)
/* 25834 80035034 38AD6324 */  addiu      $v1, $v1, %lo(VRAMItems)
/* 25838 80035038 80100600 */  sll        $v0, $a2, 2
/* 2583C 8003503C 21104600 */  addu       $v0, $v0, $a2
/* 25840 80035040 80100200 */  sll        $v0, $v0, 2
/* 25844 80035044 21104300 */  addu       $v0, $v0, $v1
/* 25848 80035048 03004388 */  lwl        $v1, 0x3($v0)
/* 2584C 8003504C 00004398 */  lwr        $v1, 0x0($v0)
/* 25850 80035050 07004688 */  lwl        $a2, 0x7($v0)
/* 25854 80035054 04004698 */  lwr        $a2, 0x4($v0)
/* 25858 80035058 1300A3AB */  swl        $v1, 0x13($sp)
/* 2585C 8003505C 1000A3BB */  swr        $v1, 0x10($sp)
/* 25860 80035060 1700A6AB */  swl        $a2, 0x17($sp)
/* 25864 80035064 1400A6BB */  swr        $a2, 0x14($sp)
/* 25868 80035068 636E010C */  jal        AddVBLoadImage
/* 2586C 8003506C 1000A427 */   addiu     $a0, $sp, 0x10
.L80035070:
/* 25870 80035070 0800428E */  lw         $v0, 0x8($s2)
/* 25874 80035074 0000448E */  lw         $a0, 0x0($s2)
/* 25878 80035078 01004224 */  addiu      $v0, $v0, 0x1
/* 2587C 8003507C 0800832C */  sltiu      $v1, $a0, 0x8
/* 25880 80035080 13016010 */  beqz       $v1, .L800354D0
/* 25884 80035084 080042AE */   sw        $v0, 0x8($s2)
/* 25888 80035088 0180023C */  lui        $v0, %hi(jtbl_8001279C)
/* 2588C 8003508C 9C274224 */  addiu      $v0, $v0, %lo(jtbl_8001279C)
/* 25890 80035090 80180400 */  sll        $v1, $a0, 2
/* 25894 80035094 21186200 */  addu       $v1, $v1, $v0
/* 25898 80035098 0000648C */  lw         $a0, 0x0($v1)
/* 2589C 8003509C 00000000 */  nop
/* 258A0 800350A0 08008000 */  jr         $a0
/* 258A4 800350A4 00000000 */   nop
jlabel .L800350A8
/* 258A8 800350A8 7C24010C */  jal        GenericAIMove
/* 258AC 800350AC 21202002 */   addu      $a0, $s1, $zero
/* 258B0 800350B0 0A80043C */  lui        $a0, %hi(BootsEndTrackPath)
/* 258B4 800350B4 D913010C */  jal        IsPathDone
/* 258B8 800350B8 308F8424 */   addiu     $a0, $a0, %lo(BootsEndTrackPath)
/* 258BC 800350BC 04014010 */  beqz       $v0, .L800354D0
/* 258C0 800350C0 00000000 */   nop
/* 258C4 800350C4 988D6226 */  addiu      $v0, $s3, %lo(BootsActor)
/* 258C8 800350C8 34D50008 */  j          .L800354D0
/* 258CC 800350CC 580040AC */   sw        $zero, 0x58($v0)
jlabel .L800350D0
/* 258D0 800350D0 0980023C */  lui        $v0, %hi(gETEndLevel)
/* 258D4 800350D4 D442428C */  lw         $v0, %lo(gETEndLevel)($v0)
/* 258D8 800350D8 00000000 */  nop
/* 258DC 800350DC 62004010 */  beqz       $v0, .L80035268
/* 258E0 800350E0 0A80033C */   lui       $v1, %hi(BootsEndTrack)
/* 258E4 800350E4 908F6C24 */  addiu      $t4, $v1, %lo(BootsEndTrack)
/* 258E8 800350E8 01000924 */  addiu      $t1, $zero, 0x1
/* 258EC 800350EC 0980063C */  lui        $a2, %hi(ETEndLevelpath)
/* 258F0 800350F0 21380000 */  addu       $a3, $zero, $zero
/* 258F4 800350F4 0A800E3C */  lui        $t6, %hi(BootsEndTrackPath)
/* 258F8 800350F8 21786000 */  addu       $t7, $v1, $zero
/* 258FC 800350FC 0A800D3C */  lui        $t5, %hi(BootsEndTrackPathData)
/* 25900 80035100 0000228E */  lw         $v0, 0x0($s1)
/* 25904 80035104 0400248E */  lw         $a0, 0x4($s1)
/* 25908 80035108 0800258E */  lw         $a1, 0x8($s1)
/* 2590C 8003510C 385CC88C */  lw         $t0, %lo(ETEndLevelpath)($a2)
/* 25910 80035110 2C013026 */  addiu      $s0, $s1, 0x12C
/* 25914 80035114 908F62AC */  sw         $v0, %lo(BootsEndTrack)($v1)
/* 25918 80035118 040084AD */  sw         $a0, 0x4($t4)
/* 2591C 8003511C 080085AD */  sw         $a1, 0x8($t4)
/* 25920 80035120 0000028D */  lw         $v0, 0x0($t0)
/* 25924 80035124 00000000 */  nop
/* 25928 80035128 FFFF4224 */  addiu      $v0, $v0, -0x1
/* 2592C 8003512C 1A004010 */  beqz       $v0, .L80035198
/* 25930 80035130 10008C25 */   addiu     $t4, $t4, 0x10
/* 25934 80035134 21280001 */  addu       $a1, $t0, $zero
.L80035138:
/* 25938 80035138 0800A28C */  lw         $v0, 0x8($a1)
/* 2593C 8003513C 00210700 */  sll        $a0, $a3, 4
/* 25940 80035140 21108200 */  addu       $v0, $a0, $v0
/* 25944 80035144 0000438C */  lw         $v1, 0x0($v0)
/* 25948 80035148 00000000 */  nop
/* 2594C 8003514C 000083AD */  sw         $v1, 0x0($t4)
/* 25950 80035150 0800A28C */  lw         $v0, 0x8($a1)
/* 25954 80035154 00000000 */  nop
/* 25958 80035158 21108200 */  addu       $v0, $a0, $v0
/* 2595C 8003515C 0400438C */  lw         $v1, 0x4($v0)
/* 25960 80035160 00000000 */  nop
/* 25964 80035164 040083AD */  sw         $v1, 0x4($t4)
/* 25968 80035168 0800A28C */  lw         $v0, 0x8($a1)
/* 2596C 8003516C 01002925 */  addiu      $t1, $t1, 0x1
/* 25970 80035170 21208200 */  addu       $a0, $a0, $v0
/* 25974 80035174 0800838C */  lw         $v1, 0x8($a0)
/* 25978 80035178 0100E724 */  addiu      $a3, $a3, 0x1
/* 2597C 8003517C 080083AD */  sw         $v1, 0x8($t4)
/* 25980 80035180 0000A28C */  lw         $v0, 0x0($a1)
/* 25984 80035184 00000000 */  nop
/* 25988 80035188 FFFF4224 */  addiu      $v0, $v0, -0x1
/* 2598C 8003518C 2B10E200 */  sltu       $v0, $a3, $v0
/* 25990 80035190 E9FF4014 */  bnez       $v0, .L80035138
/* 25994 80035194 10008C25 */   addiu     $t4, $t4, 0x10
.L80035198:
/* 25998 80035198 01002925 */  addiu      $t1, $t1, 0x1
/* 2599C 8003519C 21202002 */  addu       $a0, $s1, $zero
/* 259A0 800351A0 385CC88C */  lw         $t0, %lo(ETEndLevelpath)($a2)
/* 259A4 800351A4 308FCB25 */  addiu      $t3, $t6, %lo(BootsEndTrackPath)
/* 259A8 800351A8 0000028D */  lw         $v0, 0x0($t0)
/* 259AC 800351AC 0800038D */  lw         $v1, 0x8($t0)
/* 259B0 800351B0 00110200 */  sll        $v0, $v0, 4
/* 259B4 800351B4 21104300 */  addu       $v0, $v0, $v1
/* 259B8 800351B8 F0FF438C */  lw         $v1, -0x10($v0)
/* 259BC 800351BC 21286001 */  addu       $a1, $t3, $zero
/* 259C0 800351C0 80FF6324 */  addiu      $v1, $v1, -0x80
/* 259C4 800351C4 000083AD */  sw         $v1, 0x0($t4)
/* 259C8 800351C8 0000028D */  lw         $v0, 0x0($t0)
/* 259CC 800351CC 0800038D */  lw         $v1, 0x8($t0)
/* 259D0 800351D0 00110200 */  sll        $v0, $v0, 4
/* 259D4 800351D4 21104300 */  addu       $v0, $v0, $v1
/* 259D8 800351D8 F4FF478C */  lw         $a3, -0xC($v0)
/* 259DC 800351DC 000C0624 */  addiu      $a2, $zero, 0xC00
/* 259E0 800351E0 040087AD */  sw         $a3, 0x4($t4)
/* 259E4 800351E4 21380000 */  addu       $a3, $zero, $zero
/* 259E8 800351E8 0000028D */  lw         $v0, 0x0($t0)
/* 259EC 800351EC 0800038D */  lw         $v1, 0x8($t0)
/* 259F0 800351F0 F7FF0824 */  addiu      $t0, $zero, -0x9
/* 259F4 800351F4 00110200 */  sll        $v0, $v0, 4
/* 259F8 800351F8 21104300 */  addu       $v0, $v0, $v1
/* 259FC 800351FC 208FA325 */  addiu      $v1, $t5, %lo(BootsEndTrackPathData)
/* 25A00 80035200 F8FF4A8C */  lw         $t2, -0x8($v0)
/* 25A04 80035204 908FE225 */  addiu      $v0, $t7, %lo(BootsEndTrack)
/* 25A08 80035208 208FA9AD */  sw         $t1, %lo(BootsEndTrackPathData)($t5)
/* 25A0C 8003520C 080062AC */  sw         $v0, 0x8($v1)
/* 25A10 80035210 308FC3AD */  sw         $v1, %lo(BootsEndTrackPath)($t6)
/* 25A14 80035214 0400628C */  lw         $v0, 0x4($v1)
/* 25A18 80035218 4400298E */  lw         $t1, 0x44($s1)
/* 25A1C 8003521C 24104800 */  and        $v0, $v0, $t0
/* 25A20 80035220 040062AC */  sw         $v0, 0x4($v1)
/* 25A24 80035224 08008AAD */  sw         $t2, 0x8($t4)
/* 25A28 80035228 1C00228D */  lw         $v0, 0x1C($t1)
/* 25A2C 8003522C FFF70324 */  addiu      $v1, $zero, -0x801
/* 25A30 80035230 24104300 */  and        $v0, $v0, $v1
/* 25A34 80035234 1C0022AD */  sw         $v0, 0x1C($t1)
/* 25A38 80035238 9C13010C */  jal        InitPath
/* 25A3C 8003523C 0400CBAE */   sw        $t3, 0x4($s6)
/* 25A40 80035240 21202002 */  addu       $a0, $s1, $zero
/* 25A44 80035244 01000524 */  addiu      $a1, $zero, 0x1
/* 25A48 80035248 04000624 */  addiu      $a2, $zero, 0x4
/* 25A4C 8003524C 8FE2000C */  jal        SetAnimWithInterp
/* 25A50 80035250 21380002 */   addu      $a3, $s0, $zero
/* 25A54 80035254 65E2000C */  jal        AnimateActor
/* 25A58 80035258 21202002 */   addu      $a0, $s1, $zero
/* 25A5C 8003525C 07000224 */  addiu      $v0, $zero, 0x7
/* 25A60 80035260 34D50008 */  j          .L800354D0
/* 25A64 80035264 000042AE */   sw        $v0, 0x0($s2)
.L80035268:
/* 25A68 80035268 21208002 */  addu       $a0, $s4, $zero
/* 25A6C 8003526C 3AFC000C */  jal        CollisionCheck
/* 25A70 80035270 21282002 */   addu      $a1, $s1, $zero
/* 25A74 80035274 21184000 */  addu       $v1, $v0, $zero
/* 25A78 80035278 6C003026 */  addiu      $s0, $s1, 0x6C
/* 25A7C 8003527C 0980023C */  lui        $v0, %hi(BootsAndDoraRidingFlag)
/* 25A80 80035280 EC42428C */  lw         $v0, %lo(BootsAndDoraRidingFlag)($v0)
/* 25A84 80035284 00000000 */  nop
/* 25A88 80035288 1E004014 */  bnez       $v0, .L80035304
/* 25A8C 8003528C 588FB326 */   addiu     $s3, $s5, %lo(boots_aidata)
/* 25A90 80035290 1C006010 */  beqz       $v1, .L80035304
/* 25A94 80035294 21202002 */   addu      $a0, $s1, $zero
/* 25A98 80035298 21288002 */  addu       $a1, $s4, $zero
/* 25A9C 8003529C 21300002 */  addu       $a2, $s0, $zero
/* 25AA0 800352A0 6B6A000C */  jal        StopActorMotionCollision
/* 25AA4 800352A4 6C00A724 */   addiu     $a3, $a1, 0x6C
/* 25AA8 800352A8 16004010 */  beqz       $v0, .L80035304
/* 25AAC 800352AC 21200002 */   addu      $a0, $s0, $zero
/* 25AB0 800352B0 9C0020AE */  sw         $zero, 0x9C($s1)
/* 25AB4 800352B4 A40020AE */  sw         $zero, 0xA4($s1)
/* 25AB8 800352B8 8000028E */  lw         $v0, 0x80($s0)
/* 25ABC 800352BC FEFF0324 */  addiu      $v1, $zero, -0x2
/* 25AC0 800352C0 24104300 */  and        $v0, $v0, $v1
/* 25AC4 800352C4 A7F7000C */  jal        UpdateMotionPhysics
/* 25AC8 800352C8 800002AE */   sw        $v0, 0x80($s0)
/* 25ACC 800352CC 21202002 */  addu       $a0, $s1, $zero
/* 25AD0 800352D0 9B87010C */  jal        UpdateMotionPhysicsToActor
/* 25AD4 800352D4 21280002 */   addu      $a1, $s0, $zero
/* 25AD8 800352D8 3000638E */  lw         $v1, 0x30($s3)
/* 25ADC 800352DC 02000224 */  addiu      $v0, $zero, 0x2
/* 25AE0 800352E0 05006210 */  beq        $v1, $v0, .L800352F8
/* 25AE4 800352E4 21202002 */   addu      $a0, $s1, $zero
/* 25AE8 800352E8 01000524 */  addiu      $a1, $zero, 0x1
/* 25AEC 800352EC 21300000 */  addu       $a2, $zero, $zero
/* 25AF0 800352F0 60DE000C */  jal        CheckAnimLoop
/* 25AF4 800352F4 2C012726 */   addiu     $a3, $s1, 0x12C
.L800352F8:
/* 25AF8 800352F8 01000224 */  addiu      $v0, $zero, 0x1
/* 25AFC 800352FC C5D40008 */  j          .L80035314
/* 25B00 80035300 300062AE */   sw        $v0, 0x30($s3)
.L80035304:
/* 25B04 80035304 8000028E */  lw         $v0, 0x80($s0)
/* 25B08 80035308 300060AE */  sw         $zero, 0x30($s3)
/* 25B0C 8003530C 01004234 */  ori        $v0, $v0, 0x1
/* 25B10 80035310 800002AE */  sw         $v0, 0x80($s0)
.L80035314:
/* 25B14 80035314 9822010C */  jal        GenericFollowPlayer
/* 25B18 80035318 21202002 */   addu      $a0, $s1, $zero
/* 25B1C 8003531C 6C004010 */  beqz       $v0, .L800354D0
/* 25B20 80035320 00000000 */   nop
/* 25B24 80035324 02000224 */  addiu      $v0, $zero, 0x2
/* 25B28 80035328 34D50008 */  j          .L800354D0
/* 25B2C 8003532C 300042AE */   sw        $v0, 0x30($s2)
jlabel .L80035330
/* 25B30 80035330 8000028E */  lw         $v0, 0x80($s0)
/* 25B34 80035334 0800438E */  lw         $v1, 0x8($s2)
/* 25B38 80035338 03004234 */  ori        $v0, $v0, 0x3
/* 25B3C 8003533C 01006330 */  andi       $v1, $v1, 0x1
/* 25B40 80035340 63006014 */  bnez       $v1, .L800354D0
/* 25B44 80035344 800002AE */   sw        $v0, 0x80($s0)
/* 25B48 80035348 21202002 */  addu       $a0, $s1, $zero
/* 25B4C 8003534C 04005026 */  addiu      $s0, $s2, 0x4
/* 25B50 80035350 21280002 */  addu       $a1, $s0, $zero
/* 25B54 80035354 A826010C */  jal        ActorJump
/* 25B58 80035358 0C004626 */   addiu     $a2, $s2, 0xC
/* 25B5C 8003535C 21184000 */  addu       $v1, $v0, $zero
/* 25B60 80035360 01000224 */  addiu      $v0, $zero, 0x1
/* 25B64 80035364 21006214 */  bne        $v1, $v0, .L800353EC
/* 25B68 80035368 02000224 */   addiu     $v0, $zero, 0x2
/* 25B6C 8003536C 21202002 */  addu       $a0, $s1, $zero
/* 25B70 80035370 DA28010C */  jal        InitActorJump
/* 25B74 80035374 21280002 */   addu      $a1, $s0, $zero
/* 25B78 80035378 F1FF0224 */  addiu      $v0, $zero, -0xF
/* 25B7C 8003537C 3400448E */  lw         $a0, 0x34($s2)
/* 25B80 80035380 04000324 */  addiu      $v1, $zero, 0x4
/* 25B84 80035384 080042AE */  sw         $v0, 0x8($s2)
/* 25B88 80035388 3B86000C */  jal        ActivateCrateAnim
/* 25B8C 8003538C 000043AE */   sw        $v1, 0x0($s2)
/* 25B90 80035390 07000424 */  addiu      $a0, $zero, 0x7
/* 25B94 80035394 21280000 */  addu       $a1, $zero, $zero
/* 25B98 80035398 6F4A010C */  jal        pxm_sendevent
/* 25B9C 8003539C 21300000 */   addu      $a2, $zero, $zero
/* 25BA0 800353A0 1C004426 */  addiu      $a0, $s2, 0x1C
/* 25BA4 800353A4 0000828E */  lw         $v0, 0x0($s4)
/* 25BA8 800353A8 0400838E */  lw         $v1, 0x4($s4)
/* 25BAC 800353AC 0800858E */  lw         $a1, 0x8($s4)
/* 25BB0 800353B0 80FF4224 */  addiu      $v0, $v0, -0x80
/* 25BB4 800353B4 1C0042AE */  sw         $v0, 0x1C($s2)
/* 25BB8 800353B8 200043AE */  sw         $v1, 0x20($s2)
/* 25BBC 800353BC 54DA000C */  jal        GetSafeCellIndex
/* 25BC0 800353C0 240045AE */   sw        $a1, 0x24($s2)
/* 25BC4 800353C4 42004014 */  bnez       $v0, .L800354D0
/* 25BC8 800353C8 00000000 */   nop
/* 25BCC 800353CC 0000828E */  lw         $v0, 0x0($s4)
/* 25BD0 800353D0 0400838E */  lw         $v1, 0x4($s4)
/* 25BD4 800353D4 0800848E */  lw         $a0, 0x8($s4)
/* 25BD8 800353D8 80004224 */  addiu      $v0, $v0, 0x80
/* 25BDC 800353DC 1C0042AE */  sw         $v0, 0x1C($s2)
/* 25BE0 800353E0 200043AE */  sw         $v1, 0x20($s2)
/* 25BE4 800353E4 34D50008 */  j          .L800354D0
/* 25BE8 800353E8 240044AE */   sw        $a0, 0x24($s2)
.L800353EC:
/* 25BEC 800353EC 38006214 */  bne        $v1, $v0, .L800354D0
/* 25BF0 800353F0 00000000 */   nop
/* 25BF4 800353F4 C168000C */  jal        ClearPlayerWait
/* 25BF8 800353F8 000040AE */   sw        $zero, 0x0($s2)
/* 25BFC 800353FC 34D50008 */  j          .L800354D0
/* 25C00 80035400 00000000 */   nop
jlabel .L80035404
/* 25C04 80035404 0800438E */  lw         $v1, 0x8($s2)
/* 25C08 80035408 00000000 */  nop
/* 25C0C 8003540C 2C006018 */  blez       $v1, .L800354C0
/* 25C10 80035410 01006230 */   andi      $v0, $v1, 0x1
/* 25C14 80035414 2E004014 */  bnez       $v0, .L800354D0
/* 25C18 80035418 00000000 */   nop
/* 25C1C 8003541C 0B006228 */  slti       $v0, $v1, 0xB
/* 25C20 80035420 05004014 */  bnez       $v0, .L80035438
/* 25C24 80035424 21202002 */   addu      $a0, $s1, $zero
/* 25C28 80035428 1000228E */  lw         $v0, 0x10($s1)
/* 25C2C 8003542C 00000000 */  nop
/* 25C30 80035430 00044234 */  ori        $v0, $v0, 0x400
/* 25C34 80035434 100022AE */  sw         $v0, 0x10($s1)
.L80035438:
/* 25C38 80035438 04004526 */  addiu      $a1, $s2, 0x4
/* 25C3C 8003543C A826010C */  jal        ActorJump
/* 25C40 80035440 1C004626 */   addiu     $a2, $s2, 0x1C
/* 25C44 80035444 21184000 */  addu       $v1, $v0, $zero
/* 25C48 80035448 01000224 */  addiu      $v0, $zero, 0x1
/* 25C4C 8003544C 08006210 */  beq        $v1, $v0, .L80035470
/* 25C50 80035450 00000000 */   nop
/* 25C54 80035454 1E006010 */  beqz       $v1, .L800354D0
/* 25C58 80035458 00000000 */   nop
/* 25C5C 8003545C 0800428E */  lw         $v0, 0x8($s2)
/* 25C60 80035460 00000000 */  nop
/* 25C64 80035464 3D004228 */  slti       $v0, $v0, 0x3D
/* 25C68 80035468 19004014 */  bnez       $v0, .L800354D0
/* 25C6C 8003546C 00000000 */   nop
.L80035470:
/* 25C70 80035470 FDFF0324 */  addiu      $v1, $zero, -0x3
/* 25C74 80035474 000040AE */  sw         $zero, 0x0($s2)
/* 25C78 80035478 8000028E */  lw         $v0, 0x80($s0)
/* 25C7C 8003547C 1C00448E */  lw         $a0, 0x1C($s2)
/* 25C80 80035480 2000458E */  lw         $a1, 0x20($s2)
/* 25C84 80035484 2400468E */  lw         $a2, 0x24($s2)
/* 25C88 80035488 3400478E */  lw         $a3, 0x34($s2)
/* 25C8C 8003548C 24104300 */  and        $v0, $v0, $v1
/* 25C90 80035490 800002AE */  sw         $v0, 0x80($s0)
/* 25C94 80035494 000024AE */  sw         $a0, 0x0($s1)
/* 25C98 80035498 040025AE */  sw         $a1, 0x4($s1)
/* 25C9C 8003549C 080026AE */  sw         $a2, 0x8($s1)
/* 25CA0 800354A0 2800E28C */  lw         $v0, 0x28($a3)
/* 25CA4 800354A4 00000000 */  nop
/* 25CA8 800354A8 09004014 */  bnez       $v0, .L800354D0
/* 25CAC 800354AC 00000000 */   nop
/* 25CB0 800354B0 C168000C */  jal        ClearPlayerWait
/* 25CB4 800354B4 00000000 */   nop
/* 25CB8 800354B8 34D50008 */  j          .L800354D0
/* 25CBC 800354BC 00000000 */   nop
.L800354C0:
/* 25CC0 800354C0 1000228E */  lw         $v0, 0x10($s1)
/* 25CC4 800354C4 FFFB0324 */  addiu      $v1, $zero, -0x401
/* 25CC8 800354C8 24104300 */  and        $v0, $v0, $v1
/* 25CCC 800354CC 100022AE */  sw         $v0, 0x10($s1)
jlabel .L800354D0
/* 25CD0 800354D0 3400BF8F */  lw         $ra, 0x34($sp)
/* 25CD4 800354D4 3000B68F */  lw         $s6, 0x30($sp)
/* 25CD8 800354D8 2C00B58F */  lw         $s5, 0x2C($sp)
/* 25CDC 800354DC 2800B48F */  lw         $s4, 0x28($sp)
/* 25CE0 800354E0 2400B38F */  lw         $s3, 0x24($sp)
/* 25CE4 800354E4 2000B28F */  lw         $s2, 0x20($sp)
/* 25CE8 800354E8 1C00B18F */  lw         $s1, 0x1C($sp)
/* 25CEC 800354EC 1800B08F */  lw         $s0, 0x18($sp)
/* 25CF0 800354F0 0800E003 */  jr         $ra
/* 25CF4 800354F4 3800BD27 */   addiu     $sp, $sp, 0x38
.size BootsBrains, . - BootsBrains
