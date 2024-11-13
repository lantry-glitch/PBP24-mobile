## Tugas 8
#### 1. Apa kegunaan `const` di Flutter? Jelaskan apa keuntungan ketika menggunakan `const` pada kode Flutter. Kapan sebaiknya kita menggunakan `const`, dan kapan sebaiknya tidak digunakan?
Di Flutter, kata kunci const digunakan untuk mendeklarasikan variabel yang bersifat konstan. Penggunaan const memungkinkan pembuatan widget yang tetap tidak berubah dan tidak memerlukan pembaruan status. Widget yang dideklarasikan dengan const diperlakukan sebagai widget yang sama saat proses rebuild, sehingga Flutter tidak akan menggambar ulang widget tersebut. Hal ini membantu meningkatkan kinerja aplikasi dengan mengurangi waktu yang dibutuhkan untuk me-render ulang widget yang tidak mengalami perubahan.

#### 2. Jelaskan dan bandingkan penggunaan Column dan Row pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!
Perbandingan dan Penjelasan Column dan Row di Flutter:
Column dan Row adalah widget tata letak dasar di Flutter yang digunakan untuk menyusun widget anak secara berurutan. Perbedaan utama antara keduanya adalah arah penyusunan widget.

Column:
-Menyusun widget anak dalam arah vertikal, dari atas ke bawah.
-Widget disusun sesuai urutan penambahan; widget pertama di atas, diikuti oleh widget berikutnya.
-Jika jumlah widget melebihi tinggi layar, dapat ditempatkan dalam SingleChildScrollView untuk di-scroll.
-Contoh penggunaan Column: menyusun daftar item vertikal seperti daftar tugas atau daftar kontak.
Contoh Implementasi Column:

```dart
Column(
  children: <Widget>[
    Text('Item 1'),
    Text('Item 2'),
    Text('Item 3'),
  ],
)
```

Row:
-Menyusun widget anak dalam arah horizontal, dari kiri ke kanan.
-Widget ditempatkan sesuai urutan penambahan; widget pertama di kiri, diikuti oleh widget berikutnya.
-Jika jumlah widget melebihi lebar layar, dapat ditempatkan dalam SingleChildScrollView agar dapat di-scroll.
-Contoh penggunaan Row: menyusun elemen horizontal seperti tombol tindakan atau menu navigasi.
Contoh Implementasi Row:

```dart
Row(
  children: <Widget>[
    Text('Item 1'),
    Text('Item 2'),
    Text('Item 3'),
  ],
)
```

#### 3. Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!
Elemen input yang digunakan pada halaman form:
Pada halaman form yang saya buat, elemen input yang digunakan meliputi:

TextFormField: berfungsi sebagai input teks yang menerima data dari pengguna.
ElevatedButton: digunakan sebagai tombol yang dapat ditekan oleh pengguna.
Form: digunakan untuk mengelompokkan elemen-elemen input agar menjadi satu kesatuan form.
SingleChildScrollView: dipakai untuk memungkinkan tata letak di-scroll jika elemen input melebihi tinggi layar.
AlertDialog: digunakan untuk menampilkan kotak dialog konfirmasi setelah form dikirimkan.
Apakah ada elemen input Flutter lain yang tidak digunakan dalam tugas ini?
Ya, terdapat beberapa elemen input Flutter yang tidak digunakan, seperti Checkbox, Radio, DropdownButton, dan Slider, yang bisa digunakan untuk interaksi yang lebih spesifik.

#### 4. Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?
Untuk menjaga konsistensi tema dalam aplikasi Flutter, saya menggunakan ThemeData di dalam MaterialApp. ThemeData memungkinkan pengaturan warna, tipografi, dan gaya yang digunakan secara global dalam aplikasi, sehingga tampilan aplikasi tetap seragam.

Contoh penerapan tema dengan ThemeData:


```dart
MaterialApp(
      title: 'Parking',
      theme: ThemeData(
        colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: Colors.black,
          onPrimary: Colors.white,
          secondary: Colors.grey,
          onSecondary: Colors.white,
          background: Colors.white,
          onBackground: Colors.black,
          surface: Colors.grey,
          onSurface: Colors.black,
          error: Colors.red,
          onError: Colors.white,
        ),
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
        ),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Colors.black),
          bodyMedium: TextStyle(color: Colors.black),
          bodySmall: TextStyle(color: Colors.black),
        ),
      ),
      home: MyHomePage(),
    );
```

#### 5. Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?
Navigasi antar halaman dalam aplikasi Flutter dapat dikelola dengan menggunakan Navigator dan Route. Navigator berfungsi untuk mengatur tumpukan halaman (routes), sedangkan Route menentukan halaman mana yang akan ditampilkan. Berikut contoh penggunaan Navigator untuk berpindah ke halaman lain:

Contoh navigasi dengan Navigator:

```dart
Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => SecondPage()),
);
```
Dengan pendekatan ini, aplikasi dapat berpindah antara halaman secara efektif dan terstruktur.


## Tugas 7
#### 1. Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.
Stateless Widget adalah widget yang tidak memiliki status internal atau data yang dapat berubah setelah pertama kali dibangun. Tampilan stateless widget akan tetap sama dan tidak terpengaruh oleh perubahan status atau interaksi pengguna. Contoh dari stateless widget adalah `Container`, `Icon`, dan `Text`, yang biasanya digunakan untuk elemen UI yang bersifat statis.

