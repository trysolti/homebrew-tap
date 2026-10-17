# trysolti/homebrew-tap

Homebrew tap for the [Solti Platform CLI](https://solti.run) (`solti`).

## Install

One-liner (taps this repo automatically):

```sh
brew install trysolti/tap/solti
```

Or tap first, then install by plain name:

```sh
brew tap trysolti/tap https://github.com/trysolti/homebrew-tap
brew install solti
```

## Verify

```sh
solti --version
```

## Notes

- The CLI is not on public npm, so this formula ships standalone compiled
  binaries (built with `bun build --compile`) from this repo's GitHub
  releases.
- Supported platforms: macOS (Apple Silicon `arm64` and Intel `x64`).
- Formula version tracks the matching GitHub release (`v0.1.0` here).
