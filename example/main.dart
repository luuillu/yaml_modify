// Copyright (c) 2015, Anders Holmgren. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

library yaml_modify.example;

import 'dart:io' show File;

import 'package:yaml_modify/yaml_modify.dart';

main() {
  File file = File("pubspec.yaml");
  final yaml = loadYaml(file.readAsStringSync());

  final modifiable = getModifiableNode(yaml);
  modifiable['flutter'] = {
    'assets':['img1.png', 'img2.png']
  };

  final strYaml = toYamlString(modifiable);
  File("pubspec-output.yaml").writeAsStringSync(strYaml);
  print(strYaml);
}
