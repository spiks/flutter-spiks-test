import 'package:flutter_spiks_test/data/repositories/dog_image_random/local/dog_image_local_repository.dart';
import 'package:flutter_spiks_test/data/repositories/dog_image_random/remote/dog_image_random_repository.dart';
import 'package:flutter_spiks_test/services/app_service/app_service.dart';
import 'package:flutter_spiks_test/services/local_storage_service/local_storage_service.dart';
import 'package:flutter_spiks_test/services/log_service/log_service.dart';
import 'package:mockito/annotations.dart';

@GenerateMocks([
  DogImageRandomRepository,
  DogImageLocalRepository,
  LogService,
  AppService,
  LocalStorageService,

  // TODO(boilerplate): add more dependencies
])
void main() {}
