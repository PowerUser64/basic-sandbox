# Basic Sandbox

This is a general-purpose sandbox for running things you don't trust. It's
built around [bubblewrap](https://github.com/containers/bubblewrap).

The original motivation for this project was to prevent AI coding tools from
accessing information they shouldn't, while also giving them access to all the
development tools on the system (as opposed to Docker).

NOTE: This tool was and is 100% written by hand. No AI-generated code exists in this repository.

## Usage

1. Copy `bs` into your environment
2. If you want the example profiles (`bspoc` for opencode and `bspgemini` for gemini-cli), copy them too
3. `chmod +x`
4. Run `bs`. You should be dropped into a shell.

```bash
# Run opencode with readonly access to ~/.bashrc and ~/code/mylib
bs -f ~/.bashrc -f ~/code/mylib -- opencode
```

