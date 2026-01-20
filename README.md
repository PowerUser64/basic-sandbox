# Basic Sandbox 🏖️

> [!NOTE]
> This tool was and is 100% written by hand. No AI-generated code exists in this repository.

This is a somewhat-specialized sandbox for running things you don't trust. It's
built around [bubblewrap](https://github.com/containers/bubblewrap).

## ⚙️ BS features

- 🕵 Opens your current working directory at `/project/<CWD NAME>`. This is to anonymize any information it might hold.
- 🕵 Makes a "virtual" username and home folder (see: `--user` flag).
- 🕵 Creates a "virtual" hostname (see `--hostname` flag).
- 🛠️ Forwards `/usr` and `/opt`. This is to make bs quick to use.

## ✍️ Usage

```bash
# Run opencode with readonly access to ~/.bashrc and ~/code/mylib
bs -f ~/.bashrc -f ~/code/mylib -- opencode
```

## 🏗️ Install

1. Copy `bs` into your environment
2. If you want the example profiles (`bspoc` for opencode and `bspgemini` for gemini-cli), copy them too
3. `chmod +x`
4. Run `bs`. You should be dropped into a shell.

