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

### 👥 Profiles

To make profiles:

0. Experiment to find a `bs` command that you find useful
1. Copy `bsp-template` and name it what you want (eg. `bspgcc`) and fill in TODO's -- OR make your own
2. Replace the `bs` command in the script with your bs command
3. Make sure the template is `chmod +x`'d and in your PATH

## 🏗️ Install

0. Install bubblewrap (`bwrap`) and fish shell (`fish`) from your package manager
1. Clone the repository `bs` into your environment
2. Add `bs` to your PATH (something like `sudo ln -s "$(realpath -e bs)" /usr/bin/bs`)
3. If you want the example profiles (`bspoc` for opencode and `bspgemini` for gemini-cli), copy them too
4. `chmod +x`
5. Run `bs`. You should be dropped into a shell.

