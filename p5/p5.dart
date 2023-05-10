//abstract class Mobil {
class Mobil {
  String? jenis;

  void merk(String merk) {
    print("Mobil $jenis ini memiliki Merk $merk");
  }
}

class Sedan extends Mobil {}
class Balap extends Mobil {}

class Angkut extends Mobil {
  void merk(String merk) {
    print("Mobil bermerk $merk ini adalah mobil $jenis");
  }
}

void main() {
  // var mobil = Mobil();
  // mobil.jenis = "Mobil";
  // mobil.merk("Toyota");

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
