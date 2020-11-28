## Steps to reproduce

1. Clone this exemplar repository that I've created
2. Run "flutter pub get"
3. Run "flutter run" or by your IDE (I'm using Android Studio)
4. With two fingers, simultaneously, click on the colored (blue) Container area

I've recorded an evidence video to this issue: https://youtu.be/U-_5wzee0VQ

Log:
```
════════ Exception caught by gesture library ═══════════════════════════════════════════════════════
The following _CastError was thrown while dispatching a pointer event:
Null check operator used on a null value

When the exception was thrown, this was the stack: 
#0      DragGestureRecognizer.acceptGesture (package:flutter/src/gestures/monodrag.dart:321:60)
#1      GestureArenaManager.sweep (package:flutter/src/gestures/arena.dart:157:27)
#2      GestureBinding.handleEvent (package:flutter/src/gestures/binding.dart:362:20)
#3      GestureBinding.dispatchEvent (package:flutter/src/gestures/binding.dart:338:22)
#4      RendererBinding.dispatchEvent (package:flutter/src/rendering/binding.dart:267:11)
...
Event: PointerUpEvent#6b144(position: Offset(197.0, 354.8))
  position: Offset(197.0, 354.8)
Target: <WidgetsFlutterBinding>
════════════════════════════════════════════════════════════════════════════════════════════════════
D/ViewRootImpl@95a89f4[MainActivity](16882): ViewPostIme pointer 0
D/ViewRootImpl@95a89f4[MainActivity](16882): ViewPostIme pointer 1

════════ Exception caught by gesture library ═══════════════════════════════════════════════════════
'package:flutter/src/gestures/monodrag.dart': Failed assertion: line 435 pos 12: '_initialButtons == kPrimaryButton': is not true.
════════════════════════════════════════════════════════════════════════════════════════════════════
```

flutter doctor -v
```
[√] Flutter (Channel stable, 1.22.4, on Microsoft Windows [versÃ£o 10.0.18363.1198], locale pt-BR)
    • Flutter version 1.22.4 at C:\src\flutter
    • Framework revision 1aafb3a8b9 (2 weeks ago), 2020-11-13 09:59:28 -0800
    • Engine revision 2c956a31c0
    • Dart version 2.10.4


[√] Android toolchain - develop for Android devices (Android SDK version 30.0.2)
    • Android SDK at C:\Users\marce\AppData\Local\Android\Sdk
    • Platform android-30, build-tools 30.0.2
    • ANDROID_HOME = C:\Users\marce\AppData\Local\Android\Sdk
    • Java binary at: C:\Program Files\Android\Android Studio\jre\bin\java
    • Java version OpenJDK Runtime Environment (build 1.8.0_242-release-1644-b01)
    • All Android licenses accepted.

[!] Android Studio (version 4.1.0)
    • Android Studio at C:\Program Files\Android\Android Studio
    X Flutter plugin not installed; this adds Flutter specific functionality.
    X Dart plugin not installed; this adds Dart specific functionality.
    • Java version OpenJDK Runtime Environment (build 1.8.0_242-release-1644-b01)

[!] IntelliJ IDEA Ultimate Edition (version 2018.3)
    • IntelliJ at C:\Program Files\JetBrains\IntelliJ IDEA 2018.3.4
    X Flutter plugin not installed; this adds Flutter specific functionality.
    X Dart plugin not installed; this adds Dart specific functionality.
    • For information about installing plugins, see
      https://flutter.dev/intellij-setup/#installing-the-plugins

[√] VS Code (version 1.50.1)
    • VS Code at C:\Users\marce\AppData\Local\Programs\Microsoft VS Code
    • Flutter extension version 3.15.1

[√] Connected device (1 available)
    • SM G950F (mobile) • ce12160ca9102e3405 • android-arm64 • Android 9 (API 28)

! Doctor found issues in 2 categories.
```
