// Importation de la classe Personne depuis le dossier models
// Cette classe servira de classe mère (superclasse)
import 'package:app1/models/personne.dart';

// Déclaration de la classe Enseignant
// Elle hérite de la classe Personne grâce au mot-clé "extends"
class Enseignant extends Personne {
  // Attribut spécifique à la classe Enseignant
  // "final" signifie que la valeur ne pourra plus être modifiée après l'initialisation
  final String matiere;

  // Constructeur de la classe Enseignant
  // Il utilise le constructeur de la classe Personne avec "super"
  // et initialise aussi l'attribut propre "matiere"
  Enseignant({
    required super.prenom, // transmis à la classe Personne
    required super.nom, // transmis à la classe Personne
    required super.matricule, // transmis à la classe Personne
    required this.matiere, // initialisation de l'attribut matiere
  });

  // Méthode qui retourne le prénom de l'enseignant
  // "this.prenom" est hérité de la classe Personne
  String getPrenom() {
    return this.prenom;
  }

  // Méthode qui retourne le nom de l'enseignant
  // "this.nom" est aussi hérité de la classe Personne
  String getNom() {
    return this.nom;
  }
}
