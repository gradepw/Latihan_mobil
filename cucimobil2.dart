import 'dart:io';

void main(List<String> args) {

  List waiting = [];
  Map pos1 = {['plat'] : null };
  Map pos2 = {['plat'] : null };
  Map pos3 = {['plat'] : null };

  while (true) {
    print('========================');
    print('Jasa Pencucian Mobil');
    print('========================');
    print('1.Tambah Antrian');
    print('2.Liat Waiting List');
    print('3.Lihat Pos');
    print('4.Selesaikan Pos');
    print('5.Keluar');
    print('========================');

    stdout.write('Pilih Pilihan (1/2/3/4/5):');
    String pilih = stdin.readLineSync()!;

    if (pilih == '1') {
      stdout.write('Input KB :');
      String inputkb = stdin.readLineSync()!;

      if (pos1['plat'] == null) {
        pos1['plat'] = inputkb;
      } else if (pos2['plat'] == null) {
        pos2['plat'] = inputkb;
      } else if (pos3['plat'] == null) {
        pos3['plat'] = inputkb;
      } else if (pos1['plat'] != null && pos2['plat'] != null && pos3['plat'] != null) {
         waiting.add(inputkb);
      }

    } else if (pilih == '2') {
      for (var i = 0; i < waiting.length; i++) {
         if (i <= 2){
          print('${i+1}. : ${waiting[i]}');
         } else {
          print('maaf sudah penuh');
         }
        }
    } else if (pilih == '5') {
      exit(0);
    } else if (pilih == '4') {
      stdout.write('Pilih mana yang mau dihapus');
      String hapus = stdin.readLineSync()!;

      if (hapus == '1') {
        pos1['plat'] = null;
        if (waiting.isNotEmpty) {
          pos1['plat'] = waiting[0];
          waiting.removeAt(0);
        }
      } else if (hapus =='2'){
        pos2['plat'] = null;
        if (waiting.isNotEmpty) {
          pos2['plat'] = waiting[0];
          waiting.removeAt(0);
        }
      } else if (hapus == '3') {
        pos3['plat'] = null;
        if (waiting.isNotEmpty) {
          pos3['plat'] = waiting[0];
          waiting.removeAt(0);
        };
      } 
    } else if (pilih == '3') {
      print('1.${pos1['plat'] ?? ''}');
      print('2.${pos2['plat'] ?? ''}');
      print('3.${pos3['plat'] ?? ''}');
    }
  }
}