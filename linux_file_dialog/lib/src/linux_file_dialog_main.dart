import 'dart:io';

class DesktopFileDialog {
  DesktopFileDialog(_);

  static String linuxOpenFile() {
    late String _pathFile;

    Process.run('zenity', ['--file-selection', '--title=Choose your file'])
        .then((value) => _pathFile = value.stdout);

    return _pathFile;
  }
}
