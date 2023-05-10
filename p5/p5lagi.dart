class Mobil {
  String? jenis;

  void merk(String merk) {
    print("Mobil $jenis ini memiliki Merk $merk");
  }
}

class Sedan extends Mobil {
  String? jenis;

  void merk(String merk) {
    print("Mobil bermerk $merk adalah Mobil berjenis $jenis");
  }
}

class Balap extends Mobil {}

class Angkut extends Mobil {}

void main() {

  var sedan = Sedan();
  sedan.jenis = "Sedan";
  sedan.merk("Honda");

  var balap = Balap();
  balap.jenis = "Balap";
  balap.merk("Ferrari");

  var angkut = Angkut();
  angkut.jenis = "Angkut";
  angkut.merk("Daihatsu");
}
