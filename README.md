# yamlicious

A library for modify yaml files

## Usage

A simple usage example:

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

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: https://github.com/luuillu/yaml_modify

Thank Andersmholmgren and his library(https://github.com/Andersmholmgren/yamlicious)
