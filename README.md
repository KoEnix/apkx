# apkx (Fork) - Android APK Decompilation for the Lazy

A Python wrapper to popular free dex converters and Java decompilers. Extracts Java source code directly from the APK. Useful for experimenting with different converters/decompilers without having to worry about classpath settings and command line args.

It has been modified from the original apkx tool to work with the newer version of CFR and the new decompiler fernflower, because Procyon wasnt updated for quite a whike now.

Original tool: [apkx](https://github.com/b-mueller/apkx)

## Installation

```bash
$ git clone https://github.com/koenix/apkx
$ cd apkx
$ sudo bash install.sh
```

Notes: 

- JRE needs to be installed and in PATH
- enjarify requires Python 3

## Usage

Pass the APK filename on the command line:

```bash
$ apkx HelloWorld.apk 
Extracting HelloWord.apk to HelloWord
Converting: classes.dex -> classes.jar (dex2jar)
dex2jar HelloWord/classes.dex -> HelloWord/classes.jar
Decompiling to HelloWord/src (cfr)
```

The default combination of converter and decompiler is <code>dex2jar</code> and <code>cfr</code>. Use the <code>-c</code> and <code>-d</code> flags to change this. E.g.:

```bash
$ apkx -c enjarify -d fernflower HelloWorld.apk
```

To get help, run:

```bash
$ apkx -h
```

## Tools

This script integrates the following tools:

- [fernflower](https://github.com/JetBrains/intellij-community/tree/master/plugins/java-decompiler/engine) by IntelliJ- [Apache License Version 2.0](https://www.apache.org/licenses/LICENSE-2.0.html)
- [CFR](http://www.benf.org/other/cfr/) by Lee Benfield  - [MIT License](https://opensource.org/licenses/MIT)
- [dex2jar](https://github.com/pxb1988/dex2jar) by Bob Pan - [Apache License Version 2.0](https://www.apache.org/licenses/LICENSE-2.0.html)
- [enjarify](https://github.com/Storyyeller/enjarify) by Storyyeller - [Apache License Version 2.0](https://www.apache.org/licenses/LICENSE-2.0.html)

## About

This script accompanies the [OWASP Mobile Security Testing Guide](https://github.com/OWASP/owasp-mstg). For further instructions and usage examples, see also:

- [Tampering and Reverse Engineering on Android](https://github.com/OWASP/owasp-mstg/blob/master/Document/0x05c-Reverse-Engineering-and-Tampering.md)
- [Testing Resiliency Against Reverse Engineering on Android](https://github.com/OWASP/owasp-mstg/blob/master/Document/0x05j-Testing-Resiliency-Against-Reverse-Engineering.md)

