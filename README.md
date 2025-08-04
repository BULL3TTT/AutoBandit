# 🐚 AutoBandit

This repository contains an automated Bash script that solves the first **25 levels (0 → 1 up to 24 → 25)** of the Bandit challenge from OverTheWire.

The purpose of this project is to automate the learning process of basic security concepts, file manipulation, networking, and common Linux commands through SSH connections.

---

## 🚀 What does this script do?

- Connects via SSH to each level of the Bandit challenge.
- Automatically extracts the password for the next level.
- Stores the captured credentials in a `PASS` file.
- Automatically deletes temporary files after completing all levels.
- Implements retry logic in case a password was not stored correctly.

---

## ⚙️ Requirements

Before running this script, make sure you have the following tools installed on your system:

- `ssh`
- `sshpass`
- `ncat` (or `nc`)
- `7z` (p7zip-full)
- `xxd` (included in `vim-common` or `bsdmainutils`)
- `sponge` (part of the `moreutils` package)
- `awk`, `grep`, `sort`, `tr`, `base64`, `md5sum`, etc. (standard GNU/Linux utilities)
- Internet access

Quick installation on Debian/Ubuntu:

```bash
sudo apt update && sudo apt install sshpass ncat p7zip-full vim-common moreutils -y
```
---

## 🛠️ How to use

Clone the repository:

    git clone https://github.com/BULL3TTT/AutoBandit.git

Give execution permissions to the script:

    chmod +x AutoBandit.sh

Run the script:

    ./AutoBandit.sh

The script will automatically connect to the OverTheWire servers and begin solving the levels.

---

## ⚠️ Warnings

- Avoid modifying the script unless you understand what you're doing, especially the automated SSH connections.

- Some levels depend on timing (e.g., cron jobs). The script waits automatically where necessary.

- Make sure you have a stable internet connection to avoid SSH connection errors.

---

## 👤 Author

  Script developed by GriZzly

  Mentoring by D4ZC

🐧 Personal learning project on cybersecurity
