String detectTriangle(num a, num b, num c) {
  final sides = [a, b, c];
  sides.sort();
 
  // ignore: avoid_function_literals_in_foreach_calls
  sides.forEach((side) {
    if (side < 1) {
      throw Exception();
    }
  });
  
  if (sides[0] + sides[1] <= sides[2]) {
    throw Exception('Inequal Triangle');
  }
 
  if (sides[0] == sides[1] && sides[0] == sides[2]) {
    return "Segitiga Sama Sisi";
  }
 
  if (sides[0] == sides[1] || sides[1] == sides[2]) {
    return "Segitiga Sama Kaki";
  }
 
  return "Segitiga Sembarang";
}