import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

extension DioExt on Dio {
  void addPrettyDioLogger() {
    if (kDebugMode) {
      final prettyDioLogger = PrettyDioLogger(
        request: true,
        requestHeader: true,
        requestBody: true,
        responseHeader: true,
        error: true,
        compact: true,
      );
      interceptors.add(prettyDioLogger);

      /// for proxy-man
      // addProxyManLogger();
    }
  }

  void addProxyManLogger() {
    /// for proxy-man
    String proxy = Platform.isAndroid ? '<YOUR_LOCAL_IP>:9090' : 'localhost:9090';

    /// for proxy man log
    httpClientAdapter = IOHttpClientAdapter(
      createHttpClient: () {
        // Don't trust any certificate just because their root cert is trusted.
        final HttpClient client = HttpClient(
          context: SecurityContext(withTrustedRoots: true),
        );
        // You can test the intermediate / root cert here. We just ignore it.
        client.findProxy = (url) {
          return 'PROXY $proxy';
        };
        client.badCertificateCallback =
            ((X509Certificate cert, String host, int port) => true);

        return client;
      },
    );
  }
}
