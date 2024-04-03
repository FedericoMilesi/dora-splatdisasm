.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel TriggerBrains
/* 3100C 8004080C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 31010 80040810 64000324 */  addiu      $v1, $zero, 0x64
/* 31014 80040814 1000BFAF */  sw         $ra, 0x10($sp)
/* 31018 80040818 0C00828C */  lw         $v0, 0xC($a0)
/* 3101C 8004081C 2801858C */  lw         $a1, 0x128($a0)
/* 31020 80040820 0C004314 */  bne        $v0, $v1, .L80040854
/* 31024 80040824 00000000 */   nop
/* 31028 80040828 6400838C */  lw         $v1, 0x64($a0)
/* 3102C 8004082C 00000000 */  nop
/* 31030 80040830 06006010 */  beqz       $v1, .L8004084C
/* 31034 80040834 FFFF6324 */   addiu     $v1, $v1, -0x1
/* 31038 80040838 5400828C */  lw         $v0, 0x54($a0)
/* 3103C 8004083C 640083AC */  sw         $v1, 0x64($a0)
/* 31040 80040840 71004224 */  addiu      $v0, $v0, 0x71
/* 31044 80040844 1F020108 */  j          .L8004087C
/* 31048 80040848 540082AC */   sw        $v0, 0x54($a0)
.L8004084C:
/* 3104C 8004084C 1F020108 */  j          .L8004087C
/* 31050 80040850 0C0080AC */   sw        $zero, 0xC($a0)
.L80040854:
/* 31054 80040854 0400A28C */  lw         $v0, 0x4($a1)
/* 31058 80040858 00000000 */  nop
/* 3105C 8004085C 05004010 */  beqz       $v0, .L80040874
/* 31060 80040860 00000000 */   nop
/* 31064 80040864 5400828C */  lw         $v0, 0x54($a0)
/* 31068 80040868 00000000 */  nop
/* 3106C 8004086C 71004224 */  addiu      $v0, $v0, 0x71
/* 31070 80040870 540082AC */  sw         $v0, 0x54($a0)
.L80040874:
/* 31074 80040874 8528010C */  jal        GenericActorBrains
/* 31078 80040878 00000000 */   nop
.L8004087C:
/* 3107C 8004087C 1000BF8F */  lw         $ra, 0x10($sp)
/* 31080 80040880 00000000 */  nop
/* 31084 80040884 0800E003 */  jr         $ra
/* 31088 80040888 1800BD27 */   addiu     $sp, $sp, 0x18
.size TriggerBrains, . - TriggerBrains
