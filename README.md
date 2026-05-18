# 🌍 Daily Hello World!

[![GitHub repo size](https://img.shields.io/github/repo-size/Rakaikkia/HelloWorld-?style=flat-square)](https://github.com/Rakaikkia/HelloWorld-)
[![GitHub last commit](https://img.shields.io/github/last-commit/Rakaikkia/HelloWorld-?style=flat-square)](https://github.com/Rakaikkia/HelloWorld-/commits/main)
[![Languages count](https://img.shields.io/badge/daily_languages-15-blue?style=flat-square)](https://github.com/Rakaikkia/HelloWorld-)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg?style=flat-square)](https://opensource.org/licenses/MIT)

> **One language, three greetings, every single day.**
> A collection of "Hello, World!" programs written in as many languages as possible – each with three variations: simple, pretty, and fully idiomatic / OS‑aware.

---

## 🎯 Goal

Write **"Hello, World!"** in a **new programming language every day**.
Each language folder contains three different implementations (where applicable):

1. **Basic** – minimal, straightforward output.
2. **Pretty** – formatted output (e.g., with extra spacing, colours, or separators).
3. **Proper** – follows best practices and language idioms (error handling, conventions, etc.).

For system‑dependent languages (like assembly), you will find subfolders `windows/`, `unix/`, etc., each with its own run instructions.

---

## 📁 Project Structure

```
HelloWorld-/
├── python/                 # folder named after the language
│   ├── hello.py            # basic version
│   ├── hello_world.py      # pretty version
│   ├── main.py             # proper / idiomatic version
│   ├── exotic.py           # exotic variant idk
│   └── run                 # launch instructions (inside every language folder)
├── c_plus_plus/            # C++ -> folder name: C_PLUS_PLUS (no special chars)
├── assembly/               # example for system‑dependent languages
│   ├── windows/
│   ├── unix/
│   └── run
└── ...
```

> **Note for languages with special characters** (e.g., `C++`, `F#`, `R++`):
> Folder names use underscores instead – `C_PLUS_PLUS`, `F_SHARP`, `R_PLUS_PLUS`.

---

## 🚀 How to run any program

Inside **every language folder** (or no) you'll find a file named `run`.
It contains step‑by‑step instructions for compiling (if needed) and executing the code on different operating systems.

**Example** – to run the Python examples:

```bash
cd python
cat run        # read the instructions
# then follow them – e.g.:
python HelloWorld.py
```

---

## 📊 Language progress

| Language | Day added | Status |
|----------|-----------|--------|
| [Python](https://github.com/Rakaikkia/HelloWorld-/tree/main/python) | 1 | ✅ Completed |
| [C++](https://github.com/Rakaikkia/HelloWorld-/tree/main/c_plus_plus) | 2 | 🚧 Partial |
| [Fortran](https://github.com/Rakaikkia/HelloWorld-/tree/main/fortran) | 3 | 🚧 Partial |
| [Asm](https://github.com/Rakaikkia/HelloWorld-/tree/main/asm) | 4 | 🚧 Partial |
| [Ruby](https://github.com/Rakaikkia/HelloWorld-/tree/main/ruby) | 5 | ✅ Completed |
| [Bash](https://github.com/Rakaikkia/HelloWorld-/tree/main/bash) | 6 | ✅ Completed |
| [Delphi](https://github.com/Rakaikkia/HelloWorld-/tree/main/delphi) | 7 | ✅ Completed |
| [FreePascal](https://github.com/Rakaikkia/HelloWorld-/tree/main/freepascal) | 7 | ✅ Completed |
| [Swift](https://github.com/Rakaikkia/HelloWorld-/tree/main/swift) | 8 | ✅ Completed |
| [Perl](https://github.com/Rakaikkia/HelloWorld-/tree/main/perl) | 9 | ✅ Completed |
| [Lua](https://github.com/Rakaikkia/HelloWorld-/tree/main/lua) | 10 | ✅ Completed |
| [Rust](https://github.com/Rakaikkia/HelloWorld-/tree/main/rust) | 11 | ✅ Completed |
| [HolyC](https://github.com/Rakaikkia/HelloWorld-/tree/main/holyc) | 12 | 🚧 Partial |
| [C#](https://github.com/Rakaikkia/HelloWorld-/tree/main/c_sharp) | 13 | ✅ Completed |
| [C](https://github.com/Rakaikkia/HelloWorld-/tree/main/c_sharp) | 14 | ✅ Completed |
| *Next lang... (probably Java)* | – | ⌛ Planned |

> ✅ Completed – all three variations (basic, pretty, proper) are present, and OS‑specific versions (if needed) are done.
> 🚧 Partial – only some variations are done.

---

## 🤝 Contributing

Contributions are **very welcome**!
If you’d like to add a missing language or improve an existing one:

1. **Open an issue** first (so we avoid duplicate work).
2. Fork the repo, create a new branch.
3. Add your language as a new folder (use the naming convention: `C_PLUS_PLUS`, `F_SHARP`, etc.).
   - Inside, create `run` file with clear compile/run instructions.
   - Provide the three variants if possible (`basic`, `pretty`, `proper`). (or one, wdc tbh)
4. Update the table in `README.md` (add a new row with your language, day, and status).
5. Submit a pull request.

**Please keep the same “one language – one folder” structure** and always include a `run` file.

---

## 📅 Daily update schedule

I (or my friends) pick a random language every day and push the code here.
The table above gets updated each time. You can watch the repo to get notified of new languages.

---

## 📄 License

This project is open source under the [MIT License](LICENSE).
Feel free to use the examples for learning or teaching.

---

**⭐ Star this repo if you like the idea – and check back tomorrow for a new language!**
Readme is neuro slop btw (sorry)
