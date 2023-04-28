import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(path: '.env')
abstract class Env {
  @EnviedField(varName: 'TMDB_KEY', obfuscate: true)
  final tmdbApiKey = _Env.tmdbApiKey;
  @EnviedField(varName: 'baseUrl', obfuscate: true)
  static String url = _Env.url;
  // @EnviedField(varName: 'baseUrl', obfuscate: true)
  // static String url = _Env.url;
}
