import 'package:awesome_video_player/src/video_player/video_player_platform_interface.dart';
import 'package:flutter/services.dart';

const MethodChannel _channel = MethodChannel('better_player_channel');

class VideoCacheManager {
  static Future<void> clearCache() {
    return _channel.invokeMethod<void>(
      'clearCache',
      <String, dynamic>{},
    );
  }

  static Future<void> preCache(DataSource dataSource, int preCacheSize) {
    final Map<String, dynamic> dataSourceDescription = <String, dynamic>{
      'key': dataSource.key,
      'uri': dataSource.uri,
      'certificateUrl': dataSource.certificateUrl,
      'headers': dataSource.headers,
      'maxCacheSize': dataSource.maxCacheSize,
      'maxCacheFileSize': dataSource.maxCacheFileSize,
      'preCacheSize': preCacheSize,
      'cacheKey': dataSource.cacheKey,
      'videoExtension': dataSource.videoExtension,
    };
    return _channel.invokeMethod<void>(
      'preCache',
      <String, dynamic>{
        'dataSource': dataSourceDescription,
      },
    );
  }

  static Future<void> stopPreCache(String url, String? cacheKey) {
    return _channel.invokeMethod<void>(
      'stopPreCache',
      <String, dynamic>{'url': url, 'cacheKey': cacheKey},
    );
  }
}
