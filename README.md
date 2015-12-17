vim_emu
=======

Setting files of 
[Karabiner](https://pqrs.org/osx/karabiner/)(KeyRemap4MacBook) for VIM Emulation.

## Installation

### Stable version is available in KeyRemap4MacBook as default (from 8.3.7)
Now vim_emu was included in KeyRemap4MacBook from 8.3.7.
If you use previous version,
please update KeyRemap4MacBook or install files directly as below.
If you are up-to-date at stable release but it is before 8.3.7,
please try to check Beta version: follow [this instruction](https://github.com/tekezo/Files/blob/master/KeyRemap4MacBook/image/upgrade-to-the-latest-beta-version.png).

Update: 2013/07/14
New version which includes several ChangeKeys, Macro, etc...
is available from 8.90.19.

Note: currenlty, Repeat (e.g. 3w, y3d) and Visual Block are commented out.



### Install the latest vim_emu
There could be some updates not included in KeyRemap4MacBook, yet.
If you want to try the latest version, do:

    git clone git@github.com:rcmdnk/vim_emu.git
    cd vim_emu
    ./install.sh

- - -
If you have KeyRemap4MacBook version in which vim_emu is already installed,
you need to comment out vim_emu in `/Applications/KeyRemap4MacBook.app/Contents/Resources/checkbox.xml` like:

    <include path="include/checkbox/vi_mode.xml" />
    <include path="include/checkbox/ubiquitous_vim_bindings.xml" />
    <!-- <include path="include/checkbox/vim_emu.xml" /> -->
    <include path="include/checkbox/complete_vi_mode.xml" />

- - -

Abobe work is no longer necessary.
If you have line (~ top of the file):

    <include path="vim_emu.xml"></include>

in `private.xml`, then please remove the line.

You should have following line at the bottom of file instead:
    <include path="vim_emu.xml"></include>

Note: You need to install [KeyRemap4MacBook](http://pqrs.org/macosx/keyremap4macbook/index.html) before installing these files.

## Uninstall (for using vim_emu.git repository)
Remove `vim_emu_test.xml`, `vim_emu.xml`, `vim_emu` directory in
`"$HOME/Library/Application Support/KeyRemap4MacBook/`.

Remove the line (~at the end of file):

    <include path="vim_emu_test.xml"></include>

in `"$HOME/Library/Application Support/KeyRemap4MacBook/private.xml`.

## Keyboards
Currently, vim_emu supports US, JIS and German (partly) keyboards.

## Options
Following checkboxes will appear in your setting panel:

* ChangeKey1: Escape to enter Normal Mode, holding to emulate raw ESC.
* ChangeKey2: + Escape to back in Insert Mode
* ChangeKey3: Escape to back in Normal Mode in other than Inser Mode.
* ChangeKey4: Ctrl-[ to enter Normal Mode, holding to emulate raw ESC.
* ChangeKey5: + Ctrl-[ to back in Insert Mode
* ChangeKey6: Ctrl-[ to back in Normal Mode in other than Inser Mode.
* ChangeKey7: Simultaneous jk toggles Normal-Insert Mode.
* ChangeKey8: Simultaneous qw toggles Normal-Insert Mode.
* ChangeKey9: Simultaneous sd toggles Normal-Insert Mode.
* ChangeKey10: Ctlr-l toggles Normal-Insert Mode.
* ChangeKey11: Tap Left Cmd toggles Normal-Insert Mode.
* ChangeKey12: Tap Right Cmd toggles Normal-Insert Mode.
* Enable Vim Emulation.
* Enable Vim Recording Macro.
* Disable all non-assigned keys in other than Insert Mode.
* Ctrl-[ to Escape for non-vim_emu apps.
* Ctrl-[ to Escape in Noraml Mode.
* Reset vim_emu at non-vim_emu apps.
* Reset vim_emu at left click in any case.
* Reset vim_emu at Cmd-Tab in any case.
* Reset at Spotlight (Ctrl-Space or Ctrl-Option-Space)
* Additional settings of Control + X at insert mode.

Enable `Enable Vim Emulation` and at least one of ChangeKeys.

For simultaneous jk/qw/sd, it works only in Insert/Normal modes.
Therefore, at least one of ChangeKey 1, 3, 4, 6, 10-12
needs to be checked to leave such Virtual mode.

ChangeKey 3 and 6 works only in modes other than Insert/Normal modes,
therefore they are useful if you use ESC/Ctrl-[ as is in Insert/Normal modes.

For Recording Macro, you need MadRuby (see below).

If you check "Reset vim_emu at non-vim_emu apps",
vim_emu Mode will change to "Insert Mode" (Non-vim_emu mode)
when you push single key/click at non-vim_emu apps.
e.g.) If you change vim_emu mode to Normal at TextEdit
and change the application to Terminal and click or push key,
vim_emu Mode is changed to "Insert Mode".
It doesn't affect on Terminal, but just changes the mode for vim_emu apps.

"Reset vim_emu at left click in any case" and "Reset vim_emu at Cmd-Tab in any case"
are also similar options, but it reset mode even on vim_emu apps.


Note: You can enable all vim features, but it may make your key input/mouse move slow. Such Yank/Delete/Change Mode is especially heavy. (To do: make it light...)


Currently some options are disabled because they have too much key mappings
and it affects on the performance of Mac.

If you want, try [full_option](https://github.com/rcmdnk/vim_emu/tree/multi_option) branch.

Currently, following options are available in addition to above:

* Enable Vim Visual Block Mode.
* Enable Vim Repeat (Currently comented out).

## Applications
The default setting enables vim emulation on applications w/o Terminal (iTerm),
Vi (MacVim), Firefox, Emacs, and password dialog.

If you want to change applications, add replacement liens for `VIM_EMU_ONLY_APPS` (only on which enable) and `VIM_EMU_IGNORE_APPS` (on which don't enable) at the top of private.xml.

e.g.) Enable for all but Terminal (iTerm), Vi (MacVim), Cathode, Firefox, Emacs, and password dialog (default setting).

    <replacementdef>
      <replacementname>VIM_EMU_ONLY_APPS</replacementname>
      <replacementvalue></replacementvalue>
    </replacementdef>
    <replacementdef>
      <replacementname>VIM_EMU_IGNORE_APPS</replacementname>
      <replacementvalue>TERMINAL, VI, CATHODE, PASSWORD, FIREFOX, EMACS</replacementvalue>
    </replacementdef>

e.g.) Enable only for MAIL.

    <replacementdef>
      <replacementname>VIM_EMU_ONLY_APPS</replacementname>
      <replacementvalue>MAIL</replacementvalue>
    </replacementdef>
    <replacementdef>
      <replacementname>VIM_EMU_IGNORE_APPS</replacementname>
      <replacementvalue></replacementvalue>
    </replacementdef>

Refer `/Applications/KeyRemap4MacBook.app/Contents/Resources/appdef.xml`
or [Specify application](https://pqrs.org/macosx/keyremap4macbook/xml.html.ja#appdef)
for definitions of applications.

## Main Modes
Here are main modes of vim emulation.

|Mode|Description|
|:---|:----------|
|Insert Mode|Normal Mac state|
|Normal Mode|As in vim, a cursor is moved by hjkl, w, etc... and some vim like commands are available.|
|Visual Mode|There are three visual mode: Character-wise, Line-wise, and Block-wise. Block-wise visual mode is optional and behaves a bit different from others.|
|Command Mode|Can be used for saving file/quitting.|

An initial state is `Insert Mode`, then `Esc` or `Ctrl-[` brings you to the normal mode.

In the normal mode, `i` is the key to be back to the insert mode.

`v` and `V` are the key to the Character-wise and Line-wise
visual mode, respectively.

After push `:`, a few commands to save/quit are available.

There will be pop up like `-- VIM --` during modes other than Insert mode
are enabled.

## Available commands at Insert mode
|Key/Commands|Function|
|:----------:|:-------|
|ESC/Ctrl-[| Enter Normal mode. Holding these keys emulate normal ESC. In addition, toggle option is available.|
|Simultaneous jk/qw/sd, Ctrl-l, Left-Cmd, Right-Cmd| Can be used for toggling Normal-Insert Modes.|
|Ctrl-n/p| Enter Complement mode|

In Complement mode, use `Ctrl-n/p` to choose a candidate,
`Ctrl-h` to skip, and `ESC/Ctrl-[` to choose a candidate.

When you enable **Additional settings of Control + X at insert mode**,
following commands are also available:

|Key/Commands|Function|
|:----------:|:-------|
|Ctrl-c| Enter Normal mode.|
|Ctrl-i| Insert Tab.|
|Ctrl-j| Return.|
|Ctrl-m| Return.|
|Ctrl-t| Insert tab at the beginning of current line.|
|Ctrl-u| Cut the text between the beginning of the line and the current position.|
|Ctrl-w| Cut the word before the cursor.|

Note: Some Control-X shortcut keys emacs like movements are originally available in OS X (see [Mac keyboard shortcuts - Apple Support](https://support.apple.com/en-ap/HT201236)).

## Available commands at Normal mode
### Mode Change
|Key/Commands|Function|
|:----------:|:-------|
|i/I/a/A/o/O| Enter the insert mode at under the cursor/start of the line/next to the cursor/end of the line/next line/previous line.|
|v/V|Enter the visual mode of Character-wise/Line-wise.|
|:|Enter the command line mode|

### Move
|Key/Commands|Function|
|:----------:|:-------|
|h/j/k/l|Left/Down/Up/Right.|
|0/$| Move to the beginning/last of the line (Mac Cmd-left, Cmd-right).|
|{/}| Move to the beginning/end of the paragraph (Mac Ctrl-a, Ctrl-e. It works rather like "sentence". Sometime, it is actual sentence rather than 0/$).|
|Ctrl-a/Ctrl-e| To the beginning/last of the line (emacs like).|
|w/W/e/E| Move a word forward (w/W: the beginning of the word, e/E: the end of the word).|
|b/B, ge/gE| Move a word backward (b/B:  the beginning of the word, ge/gE: the end of the word).|
|Ctrl-u/Ctrl-d| Go Up/Down 10 line.|
|Ctrl-b/Ctrl-f| PageUp/PageDown.|
|gg/G| Go to the top/bottom of the file|

Note: Curretnly W/E/B/gE are disabled, as they are exactly same as w/e/b/ge.
(for a speed up.)
Ctrl-a/Ctrl-e are also disable.

If you want to enable them, remove comments from corresponding lines in vim_emu/vim_emu_move.xml

### Yank/Cut(Delete)/Change/Paste
|Key/Commands|Function|
|:----------:|:-------|
|yy, Y| Copy the line.|
|dd| Cut the line.|
|D| Cut from here to the end of the line.|
|cc| Change the line (enter Insert mode).|
|C| Cut from here to the end of the line and enter Insert mode.|
|x/X| Delete a character under/before the cursor (not registered in the clipboard).|
|s/S| Delete/Cut a character/a line under the cursor and enter Insert mode.|
|p/P| Paste to the next/current place. If copy/cut was done with line-wise Visual mode, it pastes to the next/current line. Some commands (such yy/dd) also force to paste as line-wise.|

y/d/c+Move Command can be used, too.
* e.g.) `yw` -> copy next one word.

Currently `Repeaat` feature is commented out.

### Others
|Key/Commands|Function|
|:----------:|:-------|
|u(U)/Ctrl-r| Undo/Redo.|
|r/R| Replace one character/multi characters.|
|J| Combine two lines.|
|M| Move current line to the middle. Need enough lines in above/below.|
|.| It is fixed to do: `Replace a following word with a clipboard` (useful to use with a search).|
|/| Start search (search box will be opened)|
|n/N| Search next/previous.|
|*| Search the word under the cursor.|
|ZZ/ZQ|Save and Quit/Quit.|


## Available commands at Visual mode
|Key/Commands|Function|
|:----------:|:-------|
|ESC/Ctrl-[| Enter Normal mode.|
|Move command| Most of move commands in the normal mode are available.|
|y/d/x/c| Copy/Cut/Cut/Cut and insert (`d`=`x`)|
|Y/D/X/C| Move to the end of line, then Copy/Cut/Cut/Cut and insert (`D`=`X`)|
|*| Search the selected word.|

Note: Currently, if you paste lines copied in visual line mode,
there will be one empty line below the content
if the content doesn't include the last line of the text.

## Available commands at Command mode
|Key/Commands|Function|
|:----------:|:-------|
|ESC/Ctrl-[| Enter Normal mode.|
|w + RETURN| Save |
|w + SPACE | Save as |
|w + q| Save and Quit |
|q | Quit |
|h | Open help of the application|

## Recording Macro
Macro feature is available with additional application.
In vim_emu, one option with [MadRuby](http://www.wingsforpigs.com/MadRuby/MadRuby.html)
(Keyboard Macro Recorder, free application)
is available.

Before enabling Recording Macro in vim_emu,
please install MadRuby, and set kyboard shortcuts in MadRuby like:

|Function|Shortcut|
|----------:|:-------|
|Start Recording| Ctrl-Shift-Cmd-6|
|Stop Recording| Ctrl-Shift-Cmd-7|
|Play Macro| Ctrl-Shift-Cmd-8|
|Multiple Play Macro| Ctrl-Shift-Cmd-9|

Then, enable Recording Macro in KeyRemap4macbook/vim_emu.

Following commands are available in Normal Mode.

|Key/Commands|Function|
|:----------:|:-------|
|q| Start recording a macro.|
|q(while recording macro)| Stop recording a macro.|
|@| Execute the macro once.|
|n@ (n=2-9)| Execute macro n-times.|

Note: If you switch application to what ignoring vim_emu during recording macro,
you need to stop recording macro by Ctrl-Shift-Cmd-7, using menubar dialog of MadRuby.
