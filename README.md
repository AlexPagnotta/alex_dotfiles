# Alex Dotfiles

<img src="cover.png">

<details open="open">
  <summary><h2 style="display: inline-block">Contents</h2></summary>
  <ul>
    <li><a href="#about">About</a></li>
    <li> <a href="#getting-started">Getting Started</a></li>
    <li><a href="#scripts">Scripts</a></li>
    <li><a href="#how-to-restore-the-dotfiles">How to restore the dotfiles</a></li>
    <li><a href="#post-install">Post Install</a>
    <ul>
        <li><a href="#mac-os-settings">Manual Mac Os Setttings</a></li>
        <li><a href="#ssh-keys">SSH keys</a></li>
    </ul>
  </ul>
</details>

## About

This repository contains all my Mac dotfiles, complete with scripts for an easy restore and instructions for manual steps.

### Profiles

I currently have two profiles, represented by two branches (Personal and Work), apart from the master branch that includes configs in common between the two.
The main differences are in the apps installed with brew and some changes in the config files.

## Pre Reset

Make sure to export all settings from the app that need a manual backup:

- Raycast

  - Export .rayconfig file running the command "Export Settings & Data" in raycast.
  - When asked for password use the one in the Password Manager.
  - Save .rayconfig file inside the config folder of the project.

## Getting Started

- Clone the project wherever you want, using the command:

```bash
git clone git@github.com:AlexPagnotta/alex_dotfiles.git
```

- If you are not me, you probably would want to change something in the dotfiles, so edits the script/files and adjust them to your needs!

## Scripts

### Brew

Installs all brew packages, cask apps and fonts, run the brew.sh script first, and then the profile-specific script according to the branch you are in, so brew_personal.sh or brew_work.sh.

### Dev

This script will set up my dev environment.

### Config

Executing this script will symlink dotfiles to your home directory, these include ssh config, zshrc, git config etc.

### Editor

Configures Cursor complete with extensions, and the Warp terminal.

## How to restore the dotfiles

Run each script with the following commands:

```bash
sh brew/brew.sh
sh config/config.sh
sh dev/dev.sh
sh editors/editors.sh
```

## Post install

### Mac Os Settings

See the <a href="Manual_Settings.md">Manual_Settings.md</a> file for more info.

### Additional scripts

- **Reduce dock hover delay**

  ```bash
  defaults write com.apple.Dock autohide-delay -float 0 && killall Dock
  ```

### SSH keys

Zsh shell is configured to run `ssh-add -A` at every start, this way ssh keys are always available,
For this to work you have to add your private key file to the agent using this command:

```bash
ssh-add -K ~/.ssh/private_key_file
```

SSH agent will only include keys protected by a password, so if you didn't set one while creating the key, you can do it by running:

```bash
ssh-keygen -p -f ~/.ssh/private_key_file
```

Once you have done it, you can add the key to the agent, after that, if you want, you can remove the password with the same command you used to set it.

### Raycast

- Import settings from the .rayconfig file in the config folder of the project.

### Hyperkey

Hyperkey is installed automatically from the script, but you need to change the settings manually.

1. Set "Remap physical key to hyper key" to "caps lock"
2. Enable "Quick press caps lock to execute"
3. Remove all checkboxes from "Apply hyper key modifiers..."
4. Enable "Open on login"
