// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'env.dart';

// **************************************************************************
// EnviedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _DevEnv {
  static const List<int> _enviedkeybaseServer = <int>[
    3704328536,
    1142478529,
    4082499602,
    3557535026,
    460703383,
    51161111,
    3071729375,
    42188738,
    2175778052,
    1398618539,
    131131818,
    169884704,
    981128797,
    1613955192,
  ];

  static const List<int> _envieddatabaseServer = <int>[
    3704328506,
    1142478515,
    4082499709,
    3557535065,
    460703474,
    51161189,
    3071729393,
    42188711,
    2175778153,
    1398618586,
    131131858,
    169884686,
    981128756,
    1613955095,
  ];

  static final String baseServer = String.fromCharCodes(List<int>.generate(
    _envieddatabaseServer.length,
    (int i) => i,
    growable: false,
  ).map((int i) => _envieddatabaseServer[i] ^ _enviedkeybaseServer[i]));

  static const List<int> _enviedkeybaseClientId = <int>[
    243168254,
    79030823,
    3568031240,
    3445876347,
    3631213006,
    213928750,
    3368903166,
    3089827270,
    2756056874,
    4274295069,
    2913416279,
    2232017962,
    2567392441,
    2387185778,
    858281410,
    368907714,
    4020160105,
    1935340173,
    1780770301,
    1539856173,
  ];

  static const List<int> _envieddatabaseClientId = <int>[
    243168147,
    79030870,
    3568031356,
    3445876239,
    3631212982,
    213928817,
    3368903118,
    3089827327,
    2756056856,
    4274295081,
    2913416288,
    2232017992,
    2567392393,
    2387185728,
    858281373,
    368907703,
    4020160026,
    1935340264,
    1780770191,
    1539856156,
  ];

  static final String baseClientId = String.fromCharCodes(List<int>.generate(
    _envieddatabaseClientId.length,
    (int i) => i,
    growable: false,
  ).map((int i) => _envieddatabaseClientId[i] ^ _enviedkeybaseClientId[i]));

  static final int _enviedkeybasePort = 465575695;

  static final int basePort = _enviedkeybasePort ^ 465573972;
}
