class Spacecraft {

  String? name;
  DateTime? launchDate;

  // Propriété en lecture seule non finale
  int? get launchYear => launchDate?.year;

   Spacecraft(this.name, this.launchDate) {
    // Le code d'initialisation va ici.
  }

  // Constructeur nommé qui redirige vers le constructeur par défaut.
  Spacecraft.unlaunched(String name) : this(name, null);

  // Méthode.
  void describe() {
    print('Vaisseau spatial : $name');
    // La promotion de type ne fonctionne pas sur les getters.
    var launchDate = this.launchDate;
    if (launchDate != null) {
      int years = DateTime.now().difference(launchDate).inDays ~/ 365;
      print('Lancé : $launchYear ($years ans auparavant)');
    } else {
      print('Non lancé');
    }
  }

}