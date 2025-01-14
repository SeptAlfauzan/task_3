# task_3

Sama seperti projek task 1 dan task 2, projek ini menggunakan module based architecture, pemilihan module based architecture sendiri berdasarkan dari pengalaman pribadi bahwa ketika codebase aplikasi mulai besar dan mempunyai fitur yang mulai banyak, jika projek menggunakan layer based architecture maka akan kesusahan untuk memanage codebase dari projek tersebut.

Berikut merupakan struktur tree folder dari projek ini

```shell
root
└───src
    ├───common
    │   └───domain
    │       └───dto
    ├───extension
    ├───helper
    ├───modules
    │   ├───create_todo
    │   │   ├───data
    │   │   │   └───repositories
    │   │   ├───domain
    │   │   │   ├───dto
    │   │   │   └───repositories
    │   │   └───presentation
    │   │       ├───providers
    │   │       └───widgets
    │   │           ├───atoms
    │   │           ├───molecules
    │   │           └───organism
    │   └───home
    │       ├───data
    │       │   └───repositories
    │       ├───domain
    │       │   ├───dto
    │       │   └───repositories
    │       └───presentation
    │           ├───providers
    │           └───widgets
    │               ├───atoms
    │               ├───molecules
    │               └───organism
    ├───ui
    └───utils
```

pada tiap modules/fitur terdapat folder presentation yang memuat code yang berhubungan dengan widget dan UI. Lalu pada folder widgets sendiri terdiri dari folder atoms, molecules, organism. atoms merupakan susunan terkecil atau dalam projek ini merupakan widget paling kecil yang dapat berdiri sendiri, sedangkan molecules merupakan widget yang tersusun dari satu atau lebih widget dari folder atoms, dan terakhir organism merupakan widget yang tersusun dari 1 atau lebih widget dari folder molecules.

pada projek ini state management yang saya gunakan adalah riverpod, dipadukan dengan package freezed untuk membuat state dan data classnya. setiap provider dari riverpod diletakkan pada folder providers, sedangkan untuk tiap data class saya letakkan di folder domain/dto.

alasan memilih riverpod dibanding statemanagement lain adalah, dengan riverpod codebase lebih mudah dimaintain karena riverpod menggunakan pendekatan deklaratif. Selain itu boiler code dari riverpod sangat sedikit jika dibandingkan dengan statemanagement package yang lain seperti BLoC atau Redux.

untuk implementasinya sendiri seperti pada code di app_bar_pop_up_menu.dart

```dart
if (type != null) {
    ref.read(homeNotifierProvider.notifier).filterTask(type);
}
```

untuk mentrigger method action dari provider menggunakan .read lalu diikuti dengan nama provider dan diakhiri dengan method dari actionnya.

untuk implementasi mengobserve nilai dari state provider, bisa dilihat pada file home_view_content.dart

```dart
final taskState = ref.watch(homeNotifierProvider);
```

dimana menggunakan method watch dan diikuti nama provider yang ingin di observe statenya.

untuk provider yang memiliki beberapa task, agar memudahan managementnya, saya menggunakan class based seperti pada file home_notifier.dart, dan untuk provider yang memiliki satu task saya menggunakan pendekatan function based seperti pada file create_task_provider.dart.

untuk data storage dari todo task, saya menggunakan package sqflite yang mana merupakan package sqlite untuk Flutter. Alasan saya memakai sqlite supaya data dari task user yang telah dibuat, dimark selesai, atau telah dihapus, datanya tetap persistant di mobile phone user. maksutnya data akan tetap sama seperti kondisi akhir dari aplikasi meskipun aplikasinya diclose dari background process atau pun ketika membuka ulang aplikasinya.

beberapa library lain yang saya gunakan:

- json_annotation & json_serializeble: untuk mengubah key value dari Map agar bisa dimapping ke variable
- go_router: untuk routing dan navigasi
- build_runner: untuk code generation
