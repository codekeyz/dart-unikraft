import 'dart:io';

void main() async {
  final server = await HttpServer.bind(InternetAddress.anyIPv4, 8080);

  server.listen((HttpRequest req) async {
    final res = req.response;
    res
      ..headers.contentType = ContentType.text
      ..write('Hello World');
    await res.close();
  });

  print('Server started listening on ${server.port}');
}
