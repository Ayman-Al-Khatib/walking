<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

## Walk
`walk`  These packages help add vitality to destinations, and you can use them for anything.

### Platform Support

| Android | iOS | Web | MacOS | Linux | Windows |
| :-----: | :-: | :---: | :-----: | :-: | :---: |
| &#9989;  | &#9989; | &#9989; | &#9989;  | &#9989; | &#9989; |

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Videos</title>
  <style>
    table {
      width: 100%;
    }
    td {
      text-align: center;
    }
    video {
      width: 100%;
    }
  </style>
</head>
<body>
  <table>
    <tr>
      <td>
        <video src="https://raw.githubusercontent.com/Ayman-Al-Khatib/walking/main/assets/1.mp4" autoplay controls>
          Your browser does not support the video tag.
        </video>
      </td>
      <td>
        <video src="https://raw.githubusercontent.com/Ayman-Al-Khatib/walking/main/assets/2.mp4" autoplay controls>
          Your browser does not support the video tag.
        </video>
      </td>
      <td>
        <video src="https://raw.githubusercontent.com/Ayman-Al-Khatib/walking/main/assets/3.mp4" autoplay controls>
          Your browser does not support the video tag.
        </video>
      </td>
    </tr>
  </table>
</body>
</html>

### Installation
Add it as a dependency in their `pubspec.yaml`:
```
dependencies:
  walking: ^0.0.1
```

### Usage
```
...
import 'package:walking/walking.dart';
...
```
## Example

walk container
```dart
WalkContainer(
        width: 100,
        height: 45,
        angle: 90,
        child: null,
        colors: [Colors.red, Colors.orange],
        curve: Curves.bounceOut,
        duration: Duration(seconds: 1),
        reverse: false,
        steps: [0.2, 0.6],
        thicken: 4,
      )
```

walk text form
```
void main() {
  runApp(const MaterialApp(home: HomePage()));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController controller = TextEditingController();
  FocusNode focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: WalkTextForm(controller: controller, focusNode: focusNode),
      ),
    );
  }
}
```

Check example folder for more examples.

