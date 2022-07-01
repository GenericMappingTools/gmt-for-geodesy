# Installing the required software


> 🚨 **IMPORTANT NOTE** 🚨
> Installing GMT and its dependencies, especially for Linux, can be a difficult task even for experienced
> users (including the developers themselves). So **don't be discouraged** if you
> have any trouble or questions. [We're here to help you work through it!](#need-help)


Please follow these instructions to install **GMT 6.4.0**
and other software that will be used. Here is a summary of what you'll need:

* GMT 6.4.0 and its dependencies
* [Ghostscript](https://ghostscript.com/): Used by GMT to convert postscript (GMT's
  native graphics format) into PNG, PDF, etc. (pre-installed on Windows)
* [GDAL](https://gdal.org/): Library used by GMT for reading and writing raster and
  vector geospatial data formats (pre-installed on Windows).
* [ffmpeg](https://ffmpeg.org/): Video creating and conversion software used to make GMT
  animations (pre-installed on Windows).
* A text editor of your choice (see [instructions below](#install-a-text-editor)).

See specific instructions for your operating system below:

* [Linux](#linux)
* [macOS](#macos)
* [Windows](#windows)


## Need help?

If have any trouble installing, there are a few you ways to ask for help:

* Open an *Issue* on this repository by
  [clicking here](https://github.com/GenericMappingTools/gmt-for-geodesy/issues/new/choose).
  You'll need a GitHub account to do this.
* Post to the [GMT Community Forum](https://forum.generic-mapping-tools.org/)

Key things you need to tell us so that we can help you:

1. Your operating system
2. The commands you ran or things you installed
3. Which step is giving you trouble
4. What is the exact error message (copy and paste it)


## Linux

There are 2 options for installing GMT 6.4.0:

1. Use the [conda package manager](https://conda.io/en/latest/) to install
   binaries for GMT and all dependencies (**recommended**)
2. Build GMT from source and install dependencies from your system package manager (see
   [instructions below](#building-gmt-from-source))

Unfortunately, you cannot use your system package manager to install GMT because this
course requires GMT 6.4.0, which is not available on most distributions yet.

Most Linux distributions come with a text editor installed. You may also
[install Visual Studio Code](#install-a-text-editor) if you want but it is not required.

### Installing with conda

1. Download and install the [Python **3.9** **64-bit** version of Miniconda](https://conda.io/en/latest/miniconda.html).
   This will give you access to the conda package manager. **Make sure you select to
   have conda added to your `PATH` when asked by the installer**. If you have
   the Anaconda Python distribution installed, you won't need to do this step.
2. Install GMT 6.4.0 and its dependencies (including ghostscript, gdal, ffmpeg and graphicsmagick) by running
   the following in a terminal:

   ```
   conda install gmt=6.4.0 -c conda-forge
   conda install ffmpeg graphicsmagick -c conda-forge
   ```

## macOS

There are 4 options for installing GMT 6.4.0 under macOS:

1. Use the GMT bundle installer (follow [this instruction](https://github.com/GenericMappingTools/gmt/blob/master/INSTALL.md#application-bundle))
   (**requires** macOS >= 13 for 6.4.0; if you have an older macOS version consider upgrading first so you can use the installer)
2. Use homebrew (follow the ["Install instruction"](https://github.com/GenericMappingTools/gmt/blob/master/INSTALL.md#install-via-homebrew))
3. Use the [conda package manager](https://conda.io/en/latest/) to install
   binaries for GMT and all dependencies
   (follow the same [instructions for conda on Linux](#installing-with-conda))
4. Build GMT from source and install dependencies separately (see
   [instructions below](#building-gmt-from-source))

Make sure you also [have a text editor installed](#install-a-text-editor).

We will use a bash shell during the course. To set your default shell to bash, enter `chsh -s /bin/bash` in the Terminal.


## Windows

Before installing GMT, you will need access to a UNIX style terminal with a
[bash shell](https://en.wikipedia.org/wiki/Bash_%28Unix_shell%29) for GMT scripting.
**Don't worry if you don't know what this means. We'll go through it in the first day of
the workshop.**
Linux and macOS usually come with one installed but Windows users aren't so lucky.
To install a terminal with a bash shell on Windows:

1. Download and install Git-for-Windows `Git-2.36.1-64-bit.exe` from
   [their official website](https://gitforwindows.org/).
   There are
   [video instructions for installing](https://www.youtube.com/watch?v=339AEqk9c-8)
   provided by [Software Carpentry](https://software-carpentry.org/)
2. In this course, when you see/hear "Terminal" you should open the "Git Bash" program.

To install GMT, we'll use the Windows installer:

1. Download and install the GMT Windows installer `gmt-6.4.0-win64.exe`
   from [this link](https://github.com/GenericMappingTools/gmt/releases/download/6.4.0/gmt-6.4.0-win64.exe).
   It comes with GDAL, ghostscript, and ffmpeg pre-installed.

Make sure you also [have a text editor installed](#install-a-text-editor).


## Building GMT from source

Follow the ["Building from source" instructions](https://github.com/GenericMappingTools/gmt/blob/master/BUILDING.md)
from the GMT repository.


## Install a text editor

You'll need a [text editor](https://en.wikipedia.org/wiki/Text_editor) to write GMT
scripts.
Any editor is fine and you may use your preferred one.  However, we will **strongly**
recommend installing the "Stable" version of [Visual Studio
Code](https://code.visualstudio.com/) on Linux, macOS, or Windows.
Installers and instructions are available on their website. Some good reasons to use VSC:

1. You can open a terminal window in VSC and run your scripts directly in it.
2. You can install the [Code Runner](https://marketplace.visualstudio.com/items?itemName=formulahendry.code-runner) extension, which adds a button you click
   to run the active script in the terminal.
3. You can add a [keyboard shortcut](https://stackoverflow.com/a/54439971) to run a highlighted script line in the terminal.
4. For Windows users using Git Bash, you install the Windows version but access it from the Git bash
   command line using "code *file*". You will need to edit the shell used by VSC to be Git bash as well.
