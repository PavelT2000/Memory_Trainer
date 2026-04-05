# Memory_Trainer

[![Delphi](https://img.shields.io/badge/Language-Object%20Pascal%20(Delphi)-blue.svg)](https://www.embarcadero.com/products/delphi)
[![Platform](https://img.shields.io/badge/Platform-Windows%20Console-lightgrey.svg)](https://learn.microsoft.com/en-us/windows/console/)
[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

A console-based cognitive training application built with Delphi/Object Pascal. Designed to improve short-term memory, attention, and pattern recognition through progressive word-recall challenges.

---

## 📖 Overview

`Memory_Trainer` is a lightweight, terminal-driven memory game that presents users with Russian-language words and challenges them to recall, reverse, or reorder them under time constraints. The application features a structured difficulty curve, real-time validation, and a clean separation of concerns across modular units.

---

## 🎮 Game Mechanics

The game consists of **5 core stages**, each testing a different cognitive skill. Difficulty scales via **sub-stages** (word length/count), which increase after achieving **3 consecutive correct answers**.

| Stage | Task Description | Validation Logic |
|:-----:|:-----------------|:-----------------|
| **1** | Memorize a single word. Input it **reversed**. | `G1check`: Exact reverse match |
| **2** | Memorize 5 words. Input them in **any order**. | `G2check`: Order-independent word match |
| **3** | Memorize 5 words. Input them in **exact order**. | `G3check`: Exact string match |
| **4** | Memorize 5 words. Input each **reversed**, in **any order**. | `G4check`: Reverse match, order-independent |
| **5** | Memorize 5 words. Input each **reversed**, in **exact order**. | `G5check`: Reverse match, order-dependent |

### 📈 Progression System
- Starts at `Stage 1`, `SubStage 5`
- `WinCount` tracks consecutive correct answers
- `WinCount = 3` → `SubStage` increments (up to 8)
- `SubStage = 9` → Resets to 5, advances to next `Stage`
- Game completes when `CurrentStage > 5`

---

## 📁 Project Structure

```
Memory_Trainer/
├── Project1.dpr          # Main application entry point
├── UnitGame1.pas         # Game state, stage routing, UI flow, console management
├── UnitBasic.pas         # String validation, word tokenization, Cyrillic normalization
├── gener.pas             # Word database & generation routines (required for compilation)
├── Unit1.pas             # Legacy/unused unit (can be safely removed)
├── __history/            # Delphi IDE auto-backups (gitignore recommended)
├── __recovery/           # Delphi IDE crash recovery files
└── *.dproj, *.res, etc.  # Delphi project configuration & resources
```

---

## ⚙️ Technical Details

| Aspect | Implementation |
|:-------|:---------------|
| **Language** | Object Pascal (Delphi) |
| **Architecture** | Procedural/Modular with clear separation of UI, logic, and validation |
| **Console Handling** | Windows API (`GetStdHandle`, `FillConsoleOutputCharacter`, `SetConsoleCursorPosition`) for flicker-free screen clearing |
| **String Processing** | Custom tokenizer (`ListOfWords`), manual Cyrillic case normalization (`LowerRus`), and multi-stage validation routines |
| **Timing** | `Sleep()` for display duration and input delay |
| **Localization** | Russian-language prompts & Cyrillic-aware case conversion |

---

## 🛠️ Setup & Compilation

### Prerequisites
- **Embarcadero Delphi** (any modern version supporting `{$APPTYPE CONSOLE}`)
- **Windows OS** (due to Windows Console API usage)
- `gener.pas` must be present in the project directory (contains word arrays & generation functions)

### Build Instructions
1. Open `Project1.dproj` in Delphi IDE
2. Ensure `gener.pas`, `UnitBasic.pas`, and `UnitGame1.pas` are in the project search path
3. Compile: `Ctrl + F9` or **Project → Build**
4. Run: `Ctrl + F9` or execute `Project1.exe` from the output directory

### Recommended `.gitignore` Additions
```gitignore
__history/
__recovery/
*.dcu
*.identcache
*.local
*.exe
*.res
```

---

## 📝 Notes & Limitations

- **Windows Dependency**: Console clearing relies on Win32 API. Cross-platform compatibility would require replacing `ClearScreen` with cross-platform alternatives.
- **Legacy String Handling**: Uses manual character iteration instead of `TStringList` or `System.StrUtils`. Functional but could be modernized.
- **Unused Unit**: `Unit1.pas` references a missing `Unit2` and contains dead code. Safe to exclude from the project.
- **Word Database**: Difficulty scaling depends on `gener.pas` implementation. Ensure word arrays (`arr5`–`arr8`) are properly populated.

---

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/improvement`)
3. Commit changes (`git commit -m 'Add: description'`)
4. Push to branch (`git push origin feature/improvement`)
5. Open a Pull Request

---

## 📄 License

Distributed under the **MIT License**. See `LICENSE` for details.

---

> 💡 *Tip: Run the executable in a standard Windows Command Prompt or PowerShell for optimal console rendering. Avoid running inside IDE debug consoles that may interfere with `Sleep()` or screen clearing.*