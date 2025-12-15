// Import des outils nécessaires pour manipuler des données JSON
import 'dart:convert';

// Import du package HTTP pour effectuer des requêtes réseau
// ignore: depend_on_referenced_packages
import 'package:http/http.dart' as http;

// Classe responsable des communications avec les APIs externes
class Apiservices {
  // Méthode statique asynchrone permettant d’effectuer
  // une requête HTTP GET vers une API
  static dynamic getData(String url) async {
    try {
      // Création et envoi de la requête GET à partir de l’URL fournie
      final response = await http.get(Uri.parse(url));

      // Vérification du succès de la requête (code HTTP 200 = OK)
      if (response.statusCode == 200) {
        // Décodage du contenu JSON reçu en objet Dart
        // (Map ou List selon la réponse de l’API)
        return jsonDecode(response.body);
      } else {
        // Lancement d’une exception en cas d’erreur côté serveur ou client
        throw Exception(
          "Erreur HTTP ${response.statusCode} : ${response.reasonPhrase}",
        );
      }
    } catch (e, stackTrace) {
      // Gestion des erreurs réseau, de parsing ou autres exceptions
      // Affichage du message d’erreur et de la pile d’exécution
      print("Erreur API : $e");
      print("StackTrace : $stackTrace");
    }
  }
}
