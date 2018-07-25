# png-optimizer
A drag-n-drop tool to losslessly compress a folder of PNGs in macOS

## Installation Instructions

1. Install [ImageOptim.app](https://imageoptim.com/ImageOptim.tbz2) and [ImageAlpha.app](https://pngmini.com/ImageAlpha1.5.1.tar.bz2) if you don't have them already.
2. Open Terminal.app and install homebrew by copy pasting the following line and pressing return. It may take a few minutes.
``` 
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```
3. Install imageoptim CLI via the Terminal
```
brew install imageoptim
```
4. Download png-optimizer droplet and put it somewhere handy (I have it in the Applications folder and saved in the dock).
5. Drop a folder containing at least 1 PNG onto the droplet. The PNGs in this folder will be overwritten with the optimized ones.
6. When you receive a push notification telling you your images are optimized, you're good to go! While it's processing, you'll see a spinning gear in your menubar, the ImageOptim app will also open and close on its own, this is normal.
