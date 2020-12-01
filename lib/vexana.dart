library vexana;

export 'src/extension/request_type_extension.dart';
export 'src/interface/IErrorModel.dart';
export 'src/interface/INetworkModel.dart';
export 'src/interface/INetworkService.dart';
export 'src/interface/IResponseModel.dart';

// MODEL
export 'src/model/empty_model.dart';
export 'src/model/error_model.dart';
export 'src/model/response_model.dart';
export 'src/model/enum/request_type.dart';

// NETWORK
export 'src/network_manager.dart';
export 'package:dio/src/options.dart';

// CACHE
export 'src/cache/file/local_file.dart';
export 'src/cache/shared/local_preferences.dart';
