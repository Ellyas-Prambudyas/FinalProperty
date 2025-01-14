import 'package:get/get.dart';
import 'package:mobileapp/app/data/paket.dart';

class PaketController extends GetxController {
  var paketList = <Paket>[].obs;

  @override
  void onInit() async {
    super.onInit();
    await fetchPaket();
    // print(paketList);
  }

  Future<void> fetchPaket() async {
    await Future.delayed(Duration(seconds: 2));

    // Return a list of Paket objects with categories and prices
    var initialdata = [
      Paket(
          nama: 'Rumah 1',
          image: 'assets/content-1.jpg',
          tanggal: '2025-09-30', // Format changed to yyyy-mm-dd
          fasilitas: '3 Betroom, Swimming POol',
          lokasi: 'Lamongan',
          category: 'Mini',
          harga: int.parse('750000000'),
          itinerary: "",
          jenis: "Mini"),
      Paket(
          nama: 'Rumah 4',
          image: 'assets/content-4.jpg',
          tanggal: '2025-10-15', // Format changed to yyyy-mm-dd
          fasilitas: '3 Betroom, Swimming POol ',
          lokasi: 'Dinoyo',
          category: 'Large',
          harga: int.parse('750000000'),
          itinerary: "",
          jenis: "Large"),
      Paket(
          nama: 'Rumah 2',
          image: 'assets/content-2.jpg',
          tanggal: '2025-11-25', // Format changed to yyyy-mm-dd
          fasilitas: '3 Betroom, Swimming POol',
          lokasi: 'Sukomulyo',
          category: 'Large',
          harga: int.parse('750000000'),
          itinerary: "",
          jenis: "Large"),
      Paket(
          nama: 'Rumah 3',
          image: 'assets/content-3.jpg',
          tanggal: '2025-11-25', // Format changed to yyyy-mm-dd
          /// `fasilitas` in the `Paket` class represents the facilities or amenities included in the
          /// package. It specifies the services or features provided as part of the package, such as
          /// airline carrier, hotel accommodation, transportation, meals, guided tours, etc.
          fasilitas: '3 Betroom, Swimming POol',
          lokasi: 'Jakarta',
          category: 'Large',
          harga: int.parse('750000000'),
          itinerary: "",
          jenis: "Large"),
      Paket(
          nama: 'Rumah 5',
          image: 'assets/content-5.jpg',
          tanggal: '2025-11-25', // Format changed to yyyy-mm-dd
          fasilitas: '3 Betroom, Swimming Pool',
          lokasi: 'Surabaya',
          category: 'Large',
          harga: int.parse('750000000'),
          itinerary: "",
          jenis: "Large"),
      Paket(
          nama: 'Rumah 6',
          image: 'assets/content-6.jpg',
          tanggal: '2025-11-25', // Format changed to yyyy-mm-dd
          fasilitas: '3 Betroom, Swimming Pool',
          lokasi: 'Gresik',
          category: 'Large',
          harga: int.parse('195000'),
          itinerary: "",
          jenis: "Large"),
      Paket(
          nama: 'Rumah 7',
          image: 'assets/content-7.jpg',
          tanggal: '2025-11-25', // Format changed to yyyy-mm-dd
          fasilitas: '3 Betroom, Swimming Pool',
          lokasi: 'Mojokerto',
          category: 'Large',
          harga: int.parse('750000000'),
          itinerary: "",
          jenis: "Large"),
      Paket(
          nama: 'Rumah 8',
          image: 'assets/content-8.jpg',
          tanggal: '2025-11-25', // Format changed to yyyy-mm-dd
          fasilitas: '3 Betroom, Swimming Pool',
          lokasi: 'Pasuruan',
          category: 'Large',
          harga: int.parse('750000000'),
          itinerary: "",
          jenis: "Large"),
      Paket(
          nama: 'Rumah 9',
          image: 'assets/content-9.jpg',
          tanggal: '2025-11-25', // Format changed to yyyy-mm-dd
          fasilitas: '3 Betroom, Swimming Pool',
          lokasi: 'Jombang',
          category: 'Large',
          harga: int.parse('750000000'),
          itinerary: "",
          jenis: "Large"),
      Paket(
          nama: 'rumah 10',
          image: 'assets/content-1.jpg',
          tanggal: '2025-07-01', // Format changed to yyyy-mm-dd
          fasilitas: '3 Betroom, Swimming Pool',
          lokasi: 'Surabaya',
          category: 'Medium',
          harga: int.parse('750000000'),
          itinerary: "",
          jenis: "Medium"),
    ];
    paketList.addAll(initialdata);
  }

  void addPaket(Paket paket) {
    paketList.add(paket);
    paketList.refresh();
  }

  // Perbarui data
  void updatePaket(int index, Paket updatedPaket) {
    if (index < paketList.length) {
      paketList[index] = updatedPaket;
      paketList.refresh();
    }
  }

  // Hapus data
  void deletePaket(int index) {
    if (index < paketList.length) {
      paketList.removeAt(index);
      paketList.refresh();
    }
  }
}
