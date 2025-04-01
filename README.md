# nvim-config

## Neovim Search Cheat Sheet

### Basic Search

- **Search forward**: `/search_term` + `Enter`
- **Search backward**: `?search_term` + `Enter`

---

### Navigate Between Matches

- **Next match**: `n`
- **Previous match**: `N`

---

### Case Sensitivity

- **Case-insensitive search**: `:set ignorecase`
- **Case-sensitive search**: `:set noignorecase`
- **Smart case**: `:set smartcase` (case-insensitive unless the query has uppercase letters)

---

### Highlight Matches

- **Enable highlighting**: `:set hlsearch`
- **Disable highlighting**: `:set nohlsearch` or `:noh`

---

### Search and Replace

- **Replace all occurrences**:
  ```vim
  :%s/old_term/new_term/g
  ```

### Search in visual mode

- **Next match**: `*`
- **Previous match**: `#`

### Additional commands

- :messages - shows latest messages and errors

# Neovim Scrolling and Viewport Adjustment Commands

## Overview

Neovim provides various commands to navigate and adjust the viewport in a file. These commands help with efficient scrolling and viewing of content.

### Commands

| Command | Description                                                     |
| ------- | --------------------------------------------------------------- |
| `<C-u>` | Scroll half a screen upwards.                                   |
| `<C-d>` | Scroll half a screen downwards.                                 |
| `<C-b>` | Scroll one full screen upwards (similar to "page up").          |
| `<C-f>` | Scroll one full screen downwards (similar to "page down").      |
| `<C-y>` | Scroll the viewport up by one line without moving the cursor.   |
| `<C-e>` | Scroll the viewport down by one line without moving the cursor. |
| `zt`    | Move the current line to the top of the screen.                 |
| `zz`    | Move the current line to the center of the screen.              |
| `zb`    | Move the current line to the bottom of the screen.              |

## Tabs

`:tabonly` - Close all tabs except the current one.

## Surrounding text

| **Command**        | **Mode** | **Description**                                        | **Example**                                 |
| ------------------ | -------- | ------------------------------------------------------ | ------------------------------------------- |
| `ys<motion><char>` | Normal   | Surround a motion with a character.                    | `ysw"` → Surround a word with `"`           |
| `yss<char>`        | Normal   | Surround the entire line with a character.             | `yss(` → Surround line with `(` and `)`     |
| `vS<char>`         | Visual   | Surround the selected text with a character.           | Select text, press `S"` → Surround with `"` |
| `cs<old><new>`     | Normal   | Change surrounding characters from `<old>` to `<new>`. | `cs"'` → Change `"` to `'`                  |
| `ds<char>`         | Normal   | Delete surrounding characters specified by `<char>`.   | `ds"` → Remove `"` around text              |

# `nvim-tree` Commands and Settings for Navigation and File Explorer

## Searching for Files

F - Enter search mode
Esc or Ctrl + U - Clear the search filter

## **Commands for Reordering Tabs**

- `:tabm [N]` → Move the current tab to position **N** (zero-based index).
- `:tabm +1` → Move the current tab **one position to the right**.
- `:tabm -1` → Move the current tab **one position to the left**.
- `:tabm 0` → Move the current tab to the **first position**.
- `:tabm $` → Move the current tab to the **last position**.```

````
## Neovim Search Commands Cheat Sheet

### **1. Search for the Word Under Cursor**
- `*` → Search **forward** for the word under the cursor.
- `#` → Search **backward** for the word under the cursor.
- `g*` → Search **forward**, allowing partial matches.
- `g#` → Search **backward**, allowing partial matches.

---

### **2. Recall and Edit the Last Search**
- `q/` → Open the search history and edit previous searches.
- `/` or `?` → Press `<Up>` (`↑`) to recall the last search pattern and modify it.

---

### **3. Reuse the Last Search Pattern**
Use `@/` to reference the last search pattern in commands like substitution:

