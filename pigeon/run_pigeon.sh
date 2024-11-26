flutter pub run pigeon \
  --input pigeon/pigeon_host.dart \
  --dart_out lib/src/gen/gcore_flutter_host.dart \
  --objc_header_out ios/Classes/messages.h \
  --objc_source_out ios/Classes/messages.m \
  --objc_prefix BML \
  --java_out android/src/main/java/pl/refericon/gcore_flutter/Messages.java \
  --java_package "pl.refericon.gcore_flutter"