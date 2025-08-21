# SamsungCamera

## About This Repository

This repository aims to **open-source and document patches** for the SamsungCamera app, in line with the open-source initiative. Here, you’ll find:
- A **pre-compiled version** of the app with all patches applied (see the [Releases section](#)).
- Instructions to **compile the app yourself** (see the [Build section](#)).

> **Disclaimer:**
> SamsungCamera is proprietary software, protected by obfuscation and anti-decompilation methods. As a result, patches are applied directly to the app’s smali code.

---

## Supported Versions

This repository provides a **generic set of patches** for SamsungCamera across **OneUI 5, 6, and 7**. 

### OneUI 7
You are currently on the OneUI 7 branch. To target a different OneUI version, switch to the corresponding branch.

---

## Patches Documentation

---

## How to Build?
- Get `system/priv-app/SamsungCamera/SamsungCamera.apk` and `system/framework/framework-res.apk`, and place them under a directory of your choice.
- Download ([Apktool](https://apktool.org/)) and place it under the same directory as the previous files.
- Run `java -jar apktool.jar d -p framework-res.apk -o SamsungCamera SamsungCamera.apk` (this is for decompiling your apk)

Next you'll want to download the `*.patch` that you want to include and place them inside SamsungCamera folder that just got created.

- Run `cd SamsungCamera`
- For each .patch file, run `patch -p1 < 0001_*.patch`

Once all of them are applied you can recompile your apk

- `cd ..`
- `java -jar apktool.jar b -p framework-res.apk SamsungCamera`

Since we edited resources in the apk, you'll need to sign your apk. This won't be covered here because it depends of each ROM

---

## License
This project is for **educational and research purposes only**. SamsungCamera remains proprietary software; use these patches at your own risk.

