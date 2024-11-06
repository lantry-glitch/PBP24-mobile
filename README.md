## Tugas 7
#### Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.
Stateless Widget adalah widget yang tidak memiliki status internal atau data yang dapat berubah setelah pertama kali dibangun. Tampilan stateless widget akan tetap sama dan tidak terpengaruh oleh perubahan status atau interaksi pengguna. Contoh dari stateless widget adalah `Container`, `Icon`, dan `Text`, yang biasanya digunakan untuk elemen UI yang bersifat statis.

Stateful Widget adalah widget yang memiliki status atau data yang dapat diperbarui saat aplikasi berjalan. Ini memungkinkan tampilan widget tersebut untuk berubah ketika ada perubahan data atau interaksi pengguna. Stateful widget sering digunakan untuk elemen yang memerlukan interaksi atau perubahan, seperti `Slider`, `TextField`, dan `Checkbox`. Perbedaan utama di antara keduanya adalah bahwa stateless widget selalu tetap sama setelah dirender, sementara stateful widget dapat memperbarui tampilannya sesuai perubahan status atau data.
#### Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.
Berikut adalah widget yang digunakan dalam proyek ini beserta fungsinya:
- Text: Digunakan untuk menampilkan teks pada layar.
- Column: Menyusun widget anak secara vertikal, sehingga tampilan widget dapat diatur berurutan dari atas ke bawah.
- Center: Memposisikan widget anak di tengah dari widget induknya.
- Icon: Menampilkan ikon dari pustaka ikon bawaan Flutter, yang sering digunakan untuk menambahkan simbol visual.
- Container: Widget serbaguna yang dapat digunakan untuk mengatur tata letak, ukuran, padding, dan dekorasi dari widget lainnya.
- Padding: Menambahkan ruang di sekitar widget anak untuk memberikan jarak antar elemen.
- Scaffold: Memberikan kerangka dasar untuk halaman, termasuk struktur AppBar dan body.
- AppBar: Menyediakan bagian atas halaman untuk menampilkan judul aplikasi atau elemen kontrol lainnya.
- Card: Menyediakan kotak dengan efek bayangan untuk menampilkan konten dengan lebih menarik dan rapi.
- SnackBar: Menampilkan pesan singkat di bagian bawah layar sebagai notifikasi sementara yang memberi umpan balik kepada pengguna.
- MediaQuery: Menyediakan informasi tentang ukuran layar dan orientasi, yang berguna untuk menyesuaikan tampilan sesuai perangkat.
- InfoCard: Kartu informasi khusus yang menampilkan judul dan konten tertentu untuk keperluan tampilan informasi.
- StatelessWidget: Widget yang tidak memiliki status internal dan hanya perlu dirender sekali.
- List: Digunakan untuk menyimpan kumpulan item atau data yang akan ditampilkan dalam aplikasi.
- ItemHomepage: Kelas khusus yang berfungsi untuk menyimpan informasi item pada halaman utama aplikasi, seperti nama dan ikon untuk setiap item.

#### Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
Fungsi `setState()` digunakan pada Stateful Widget untuk memberi tahu Flutter bahwa terdapat perubahan status atau data dalam widget tersebut. Dengan memanggil `setState()`, Flutter akan mengetahui bahwa tampilan widget perlu diperbarui, dan akan menjalankan ulang metode `build()` pada widget itu untuk menyesuaikan tampilan dengan status terbaru.

Variabel-variabel yang dapat terpengaruh oleh `setState()` adalah variabel yang dideklarasikan di dalam kelas `State`, yang mengelola status di widget tersebut. Biasanya, variabel ini terkait dengan status atau tampilan UI, seperti input teks, nilai toggle, atau status checkbox. Sebagai contoh, sebuah variabel yang menentukan status aktif/tidak aktif dari sebuah tombol bisa diatur melalui `setState()`, yang kemudian memperbarui tampilan sesuai status terbaru.

#### Jelaskan perbedaan antara const dengan final.
`const` dan `final` adalah kata kunci yang digunakan untuk mendeklarasikan variabel konstan di Dart. Perbedaan antara keduanya adalah:
const: Digunakan untuk membuat variabel konstan yang sudah diketahui nilainya saat kompilasi. Variabel yang menggunakan `const` hanya dapat diatur pada waktu kompilasi dan akan tetap konstan sepanjang waktu eksekusi aplikasi. Contohnya, `List` atau `Map` yang didefinisikan dengan `const` akan memiliki elemen yang tetap sepanjang aplikasi.

final: Digunakan untuk variabel yang nilainya hanya bisa diatur sekali tetapi tidak perlu ditentukan saat kompilasi. Variabel `final` dapat ditentukan selama waktu eksekusi dan memungkinkan nilai diatur pada saat runtime, seperti hasil perhitungan atau data yang didapat dari sebuah API.

#### Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas.
1. Membuat repository github baru dan menginisialisasi proyek Flutter.
2. Membuat 3 tombol dengan membuat 3 widget StatelessWidget. Membuat ItemHomepage untuk menyimpan informasi item. Membuat List untuk menyimpan daftar item. Listnya berisi 3 item yang dibuat dengan ItemHomepage.

```dart
class ItemHomepage {
  final String name;
  final IconData icon;
  final Color iconColor;
  final Color backgroundColor;

  ItemHomepage(this.name, this.icon, this.backgroundColor, this.iconColor);
}
```

3. Warna latar belakang setiap item diubah dari `color:` menggunakan `item.backgroundColor`. Lalu menambah parameter backgroundColor pada ItemHomepage, dan menambahkan warna latar belakang pada setiap item.

4. Memunculkan SnackBar ketika item ditekan. Menambahkan `onPressed` pada `ElevatedButton` untuk menampilkan SnackBar ketika tombol ditekan.
