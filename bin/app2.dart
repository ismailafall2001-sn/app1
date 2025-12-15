// Import de la classe CompteUtilisateur depuis le package app2
// Cette classe représente un utilisateur du système
import 'package:app2/compte_utilisateur.dart';

void main() {
  // Création du premier objet CompteUtilisateur
  // Le mot-clé "const" indique que l’objet est créé à la compilation
  // Cela n’est possible que si tous les attributs sont final
  CompteUtilisateur c1 = const CompteUtilisateur(
    name: "Issa",
    username: "issaI",
    email: "issa@example.com",
    id: 1,
  );

  // Création d’un second objet avec exactement les mêmes valeurs
  // Grâce au constructeur const, Dart peut réutiliser la même instance
  CompteUtilisateur c2 = const CompteUtilisateur(
    name: "Issa",
    username: "issaI",
    email: "issa@example.com",
    id: 1,
  );

  // Comparaison logique des deux objets
  // Retourne true si Dart considère que les deux objets sont équivalents
  // Sans const ou sans attributs final, le résultat serait false
  print(c1 == c2);

  // Comparaison des références mémoire
  // Retourne true uniquement si c1 et c2 pointent vers la même instance
  print(identical(c1, c2));
}
