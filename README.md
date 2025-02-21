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

```

```
