# Cradle releases

Downloads and the Homebrew tap for [Cradle](https://getcradle.vercel.app), which mirrors iPhone, iPad and Android screens to your Mac over USB.

## Install

With Homebrew (also installs adb and scrcpy for Android):

```bash
brew tap darshk07/cradle https://github.com/darshk07/app-releases
brew install --cask darshk07/cradle/cradle
```

Without Homebrew:

```bash
curl -fsSL https://getcradle.vercel.app/install.sh | bash
```

Or download `Cradle.zip` from the [latest release](https://github.com/darshk07/app-releases/releases/latest), unzip it and drag Cradle to Applications. Cradle isn't notarized by Apple yet, so the first time you open it macOS will block it. Go to **System Settings → Privacy & Security** and click **Open Anyway**.

## Update

```bash
brew upgrade --cask cradle
```

## Requirements

macOS 14 Sonoma or later, on Apple Silicon or Intel.

---

Releases and `Casks/cradle.rb` are published by `app/release.sh` in the Cradle source repository. Don't edit them by hand.
