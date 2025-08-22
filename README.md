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

### OneUI 6
You are currently on the OneUI 6 branch. To target a different OneUI version, switch to the corresponding branch.

---

## Patches Documentation

### OneUI 7 Icon Patch
Implementing custom icons for OneUI 7 is more complex than in previous versions. Here’s why:

- **OneUI 6 and earlier** used a custom adaptive color implementation with:
  - `.webp` images (`tw30_icon_camera.webp`, `qr_scanner.webp`) for classic icons.
  - A monochrome vector (`sep_monochrome_icon.xml`) for theme compatibility.

- **OneUI 7** aligns with **AOSP standards** ([Android’s Adaptive Icons](https://developer.android.com/training/backward-compatible-ui)).
  - Icons are now split into **foreground** and **background** layers, stored in the `mipmap` folder.
  - The `ic_launcher.xml` file manages the new `<adaptive-icon>` structure.

### Bypass OneUI checks
SamsungCamera checks the OneUI version at launch. For example, if you try to run the app on OneUI 7, it will fail to open. To resolve this, we replace the OneUI 6.1 hex values with the corresponding OneUI 7 hex values.

### Disable MotionPhoto
The implementation in OneUI 7 underwent a complete overhaul, making it impractical to fix. Instead, we can simply force the `isMotionPhotoAvailable` method to return 0x0.
Credit: ([ExtremeXT](https://github.com/ExtremeXT))

### Hardcode getInterfaceVersion()
This method was deprecated in the OneUI 7 framework. Previously, it returned 0x4, so we will hardcode this value directly into the APK.
Credits: ([ExtremeXT](https://github.com/ExtremeXT)) ([PeterKnecht93](https://github.com/PeterKnecht93))

---

## How to Build?
- Get `system/priv-app/SamsungCamera/SamsungCamera.apk` and `system/framework/framework-res.apk`, and place them under a directory of your choice.
- Download ([Apktool](https://apktool.org/)) and place it under the same directory as the previous files.
- Run `java -jar apktool.jar d -p framework-res.apk -o SamsungCamera SamsungCamera.apk` (this is for decompiling your apk)

Next you'll want to download the `*.patch` that you want to include and place them inside SamsungCamera folder that just got created.

- Run `cd SamsungCamera`
- For each .patch file, run `git apply --binary -p1 0001_*.patch`

Once all of them are applied you can recompile your apk

- `cd ..`
- `java -jar apktool.jar b -p framework-res.apk SamsungCamera`

Since we edited resources in the apk, you'll need to sign your apk. This won't be covered here because it depends of each ROM

---

## License
This project is for **educational and research purposes only**. SamsungCamera remains proprietary software; use these patches at your own risk.

