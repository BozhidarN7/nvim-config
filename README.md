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
