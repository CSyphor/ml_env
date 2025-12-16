### Method 1 — **GitHub UI (easiest, no git needed)**

1. Open the file on GitHub
2. Click **Raw**
3. **Right-click → Save As** (or copy–paste)

---

### Method 2 — **`curl` / `wget` (recommended for labs)**

```bash
curl -O https://raw.githubusercontent.com/USERNAME/REPO/BRANCH/path/to/file.ext
```

Example:

```bash
curl -O https://raw.githubusercontent.com/torvalds/linux/master/README
```

or

```bash
wget https://raw.githubusercontent.com/USERNAME/REPO/BRANCH/path/to/file.ext
```

---

### Method 3 — **Git sparse checkout (git-based, clean)**

```bash
git clone --no-checkout https://github.com/USERNAME/REPO.git
cd REPO
git sparse-checkout init --cone
git sparse-checkout set path/to/file.ext
git checkout
```

---

### Method 4 — **Download folder (GitHub workaround)**

GitHub doesn’t support folder download natively. Use:

* GitHub web UI → open folder → download files one by one
* or use sparse checkout (Method 3)

---

### Which one to use?

| Situation           | Use          |
| ------------------- | ------------ |
| Single file, no git | **Method 2** |
| Lab PC, fast        | **Method 2** |
| Multiple files      | **Method 3** |
| No terminal         | **Method 1** |

---

### TL;DR

```bash
curl -O https://raw.githubusercontent.com/USERNAME/REPO/BRANCH/file.ext
```