```vim
:%s//@/new_text/g
````

## 🔹 Visual Mode Commands

### Basic Selection

| Command  | Description                                    |
| -------- | ---------------------------------------------- |
| `v`      | Start **character-wise** selection.            |
| `V`      | Start **line-wise** selection.                 |
| `Ctrl+v` | Start **block-wise** (column) selection.       |
| `o`      | Move cursor to the other end of the selection. |
| `gv`     | Re-select the last visual selection.           |
| `Esc`    | Exit Visual mode.                              |

### Expanding & Shrinking Selection

| Command     | Description                                  |
| ----------- | -------------------------------------------- |
| `aw`        | Select **a word** (including spaces).        |
| `iw`        | Select **inner word** (excluding spaces).    |
| `aW`        | Select **a WORD** (delimited by spaces).     |
| `iW`        | Select **inner WORD** (delimited by spaces). |
| `as`        | Select **a sentence**.                       |
| `is`        | Select **inner sentence**.                   |
| `ap`        | Select **a paragraph**.                      |
| `ip`        | Select **inner paragraph**.                  |
| `a"` / `i"` | Select **inside or around double quotes**.   |
| `a'` / `i'` | Select **inside or around single quotes**.   |
| `a(` / `i(` | Select **inside or around parentheses**.     |
| `a{` / `i{` | Select **inside or around curly braces**.    |
| `a[` / `i[` | Select **inside or around square brackets**. |
| `a<` / `i<` | Select **inside or around angle brackets**.  |

### Copy, Cut, and Paste

| Command | Description                      |
| ------- | -------------------------------- |
| `y`     | Yank (copy) selection.           |
| `d`     | Delete selection (cut).          |
| `x`     | Delete character-wise selection. |
| `p`     | Paste after selection.           |
| `P`     | Paste before selection.          |

### Indenting and Formatting

| Command | Description             |
| ------- | ----------------------- |
| `>`     | Indent selection right. |
| `<`     | Indent selection left.  |
| `=`     | Auto-indent selection.  |

### Searching & Replacing

| Command | Description                                                     |
| ------- | --------------------------------------------------------------- |
| `*`     | Search for the selected text (forward).                         |
| `#`     | Search for the selected text (backward).                        |
| `:`     | Execute a command on the selected lines (e.g., `:s/foo/bar/g`). |

### Changing Case

| Command | Description                         |
| ------- | ----------------------------------- |
| `U`     | Convert selection to **uppercase**. |
| `u`     | Convert selection to **lowercase**. |
| `g~`    | Toggle case of selection.           |

### Moving Text Around

| Command   | Description                          |
| --------- | ------------------------------------ |
| `J`       | Join selected lines into one.        |
| `:m '>+1` | Move selection **down** by one line. |
| `:m '<-2` | Move selection **up** by one line.   |

---

## 🔹 Change (`c`) Commands

### Basic `c` Commands

| Command          | Description                                                  |
| ---------------- | ------------------------------------------------------------ |
| `c` + **motion** | Change (delete & enter Insert mode) up to the motion target. |
| `cc` or `S`      | Change the entire line (same as `0c$`).                      |
| `C` or `c$`      | Change from the cursor to the end of the line.               |
| `ciw`            | Change **inner word**.                                       |
| `caw`            | Change **a word** (including spaces).                        |
| `ci"`            | Change **inside double quotes**.                             |
| `ca"`            | Change **around double quotes** (includes quotes).           |
| `ci'`            | Change **inside single quotes**.                             |
| `ca'`            | Change **around single quotes**.                             |
| `ci(` or `ci)`   | Change **inside parentheses**.                               |
| `ca(` or `ca)`   | Change **around parentheses** (includes `()` brackets).      |
| `ci{` or `ci}`   | Change **inside curly braces**.                              |
| `ca{` or `ca}`   | Change **around curly braces**.                              |
| `ci[` or `ci]`   | Change **inside square brackets**.                           |
| `ca[` or `ca]`   | Change **around square brackets**.                           |
| `ci<` or `ci>`   | Change **inside angle brackets**.                            |
| `ca<` or `ca>`   | Change **around angle brackets**.                            |
| `cip`            | Change **inner paragraph**.                                  |
| `cap`            | Change **a paragraph**.                                      |

### Using `c` with Numbers

| Command | Description                                   |
| ------- | --------------------------------------------- |
| `c3w`   | Change the next **3 words**.                  |
| `c2e`   | Change up to the end of the **next 2 words**. |
| `c5j`   | Change the **next 5 lines**.                  |

### Line and Block Changes

| Command | Description                                                   |
| ------- | ------------------------------------------------------------- |
| `cc`    | Change **the entire line** (same as `S`).                     |
| `C`     | Change from the cursor to **end of the line** (same as `c$`). |
| `c0`    | Change from the cursor to **beginning of the line**.          |
| `c^`    | Change from the cursor to **first non-blank character**.      |

### Using `c` in Visual Mode

| Command        | Description                             |
| -------------- | --------------------------------------- |
| `v` → `c`      | Change the selected text.               |
| `V` → `c`      | Change the selected lines.              |
| `Ctrl+v` → `c` | Change a block selection (column mode). |

### Advanced Tricks with `c`

| Command  | Description                                                              |
| -------- | ------------------------------------------------------------------------ |
| `cfX`    | Change **until character `X`** (e.g., `cf,` changes until the next `,`). |
| `ctX`    | Change **up to (but not including) `X`** (e.g., `ct,` stops before `,`). |
| `c/word` | Change **until the next occurrence of `word`**.                          |
| `cG`     | Change **until the end of the file**.                                    |

---

```

```
