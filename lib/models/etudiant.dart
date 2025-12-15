class Etudiant {
  // Les champs marqués late seront initialisés lors de la création de l’objet
  late String prenom;
  late String nom;
  late int matricule;

  // Attribut interne pour stocker la moyenne
  late double _moyenne = 0;

  // Note obtenue par l’étudiant
  late double note;

  // Constructeur principal avec paramètres nommés
  Etudiant({
    // required oblige la fourniture de la valeur à l’instanciation
    required this.prenom,
    required this.nom,
    required this.matricule,
    required this.note,
  });

  // Getter permettant de lire la moyenne
  double get moyenne {
    return _moyenne;
  }

  // Setter avec vérification des bornes autorisées
  set moyenne(double valeur) {
    if (valeur >= 0 && valeur <= 20) {
      _moyenne = valeur;
    } else {
      print("Valeur de moyenne invalide");
    }
  }

  // Représentation textuelle de l’objet Etudiant
  @override
  String toString() {
    return "Matricule : $matricule | $prenom $nom | Moyenne : $moyenne";
  }

  // Création automatique d’un objet Etudiant à partir d’une Map
  static Etudiant fromMap(Map<String, dynamic> data) {
    return Etudiant(
      prenom: data["prenom"],
      nom: data["nom"],
      matricule: data["matricule"],
      note: data["note"],
    );
  }
}
