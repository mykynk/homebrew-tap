# mykynk/homebrew-tap

Homebrew casks for [Dürbün](https://appnify.dev/durbun/), the Mac app that shows live logs, network traffic
and performance of Android and iOS apps.

```sh
brew install --cask mykynk/tap/durbun
```

Dürbün updates itself (**Dürbün → Check for Updates…**), so `brew upgrade` leaves it alone unless you pass
`--greedy`. The cask is generated from each release by
[`scripts/homebrew-cask.mjs`](https://github.com/mykynk/durbun/blob/main/scripts/homebrew-cask.mjs); please
open issues in [mykynk/durbun](https://github.com/mykynk/durbun/issues).
