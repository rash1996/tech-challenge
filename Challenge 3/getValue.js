function getValue(object, key) {
  var keyParts = key.split('.');
  for (var i = 0; i < keyParts.length; i++) {
    object = object[keyParts[i]];
  }
  return object;
}