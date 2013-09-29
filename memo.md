YDC mode

remap Y:Y, vim_emu_ydc_mode.xml
remap D:D, vim_emu_ydc_mode.xml
remap C:C, vim_emu_ydc_mode.xml
x, X, s, S


Visual mode
v, V
vim_emu_copy_cut
repeat(
C-b, C-f
)
vim_emu_move.xml

repeat(
C-b
)
vim_emu_move_up

vim_emu_copy_cut
vim_emu_repeat(
C-b, C-f)
vim_emu_move_up
vim_emu_move_down

AFTER_MOVE=none

- - -
vim_emu_ydc_mode
Y, y, y, vim_emu_move.xml
AFTER_MOVE=C-c, VIM_EMU_FORCE_ON_NORMAL_MODE

- - -
vim_emu_move.xml
12x9 + 7

vim_emu_move_up.xml x 3 (x9) + g/gg
vim_emu_move_down.xml x 3  (x9)+ M/G


- - -
vim_emu_repeat.xml x 9
