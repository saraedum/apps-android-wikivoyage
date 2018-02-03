<img src="app/src/wikivoyage/res/mipmap-hdpi/launcher.png" align="right" />

# Wikivoyage Android app

> Bringing the **FREE** worldwide travel guide that **anyone can edit** to Android.

This is a fork of the official
[Wikipedia Android app](https://www.mediawiki.org/wiki/Wikimedia_Apps),
adapted to also support [Wikivoyage](https://wikivoyage.org).

<img src="https://gitlab.com/saraedum/apps-android-wikivoyage/uploads/6f717fbf673bab4e07a472068d5b48e4/screenshots.png" align="center" />

[![Pipeline Status](https://gitlab.com/saraedum/apps-android-wikivoyage/badges/master/pipeline.svg)](https://gitlab.com/saraedum/apps-android-wikivoyage/commits/master)
[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://gitlab.com/saraedum/apps-android-wikivoyage/blob/master/COPYING)
[![Maintained](https://img.shields.io/maintenance/yes/2018.svg)](https://gitlab.com/saraedum/apps-android-wikivoyage/commits/master)

## How to Contribute

If you have found an issue, please report it in our
[issue tracker](https://gitlab.com/saraedum/apps-android-wikivoyage/issues).

Most problems are best fixed
[upstream](https://www.mediawiki.org/wiki/Wikimedia_Apps/Team/Android/App_hacking),
in the official Wikipedia app. However,
[merge requests](https://gitlab.com/saraedum/apps-android-wikivoyage/merge_requests)
are always welcome here as well :)

## How to Build from Source

The build recipes in `.gitlab-ci.yml` should give you an idea on how to build
this app and run its unit tests for yourself. There is nothing really special
about the setup, a simple `./gradlew assembleAlpha` builds
`app/build/outputs/apk/alphaWikivoyage/debug/app-alpha-wikivoyage-debug.apk`.

## License

Published under the Apache License 2.0.

## Relation to the Wikimedia Foundation

This app is not affiliated in any way with the [Wikimedia
Foundation](https://wikimediafoundation.org/wiki/Home) or any of its projects.

Please let us know if we are using logos or otherwise protected material in
inappropriate places. We will be happy to fix these.
