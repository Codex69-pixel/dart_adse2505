// Nested loop in dart
//Author cyrus

void main() {
  // Outer loop controls rows
  for (int i = 1; i <= 3; i++) {
    print('Outer loop row: $i');

    // Inner loop controls columns
    for (int j = 1; j <= 2; j++) {
      print('  Inner loop column: $j');
    }
  }
}
