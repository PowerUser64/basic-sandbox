<p align="center">
    <sup>NO AI HERE - this repo is 100% human-certified AI-free</sup>
</p>

# Basic Sandbox 🏖️

This is a somewhat-specialized sandbox for running things you don't trust. It's
built around [bubblewrap](https://github.com/containers/bubblewrap).

## ⚙️ BS features

- 🕵 Opens your current working directory at `/project/<CWD NAME>`. This is to anonymize any information it might hold.
- 🕵 Makes a "virtual" username and home folder (see: `--user` flag).
- 🕵 Makes a "virtual" hostname (see `--hostname` flag).
- 🛠️ Forwards `/usr` and `/opt` to passthrough software. This is to make `bs` low friction to use.

## ✍️ Usage

```bash
# Run opencode with readonly access to ~/.bashrc and ~/code/mylib, but NO OTHER USER FILES
bs -f ~/.bashrc -f ~/code/mylib -- opencode
```

### 👥 Profiles

To make profiles:

0. Experiment to find a `bs` command that you find useful
1. Copy `bsp-template` and name it what you want (eg. `bspgcc`) and fill in TODO's (or, make your own)
2. Replace the `bs` command in the script with your bs command
3. Make sure the template is `chmod +x`'d and in your PATH

## 🏗️ Install

0. Install bubblewrap (`bwrap`) and fish (`fish`) from your package manager
1. Clone the repository `bs` into your environment
2. Add `bs` to your PATH (something like `sudo ln -s "$(realpath -e bs)" /usr/bin/bs`)
3. `chmod +x`
4. Run `bs`. You should be dropped into a shell.