Stateful Widget adalah widget yang memiliki status atau data yang dapat diperbarui saat aplikasi berjalan. Ini memungkinkan tampilan widget tersebut untuk berubah ketika ada perubahan data atau interaksi pengguna. Stateful widget sering digunakan untuk elemen yang memerlukan interaksi atau perubahan, seperti `Slider`, `TextField`, dan `Checkbox`. Perbedaan utama di antara keduanya adalah bahwa stateless widget selalu tetap sama setelah dirender, sementara stateful widget dapat memperbarui tampilannya sesuai perubahan status atau data.
#### 2. Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.
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

#### 3. Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
Fungsi `setState()` digunakan pada Stateful Widget untuk memberi tahu Flutter bahwa terdapat perubahan status atau data dalam widget tersebut. Dengan memanggil `setState()`, Flutter akan mengetahui bahwa tampilan widget perlu diperbarui, dan akan menjalankan ulang metode `build()` pada widget itu untuk menyesuaikan tampilan dengan status terbaru.

Variabel-variabel yang dapat terpengaruh oleh `setState()` adalah variabel yang dideklarasikan di dalam kelas `State`, yang mengelola status di widget tersebut. Biasanya, variabel ini terkait dengan status atau tampilan UI, seperti input teks, nilai toggle, atau status checkbox. Sebagai contoh, sebuah variabel yang menentukan status aktif/tidak aktif dari sebuah tombol bisa diatur melalui `setState()`, yang kemudian memperbarui tampilan sesuai status terbaru.

#### 4. Jelaskan perbedaan antara const dengan final.
`const` dan `final` adalah kata kunci yang digunakan untuk mendeklarasikan variabel konstan di Dart. Perbedaan antara keduanya adalah:
const: Digunakan untuk membuat variabel konstan yang sudah diketahui nilainya saat kompilasi. Variabel yang menggunakan `const` hanya dapat diatur pada waktu kompilasi dan akan tetap konstan sepanjang waktu eksekusi aplikasi. Contohnya, `List` atau `Map` yang didefinisikan dengan `const` akan memiliki elemen yang tetap sepanjang aplikasi.

final: Digunakan untuk variabel yang nilainya hanya bisa diatur sekali tetapi tidak perlu ditentukan saat kompilasi. Variabel `final` dapat ditentukan selama waktu eksekusi dan memungkinkan nilai diatur pada saat runtime, seperti hasil perhitungan atau data yang didapat dari sebuah API.

#### 5. Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas.
#### Membuat repositori baru
1. **Membuat repository github baru bernama `PBP24-mobile`.**
2. **Membuat direktori lokal dan melakukan git init.**
3. **Konfigurasi dengan git config.**
4. **Menghubungkan direktori lokal dengan github.**

#### Membuat Program Flutter Baru Bertema E-Commerce
1. **Inisiasi Flutter Project melalui VS Code:**
2. **Membuat Flutter Project dengan nama `parking`.**
3. **Masuk ke codebase.**
4. **Membuat `main.dart` sebagai layout utama** dan `menu.dart` untuk menyimpan menu-menu yang akan ditampilkan di halaman utama.
5. **Menjalankan aplikasi** dengan perintah berikut:
   ```bash
   flutter run
   ```

#### Membuat Tiga Tombol Sederhana dengan Ikon dan Teks
1. **Membuat widget `ItemHomepage` dan `ItemCard`** yang akan digunakan secara modular untuk menampilkan tombol.
   ```dart
   class ItemHomepage {
    final String name;
    final IconData icon;
  
    ItemHomepage(this.name, this.icon);}
  ```
  
  class InfoCard extends StatelessWidget {
    final String title;
    final String content;
  
    const InfoCard({super.key, required this.title, required this.content});
  
    @override
    Widget build(BuildContext context) {
      return Card(
        color: Colors.grey[300],
         ...
       );
     }
   }
   ```

2. **Membuat array `items`:**
   ```dart
   final List<ItemHomepage> items = [
      ItemHomepage("Lihat Daftar Produk", Icons.shopping_bag),
      ItemHomepage("Tambah Produk", Icons.add),
      ItemHomepage("Logout", Icons.logout),
    ];
   ```

3. **Memanggil komponen `ItemHomePage` di widget utama `HomePage`:**
   ```dart
   ...
   GridView.count(
      primary: true,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 3,
      shrinkWrap: true,
      children: items.map((ItemHomepage item) {
        return ItemCard(item);
      }).toList(),
     ),
   ),
   ...
   ```

#### Mengimplementasikan Warna-Warna Berbeda untuk Setiap Tombol (Lihat Daftar Produk, Tambah Produk, dan Logout)
1. **Inisiasi warna berbeda untuk setiap tombol:**
   ```dart
    Widget build(BuildContext context) {
      return Card(
        color: Colors.grey[300]
        )}
   ```
2. **Menggunakan warna pada `ItemCard`:**
   ```dart
   ...
   @override
   Widget build(BuildContext context) {
     return Material(
       color: item.color,
       ...
     );
   }
   ```

#### Menampilkan Snackbar dengan Pesan
Menambahkan logika `onTap` pada masing-masing `ItemCard` untuk menampilkan pesan snackbar.

```dart
onTap: () {
  ScaffoldMessenger.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(SnackBar(
        content: Text("Kamu telah menekan tombol ${item.name}!")));
},
```

Pesan snackbar yang muncul akan otomatis mengikuti nama item yang diberikan.
