# qaws81877/homebrew-tap

Personal Homebrew tap for [FixDock](https://github.com/qaws81877/FixDock), a macOS menu bar app for a repair bench. FixDock is an unofficial fork of vorssaint-utils and is not affiliated with its authors.

```bash
brew tap qaws81877/tap
brew trust qaws81877/tap
brew install --cask fixdock
```

Recent Homebrew loads casks from a third-party tap only after `brew trust`. If your Homebrew has no `trust` command, skip that line.

Requires macOS 14 or later on Apple Silicon. FixDock updates itself from its GitHub releases, so `brew upgrade` skips it unless you pass `--greedy`.

설치: `brew tap qaws81877/tap`, `brew trust qaws81877/tap`, `brew install --cask fixdock` 순서로 실행합니다 (Apple Silicon, macOS 14 이상). FixDock은 스스로 업데이트하므로 `brew upgrade`는 `--greedy`가 없으면 건너뜁니다.
