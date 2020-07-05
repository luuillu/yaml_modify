// Copyright (c) 2015, Anders Holmgren. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

library yamlicious.example;

import 'dart:convert';
import 'dart:io' show File;

import 'package:yaml/yaml.dart' show loadYaml;
import 'package:yamlicious/src/yaml_writer.dart';
import 'package:yamlicious/yamlicious.dart' show toYamlString;

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
