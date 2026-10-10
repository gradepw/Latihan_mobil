import 'dart:io';
void main(List<String> args) {
    Map pos1 = {'plat' : null};
    Map pos2 = {'plat' : null};
    Map pos3 = {'plat' : null};

    Map wait1 = {'wait' : null};
    Map wait2 = {'wait' : null};
    Map wait3 = {'wait' : null};
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

    stdout.write('Pilih Menu (1/2/3/4/5) :');
    String pilih = stdin.readLineSync()!;

    if (pilih == '5') {
        print('Aplikasi berhasil keluar');
      exit(0);
    }

    if (pilih == '1') {
      stdout.write('Masukkan Plat Nomor : ');
      String plat = stdin.readLineSync()!;

      if (plat == '') {

        print('Tolong di isi Plat nomor');
      } else {

        if (pos1['plat'] == null) {
          pos1['plat'] = plat;
        } else if (pos2['plat'] == null) {
          pos2['plat'] = plat;
        } else if (pos3['plat'] == null) {
          pos3['plat'] = plat;
        } else  {
            print('Mobil akan masuk ke waiting list');

            if (wait1['wait'] == null) {
          wait1['wait'] = plat;
        } else if (wait2['wait'] == null) {
            wait2['wait'] = plat;
        } else if (wait3['wait'] == null) {
            wait3['wait'] = plat;
        }
        }

      }

    } else if (pilih == '3') {

        print('1.${pos1['plat'] ?? ''}');
        print('2.${pos2['plat'] ?? ''}');
        print('3.${pos3['plat'] ?? ''}');

    } else if (pilih == '4') {
        stdout.write('Pilih Pos untuk diselesaikan (1/2/3) : ');
        String pilih4 = stdin.readLineSync()!;

        if (pilih4 == '1') {
          pos1['plat'] = wait1['wait'];
          wait1['wait'] = null;

          if (wait1['wait'] == null) {
          wait1['wait'] = wait2['wait'];
          wait2['wait'] = null;
          }
          if (wait2['wait'] == null) {
            wait2['wait'] = wait3['wait'];
            wait3['wait'] = null;
          }
         if (wait3['wait'] == null) {
            wait3['wait'] = wait3['wait'];
            wait3['wait'] = null;
        }
          print('Pos Telah diupdate');
        } else if (pilih4 == '2') {
          pos2['plat'] = wait1['wait'];
          wait1['wait'] = null;

          if (wait1['wait'] == null) {
          wait1['wait'] = wait2['wait'];
          wait2['wait'] = null;
          }
          if (wait2['wait'] == null) {
            wait2['wait'] = wait3['wait'];
            wait3['wait'] = null;
          }
         if (wait3['wait'] == null) {
            wait3['wait'] = wait3['wait'];
            wait3['wait'] = null;
        }

          print('Pos Telah diupdate');
        } else if (pilih4 == '3') {
          pos3['plat'] = wait1['wait'];
          wait1['wait'] = null;

          if (wait1['wait'] == null) {
          wait1['wait'] = wait2['wait'];
          wait2['wait'] = null;
          }
          if (wait2['wait'] == null) {
            wait2['wait'] = wait3['wait'];
            wait3['wait'] = null;
          }
         if (wait3['wait'] == null) {
            wait3['wait'] = wait3['wait'];
            wait3['wait'] = null;
        }
          print('Pos Telah diupdate');
        } else {
            print('Silahkan Pilih Pos 1/2/3');
        }
    } else if (pilih == '2') {
        print('1.${wait1['wait'] ?? ''}');
        print('2.${wait2['wait'] ?? ''}');
        print('3.${wait3['wait'] ?? ''}');
    }
  }
}