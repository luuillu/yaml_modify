// Copyright (c) 2015, Anders Holmgren. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

library yamlicious.example;

import 'dart:convert';
import 'dart:io' show File;

import 'package:yaml/yaml.dart' show YamlList, YamlMap, loadYaml, loadYamlDocument, loadYamlNode;
import 'package:yamlicious/yamlicious.dart' show toYamlString;

main() {
  File file = new File("pubspec.yaml");
  var yaml = loadYaml(file.readAsStringSync());

  final yamlMap = Map.from(yaml);
  final flutterMap = yamlMap['flutter'] =  Map.from(yaml['flutter']);
  final assetList = ['pkg.png', 'pkg.png'];
  flutterMap['assets'] = assetList;
  final strAll = toYamlString(yamlMap);


file.writeAsStringSync(strAll);
  print(strAll);
}
