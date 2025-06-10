# 🧠 My Neovim Config

A lightweight yet powerful Neovim configuration optimized for C/C development, featuring auto-completion, file navigation, and enhanced editing capabilities.

---

## 📦 Features

* 📁 File tree with **NERDTree**
* 💬 Easy code commenting with **nerdcommenter**
* ✨ Icons and status bar via **vim-devicons** & **vim-airline**
* 🤖 Auto-completion powered by **YouCompleteMe**
* 📜 Syntax highlighting with C/Doxygen support
* 🗁️ Mouse support and system clipboard integration
* ⌨️ Smart indentation and tab handling

---

## 🛠 Installation

### 1. **Install Neovim**

On Debian/Ubuntu:

```bash
sudo apt install neovim
```

On Arch Linux:

```bash
sudo pacman -S neovim
```

---

### 2. **Install [vim-plug](https://github.com/junegunn/vim-plug)**

```bash
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

---

### 3. **Copy the Config File**

Save your config to:

```bash
mkdir -p ~/.config/nvim
nano ~/.config/nvim/init.vim
# Paste the config content here
```

---

### 4. **Install Plugins**

Open Neovim and run:

```vim
:PlugInstall
```

---

### 5. **Install YouCompleteMe**

Make sure you have Python and required build tools:

On Ubuntu/Debian:

```bash
sudo apt install build-essential cmake python3-dev
```

Then:

```bash
cd ~/.config/nvim/plugins/YouCompleteMe
python3 install.py --clangd-completer
```

---

## 📁 File Structure

```text
~/.config/nvim/
├── init.vim        # main config file
└── plugins/        # plugin directory for Plug
```

---

## 🧠 Notes

* To use system clipboard (`unnamedplus`), ensure `xclip` (Linux) or equivalent is installed.
* The config assumes a `.ycm_extra_conf.py` file at `~/.vim/`, which you can generate or copy from YCM examples.

---

## ✅ Recommended Additions

```bash
sudo apt install xclip       # For clipboard support
sudo apt install fonts-powerline  # For vim-airline fonts
```

---

## 📷 Preview

*(Add screenshots if you want to showcase the UI)*

---

## 🔗 Resources

* [Neovim](https://neovim.io/)
* [vim-plug](https://github.com/junegunn/vim-plug)
* [YouCompleteMe](https://github.com/ycm-core/YouCompleteMe)
