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
