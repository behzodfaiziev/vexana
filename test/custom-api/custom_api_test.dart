import 'package:flutter_test/flutter_test.dart';
import 'package:vexana/vexana.dart';

import 'basic_error_model.dart';
import 'basic_user.dart';

// ignore: always_declare_return_types
void main() {
  late INetworkManager networkManager;
  const isServiceOn = false;
  setUp(() {
    networkManager = NetworkManager<BasicErrorModel>(
      isEnableLogger: true,
      errorModel: BasicErrorModel(),
      options: BaseOptions(baseUrl: 'http://localhost:3000/'),
    );
  });
  test('Custom Api', () async {
    if (!isServiceOn) return;
    final response = await networkManager.send<BasicUser, BasicUser>(
      '/user',
      queryParameters: {'isOk': 1},
      parseModel: BasicUser(),
      method: RequestType.GET,
    );

    expect(response.data, isNotNull);
  });

  test('Custom Api Error', () async {
    if (!isServiceOn) return;
    final response = await networkManager.send<BasicUser, BasicUser>(
      '/user',
      queryParameters: {'isOk': 2},
      parseModel: BasicUser(),
      method: RequestType.GET,
    );

    expect(response.data, isNotNull);
  });
}
