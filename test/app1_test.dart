// Import du fichier contenant la fonction à tester
// Ce fichier appartient au module des services de l’application
import 'package:app1/services/app1.dart';

// Import du framework de tests unitaires de Dart
// Il permet d’écrire et d’exécuter des tests automatisés
import 'package:test/test.dart';

// Point d’entrée des tests
void main() {
  // Définition d’un test unitaire
  // Il vérifie que la fonction calculate() retourne la valeur attendue
  test('calculate', () {
    // Assertion : compare le résultat obtenu avec la valeur attendue (42)
    // Le test réussit si les deux valeurs sont identiques
    expect(calculate(), 42);
  });
}
