W/O new vim_emu
Nov 10 23:46:27 pb-d-128-141-145-34 kernel[0]: KeyRemap4MacBook --Info-- RemapClass::allocation_count_ 481167/2097152 (memory usage: 22% of 8192KB)

W/ new vim_emu
Nov 10 23:45:32 pb-d-128-141-145-34 kernel[0]: KeyRemap4MacBook --Info-- RemapClass::allocation_count_ 588692/2097152 (memory usage: 28% of 8192KB)

remove repeat
Nov 11 00:39:41 pb-d-128-141-145-34 kernel[0]: KeyRemap4MacBook --Info-- RemapClass::allocation_count_ 579051/2097152 (memory usage: 27% of 8192KB)

Reduce VIM_EMU_FORCE_OFF_ALL_BUT_LINE
Nov 11 01:10:55 pb-d-128-141-145-34 kernel[0]: KeyRemap4MacBook --Info-- RemapClass::allocation_count_ 568021/2097152 (memory usage: 27% of 8192KB)

Reduce more congfig
Nov 11 01:35:39 pb-d-128-141-145-34 kernel[0]: KeyRemap4MacBook --Info-- RemapClass::allocation_count_ 565026/2097152 (memory usage: 26% of 8192KB)

W/O replacements at other apps/change apps
Nov 11 01:38:42 pb-d-128-141-145-34 kernel[0]: KeyRemap4MacBook --Info-- RemapClass::allocation_count_ 558758/2097152 (memory usage: 26% of 8192KB)
, reversed (include other apps/change apps)

Check W/O vim_emu in KeyRemap4MacBook
Nov 11 01:42:35 pb-d-128-141-145-34 kernel[0]: KeyRemap4MacBook --Info-- RemapClass::allocation_count_ 373371/2097152 (memory usage: 17% of 8192KB)

Check W/ vim_emu in KeyRemap4MacBook
Nov 11 01:44:05 pb-d-128-141-145-34 kernel[0]: KeyRemap4MacBook --Info-- RemapClass::allocation_count_ 565026/2097152 (memory usage: 26% of 8192KB)


Check W/O new vim_emu
Nov 11 01:45:04 pb-d-128-141-145-34 kernel[0]: KeyRemap4MacBook --Info-- RemapClass::allocation_count_ 481167/2097152 (memory usage: 22% of 8192KB)

Check W/ both
Nov 11 01:45:17 pb-d-128-141-145-34 kernel[0]: KeyRemap4MacBook --Info-- RemapClass::allocation_count_ 565026/2097152 (memory usage: 26% of 8192KB)




Previous Multi Option
171428 177850 659017/2097152 (memory usage: 31% of 8192KB)

All
 77811 84233 565400/2097152 (memory usage: 26% of 8192KB)

All, enable repeat
635539641961 1123128/2097152 (memory usage: 53% of 8192KB)

Non
 -6422     0 481167/2097152 (memory usage: 22% of 8192KB)

Only setting
     0  6422 487589/2097152 (memory usage: 23% of 8192KB)

All, disable record macro's repeat
 68523 74945 556112/2097152 (memory usage: 26% of 8192KB)

Setting + Emulation
 52526 58948 540115/2097152 (memory usage: 25% of 8192KB)

Setting + Reord Macro
 10496 16918 498085/2097152 (memory usage: 23% of 8192KB)

Setting + Reset
  6182 12604 493771/2097152 (memory usage: 23% of 8192KB)

Setting + Visual Block
  4930 11352 492519/2097152 (memory usage: 23% of 8192KB)

Setting + ChangeKey
  2226  8648 489815/2097152 (memory usage: 23% of 8192KB)

Setting + Disable
  1365  7787 488954/2097152 (memory usage: 23% of 8192KB)

Setting + Reord Macro (no repeat)
  1208  7630 488797/2097152 (memory usage: 23% of 8192KB)

Setting + Repeat (not included in all) <- only 2-9 settings
   184  6606 487773/2097152 (memory usage: 23% of 8192KB)

Setting + Left Bracket to ESC
    86  6508 487675/2097152 (memory usage: 23% of 8192KB)



All, remove visual bell (default for below)
 63593 70015 551182/2097152 (memory usage: 26% of 8192KB)

All, remove replace
 60193 66615 547782/2097152 (memory usage: 26% of 8192KB)

All, only replace (revese of remove replace)
  3400  9822 547782/2097152 (memory usage: 26% of 8192KB)

All, only move in core_emu
 13661 20083 501250/2097152 (memory usage: 23% of 8192KB)

 visual x 2 (13000x2.5), 

All
551185/2097152 (memory usage: 26% of 8192KB)

All
551174/2097152 (memory usage: 26% of 8192KB)

All reset + search reset (~6000)
557356/2097152 (memory usage: 26% of 8192KB)

All using (~200)
551334/2097152 (memory usage: 26% of 8192KB)

All using, spotloght (~900)
552110/2097152 (memory usage: 26% of 8192KB)




commit 42950a17095dd558b19cfd45937bd644b00ed6b0
fixed dd, optimized ydc
548056/2097152 (memory usage: 26% of 8192KB)

commit 489d4cf560f5827bb93d8264c6b60d43c74efef9
removed C-a/C-e
544716/2097152 (memory usage: 25% of 8192KB)

commit f143a956b708a067bd724ac7c297b2ba57e59c1b
added {}
546746/2097152 (memory usage: 26% of 8192KB)

commit f143a956b708a067bd724ac7c297b2ba57e59c1b
updated replace
546355/2097152 (memory usage: 26% of 8192KB)

moved M from move to core_emu
545211/2097152 (memory usage: 25% of 8192KB)
