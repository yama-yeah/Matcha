Map<String, Map<String, dynamic>> map2string(
    Map<int, Map<String, dynamic>> raw) {
  Map<String, Map<String, dynamic>> result = {};
  raw.forEach((key, value) {
    result[key.toString()] = value;
  });
  return result;
}

Map<int, Map<String, dynamic>> map2int(Map<String, Map<String, dynamic>> raw) {
  Map<int, Map<String, dynamic>> result = {};
  raw.forEach((key, value) {
    result[int.parse(key)] = value;
  });
  return result;
}
