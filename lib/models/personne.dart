// Déclaration d’une classe abstraite
// Elle sert de modèle de base pour toutes les personnes du système
// Une classe abstraite ne peut pas être instanciée directement
abstract class Personne {
  // Attribut représentant le prénom de la personne
  // "final" signifie que la valeur ne pourra plus être modifiée après l'initialisation
  final String prenom;

  // Attribut représentant le nom de famille de la personne
  final String nom;

  // Attribut représentant le matricule (identifiant unique) de la personne
  final int matricule;

  // Constructeur de la classe Personne
  // Il sera appelé par les classes qui héritent de Personne
  Personne({
    // "required" oblige les classes filles à fournir ces valeurs
    required this.prenom,
    required this.nom,
    required this.matricule,
  });

  // Méthode abstraite permettant d'obtenir le prénom
  // Aucune implémentation ici
  // Chaque classe héritée devra définir son propre comportement
  String getPrenom();

  // Méthode abstraite permettant d'obtenir le nom
  // Elle devra également être implémentée dans les classes filles
  String getNom();
}
