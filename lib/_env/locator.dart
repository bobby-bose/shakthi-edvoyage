import 'package:get_it/get_it.dart';

import '../_Services/api/api_client.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<ApiClient>(ApiClient());
}
