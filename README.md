# batch-optimizer
A drag-n-drop tool to compress a folder of images in macOS. 

PNGs are compressed with ImageAlpha+ImageOptim. JPGs are compressed with ImageOptim.

## Installation Instructions

1. Download [ImageOptim.app](https://imageoptim.com/ImageOptim.tbz2) and [ImageAlpha.app](https://pngmini.com/ImageAlpha1.5.1.tar.bz2) if you don't have them already and make sure to **place them in your Applications folder**.
2. If you don't already have [homebrew](https://brew.sh/) installed, open Terminal.app and install it by copy pasting the following line and pressing return. It may take a few minutes.
``` 
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
3. Install imageoptim CLI via the Terminal
```
brew install imageoptim-cli
```
4. Download [batch-optimizer droplet](https://github.com/chrischernoff/batch-optimizer/raw/master/batch-optimizer.app.zip) and put it somewhere handy (I have it in the Applications folder and saved in the dock).
5. Drop a file, multiple files, a folder containing images, or some combination of files and folders on the droplet. All source files will be **overwritten** with the optimized ones.
6. When you receive a push notification telling you your images are optimized, you're good to go! While it's processing, you'll see a spinning gear in your menubar, the ImageOptim.app will also open and close on its own, this is normal.
