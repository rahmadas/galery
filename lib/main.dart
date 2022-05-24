import 'package:flutter/material.dart';

void main() {
  runApp(MyGalery());
}

class MyGalery extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ListViewHome(),
    );
  }
}

class ListViewHome extends StatelessWidget {
  var date = DateTime.now();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Galery'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(20, (index) {
          return Container(
            child: Card(
              color: Colors.deepPurpleAccent,
              child: Container(
                alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage('https://blogger.googleusercontent.com/img/a/AVvXsEjSMOIC8Ywux2B_qr9i0NjPuKpFlnyhHXiqjJf2BOjqYARmXgeLJWdO16BSvHzoXO9RvuB5TV0-HxZeFkDb0IqqnnlGxm_vfaJh1CHT--VUEBG7H4seBeZoSbR4w6L17Nv8BToWHw3j_5Dl8wP7ICpRMs6kc3JW1Rs0DcW6FV4F1en7HmedY_xZsL5O'),
                    fit: BoxFit.fitHeight,
                  ),
                ),
                child: ListTile(
                  title: Text(date.day.toString() + '/' + date.month.toString() + '/' + date.year.toString(), style: TextStyle(color: Colors.black87, fontSize: 24.0)),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// void main() {
//   runApp(BelajarGridView());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: BelajarGridView(),
//     );
//   }
// }

// // class BelajarListView extends StatelessWidget {
// //   final List bulan = [
// //     "Januari",
// //     "Fabruari",
// //     "Maret",
// //     "April",
// //     "Mei",
// //     "Juni",
// //     "Juli",
// //     "Agustus",
// //     "September",
// //     "Oktober",
// //     "November",
// //     "Desember"
// //   ];
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text("belajar list view"),
// //       ),
// //       body: ListView.builder(
// //         itemBuilder: (context, index) {
// //           return Card(
// //             child: Padding(
// //               padding: const EdgeInsets.all(15.0),
// //               child: Text(bulan[index], style: TextStyle(fontSize: 30)),
// //             ),
// //           );
// //         },
// //         itemCount: bulan.length,
// //       ),
// //     );
// //   }
// // }

// //
// class BelajarGridView extends StatelessWidget {
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         debugShowCheckedModeBanner: false,
//         home: Scaffold(
//             appBar: AppBar(
//               title: Text("Galery"),
//             ),
//             body: GridView.count(
//                 crossAxisCount: 2,
//                 children: List.generate(20, (index) {
//                   return Container(
//                     child: Card(
//                       child: Image(image: NetworkImage('https://blogger.googleusercontent.com/img/a/AVvXsEjSMOIC8Ywux2B_qr9i0NjPuKpFlnyhHXiqjJf2BOjqYARmXgeLJWdO16BSvHzoXO9RvuB5TV0-HxZeFkDb0IqqnnlGxm_vfaJh1CHT--VUEBG7H4seBeZoSbR4w6L17Nv8BToWHw3j_5Dl8wP7ICpRMs6kc3JW1Rs0DcW6FV4F1en7HmedY_xZsL5O')),
//                       color: Colors.deepPurpleAccent,
//                     ),
//                   );
//                 }))));
//   }
// }
// color
