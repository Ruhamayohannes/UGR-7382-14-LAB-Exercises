import 'dart:async';
import 'dart:math';

Future<void> simulateFileDownload(String fileName) async {
  final random = Random();
  int downloadTime = random.nextInt(3) + 1;
  await Future.delayed(Duration(seconds: downloadTime));

  if (random.nextBool()) {
    throw Exception('Failed to download $fileName');
  }

  print('$fileName downloaded successfully in $downloadTime seconds.');
}

void main() async {
  List<String> filesToDownload = ['file1.txt', 'file2.txt', 'file3.txt'];

  print('Starting downloads...');

  List<Future> downloadFutures = [];
  for (var fileName in filesToDownload) {
    var future = simulateFileDownload(fileName)
      .catchError((e) {
        print(e);
      });
    downloadFutures.add(future);
  }

  try {
    await Future.wait(downloadFutures);
    print('All downloads completed.');
  } catch (e) {
    print('An error occurred during the downloads: $e');
  } finally {
    print('Download attempt finished.');
  }
}
