vim_emu
=======

Setting files of KeyRemap4Macbook for VIM Emulation.

## Installation

### Stable version is available in KeyRemap4Macbook as default (from 8.3.7)
Now vim_emu was included in KeyRemap4MacBook from 8.3.7.
If you use previous version,
please update KeyRemap4MacBook or install files directly as below.
If you are up-to-date at stable release but it is before 8.3.7,
please try to check Beta version: follow [this instruction](https://github.com/tekezo/Files/blob/master/KeyRemap4MacBook/image/upgrade-to-the-latest-beta-version.png).

### Install the latest vim_emu
There could be some updates not included in KeyRemap4MacBook, yet.
If you want to try the latest version, do:

    git clone git@github.com:rcmdnk/vim_emu.git
    cd vim_emu
    ./install.sh

<strike>
If you have KeyRemap4MacBook version in which vim_emu is already installed,
you need to comment out vim_emu in `/Applications/KeyRemap4MacBook.app/Contents/Resources/checkbox.xml` like:

    <include path="include/checkbox/vi_mode.xml" />
    <include path="include/checkbox/ubiquitous_vim_bindings.xml" />
    <!-- <include path="include/checkbox/vim_emu.xml" /> -->
    <include path="include/checkbox/complete_vi_mode.xml" />

</strike>

Abobe work is no longer necessary.
If you have line:

    <include path="vim_emu.xml"></include>

in `private.xml`, then please remove the line.

Note) You need to install [KeyRemap4MacBook](http://pqrs.org/macosx/keyremap4macbook/index.html) before installing these files.

## Uninstall (for using vim_emu.git repository)
Remove `vim_emu_test.xml`, `vim_emu.xml`, `vim_emu` directory in
`"$HOME/Library/Application Support/KeyRemap4MacBook/`.

Remove the line:

    <include path="vim_emu_test.xml"></include>

in `"$HOME/Library/Application Support/KeyRemap4MacBook/private.xml`.

## Keyboards
Currently, vim_emu supports US, JIS and German (partly) keyboards.

## Options
Following checkboxes will appear in your setting panel:

* Escape to enter Normal Mode, holding to emulate raw ESC.
* + Escape to back in Insert Mode
* Ctrl-[ to enter Normal Mode, holding to emulate raw ESC.
* + Ctrl-[ to back in Insert Mode
* Simultaneous jk toggles Normal-Insert Mode.
* Simultaneous qw toggles Normal-Insert Mode.
* Simultaneous sd toggles Normal-Insert Mode.
* Ctlr-l toggles Normal-Insert Mode.
* Tap Left Cmd toggles Normal-Insert Mode.
* Tap Right Cmd toggles Normal-Insert Mode.
* Enable Visual Block Mode.
* Enable Vim Emulation.
* Disable all non-assigned keys in other than Insert Mode.

Enable `Enable Vim Emulation` and at least one of `Escape`, `ctrl-[`,
`Ctrl-l`, `L-Cmd` or `R-cmd`.

For simultaneous jk/qw/sd, it works only in Insert/Normal modes.
Therefore, one of other switch keys above need to leave such Virtual mode.

Visual Block uses the mouse cursor position instead of the cursor position
as a start point,
therefore it behaves different from other Visual modes.

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

`v`, `V` and `Ctrl-v` are the key to the Character-wise, Line-wise, and Block-wise
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

## Available commands at Normal mode
### Mode Change
|Key/Commands|Function|
|:----------:|:-------|
|i/I/a/A/o/O| Enter the insert mode at under the cursor/start of the line/next to the cursor/end of the line/next line/previous line.|
|v/V/Ctrl-v|Enter the visual mode of Character-wise/Line-wise/Block-wise.|
|:|Enter the command line mode|

### Move
|Key/Commands|Function|
|:----------:|:-------|
|h/j/k/l|Left/Down/Up/Right.|
|0/$| To the beginning/last of the line.|
|Ctrl-a/Ctrl-e| To the beginning/last of the line (emacs like).|
|w/W/e/E| Move a word forward (w/W: the beginning of the word, e/E: the end of the word).|
|b/B| Move a word backward (b/B:  the beginning of the word).|
|Ctrl-u/Ctrl-d| Go Up/Down 10 line.|
|Ctrl-b/Ctrl-f| PageUp/PageDown.|
|gg/G| Go to the top/bottom of the file|

In addition, `Repeat` is also available for some commands.
2-9 can be used as a repeat number.

|Example Commands|Action|
|:----------:|:-------|
|4j| Down 4 lines|
|3w| Move 3 words forward|

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
* e.g.) `d3w` -> delete next 3 words.

### Others
|Key/Commands|Function|
|:----------:|:-------|
|u(U)/Ctrl-r| Undo/Redo.|
|r/R| Replace one character/multi characters.|
|J| Combine two lines.|
|H/L/M| To line from top/bottom/middle of window.|
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

## Available commands at Command mode
|Key/Commands|Function|
|:----------:|:-------|
|ESC/Ctrl-[| Enter Normal mode.|
|w + RETURN| Save |
|w + SPACE | Save as |
|w + q| Save and Quit |
|q | Quit |
|h | Open help of the application|
