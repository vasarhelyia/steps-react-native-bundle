# React Native bundle step

[Bitrise](https://bitrise.io) step for bundling React Native apps

Calls `react-native bundle`.

Options:

- `platform` specify the platform(android/ios)
- `--dev` sets DEV flag to true
- `--minify` minify js bundle
- `--root` add another root(s) to be used in bundling in this project
- `--assetRoots` specify the root directories of app assets
- `--out` specify the output file
- `--url` specify the bundle file url
- `options` any additional options separated by a space.
