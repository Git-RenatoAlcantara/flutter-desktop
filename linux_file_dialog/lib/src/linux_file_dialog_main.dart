import 'dart:io';

class LinuxFileDialog {
  LinuxFileDialog(_);
  static Future<Map<String, dynamic>> opeDialog() async {
    Map<String, dynamic> dialogResult = Map<String, dynamic>();

    var processResult = await Process.run(
        'zenity', ['--file-selection', '--title=Choose your file']);
    var exitCode = processResult.exitCode;
    dialogResult.addAll({'StatusCode': exitCode});
    dialogResult.addAll({'PathFile': processResult.stdout});

    return dialogResult;
  }
}
