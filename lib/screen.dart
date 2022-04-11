import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _drawerHeader(),
          _drawerItem(
              icon: Icons.inbox,
              text: 'Inbox',
              onTap: () {
                Navigator.pushNamed(context, '/inbox');
              }),
          _drawerItem(
              icon: Icons.send,
              text: 'Outbox',
              onTap: () {
                Navigator.pushNamed(context, '/outbox');
              }),
          _drawerItem(
              icon: Icons.report,
              text: 'Spam',
              onTap: () {
                Navigator.pushNamed(context, '/spam');
              }),
          _drawerItem(
              icon: Icons.question_answer,
              text: 'Forums',
              onTap: () {
                Navigator.pushNamed(context, '/forum');
              }),
          _drawerItem(
              icon: Icons.announcement,
              text: 'Promos',
              onTap: () {
                Navigator.pushNamed(context, '/promos');
              }),
        ],
      ),
    );
  }
}

Widget _drawerHeader() {
  return UserAccountsDrawerHeader(
    decoration: BoxDecoration(color: Colors.green[100]),
    currentAccountPicture: ClipOval(
      child: Image(image: AssetImage('assets/images/bw22.jpg'), fit: BoxFit.cover),
    ),
    otherAccountsPictures: [
      ClipOval(
        child: Image(image: AssetImage('assets/images/2.jpg'), fit: BoxFit.cover),
      ),
    ],
    accountName: Text('Nadia', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 17)),
    accountEmail: Text('nahdhiyyah13@gmail.com', style: TextStyle(color: Colors.black)),
  );
}

Widget _drawerItem({required IconData icon, required String text, required GestureTapCallback onTap}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(icon),
        Padding(
          padding: EdgeInsets.only(left: 25.0),
          child: Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    ),
    onTap: onTap,
  );
}

class Inbox extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  final List<String> gambar = [
    "assets/images/bw4.jpg",
    "assets/images/bw5.jpg",
    "assets/images/bw6.jpg",
    "assets/images/bw7.jpg",
    "assets/images/bw8.jpg",
    "assets/images/bw9.jpg",
    "assets/images/bw10.jpg",
    "assets/images/bw11.jpg",
    "assets/images/bw12.jpg",
    "assets/images/bw13.jpg",
    "assets/images/bw14.jpg",
    "assets/images/bw15.jpg",
    "assets/images/bw16.jpg",
    "assets/images/bw17.jpg",
    "assets/images/bw18.jpg",
    "assets/images/bw19.jpg",
    "assets/images/bw20.jpg",
    "assets/images/bw21.jpg",
  ];

  final List nama = [
    "Montse Hall",
    "Albert Lives",
    "Imma Mustard",
    "Danny Pej",
    "Montse Hall",
    "Albert Lives",
    "Imma Mustard",
    "Danny Pej",
    "Montse Hall",
    "Albert Lives",
    "Imma Mustard",
    "Danny Pej",
    "Montse Hall",
    "Albert Lives",
    "Imma Mustard",
    "Danny Pej",
    "Imma Mustard",
    "Danny Pej",
  ];
  final List title = [
    "Hello there!!",
    "Important News",
    "Weekend Meeting",
    "Material Design",
    "Hello there!!",
    "Important News",
    "Weekend Meeting",
    "Material Design",
    "Hello there!!",
    "Important News",
    "Weekend Meeting",
    "Material Design",
    "Hello there!!",
    "Important News",
    "Weekend Meeting",
    "Material Design",
    "Weekend Meeting",
    "Material Design",
  ];
  final List isi = [
    "Has been a long time...",
    "That is awesome!! Take a look...",
    "Can you meet this weekend?...",
    "There is the new widget libary...",
    "Has been a long time...",
    "That is awesome!! Take a look...",
    "Can you meet this weekend?...",
    "There is the new widget libary...",
    "Has been a long time...",
    "That is awesome!! Take a look...",
    "Can you meet this weekend?...",
    "There is the new widget libary...",
    "Has been a long time...",
    "That is awesome!! Take a look...",
    "Can you meet this weekend?...",
    "There is the new widget libary...",
    "Can you meet this weekend?...",
    "There is the new widget libary...",
  ];
  final List time = [
    "2h",
    "yesterdey",
    "5h",
    "10m",
    "2h",
    "yesterdey",
    "5h",
    "10m",
    "2h",
    "yesterdey",
    "5h",
    "10m",
    "2h",
    "yesterdey",
    "5h",
    "10m",
    "5h",
    "10m",
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: Scaffold(
          key: _scaffoldKey,
          appBar: AppBar(
            title: Center(
              child: Text(
                'Inbox',
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {
                  _scaffoldKey.currentState!.openEndDrawer();
                },
                icon: Icon(Icons.search),
              )
            ],
            backgroundColor: Colors.green[100],
          ),
          body: ListView.separated(
            padding: EdgeInsets.all(10),
            separatorBuilder: (context, index) {
              return Divider(height: 25, thickness: 1);
            },
            itemCount: gambar.length,
            itemBuilder: (context, index) {
              return Container(
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage(
                      gambar[index],
                    ),
                  ),
                  title: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(nama[index], style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                          Text(
                            time[index],
                            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black38),
                          ),
                        ],
                      ),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: <Widget>[
                        Text('' + isi[index], style: TextStyle(color: Colors.black38)),
                      ]),
                    ],
                  ),
                  subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('' + title[index]),
                      Icon(Icons.star_border, color: Colors.black38),
                    ],
                  ),
                ),
              );
            },
          ),
        ));
  }
}

class Outbox extends StatelessWidget {
  final List<String> gambar = [
    "assets/images/bw4.jpg",
    "assets/images/bw5.jpg",
    "assets/images/bw6.jpg",
    "assets/images/bw7.jpg",
    "assets/images/bw8.jpg",
    "assets/images/bw9.jpg",
    "assets/images/bw10.jpg",
    "assets/images/bw11.jpg",
    "assets/images/bw12.jpg",
    "assets/images/bw13.jpg",
    "assets/images/bw14.jpg",
    "assets/images/bw15.jpg",
    "assets/images/bw16.jpg",
    "assets/images/bw17.jpg",
    "assets/images/bw18.jpg",
    "assets/images/bw19.jpg",
    "assets/images/bw20.jpg",
    "assets/images/bw21.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[100],
        title: Text("Outbox"),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(
          gambar.length,
          (index) {
            return Card(
              child: Image.asset(
                gambar[index],
                width: 150,
                height: 150,
                fit: BoxFit.cover,
              ),
            );
          },
        ),
      ),
    );
  }
}

class Spam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[100],
        title: Text("Spam"),
      ),
      body: Container(
          child: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Padding(padding: EdgeInsets.all(10)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(children: [
                ButtonTheme(
                    minWidth: 125,
                    child: ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(primary: Colors.grey[50], onPrimary: Colors.black),
                        label: Text("Phone"),
                        icon: Icon(Icons.call),
                        onPressed: () {
                          Navigator.pushNamed(context, '/profil');
                        }))
              ]),
              Column(children: [
                ButtonTheme(
                    minWidth: 125,
                    child: ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(primary: Colors.grey[50], onPrimary: Colors.black),
                        label: Text("Email"),
                        icon: Icon(Icons.email),
                        onPressed: () {
                          Navigator.pushNamed(context, '/profil');
                        }))
              ]),
            ],
          ),
          Padding(padding: EdgeInsets.all(20)),
          TextFormField(
            cursorColor: Colors.black12,
            decoration: new InputDecoration(
              hintText: "tulis nama lengkap",
              labelText: "Full Name",
              labelStyle: TextStyle(color: Colors.black),
              icon: Icon(Icons.people, color: Colors.black),
              enabledBorder: OutlineInputBorder(borderRadius: new BorderRadius.circular(5.0), borderSide: BorderSide(color: Colors.grey)),
              focusedBorder: OutlineInputBorder(borderRadius: new BorderRadius.circular(5.0), borderSide: BorderSide(color: Colors.black)),
            ),
          ),
          Padding(padding: EdgeInsets.all(10)),
          TextFormField(
            cursorColor: Colors.black12,
            decoration: new InputDecoration(
              hintText: "tulis nomor handphone",
              labelText: "Phone",
              labelStyle: TextStyle(color: Colors.black),
              icon: Icon(Icons.call, color: Colors.black),
              enabledBorder: OutlineInputBorder(borderRadius: new BorderRadius.circular(5.0), borderSide: BorderSide(color: Colors.grey)),
              focusedBorder: OutlineInputBorder(borderRadius: new BorderRadius.circular(5.0), borderSide: BorderSide(color: Colors.black)),
            ),
          ),
          Padding(padding: EdgeInsets.all(10)),
          TextFormField(
            cursorColor: Colors.black12,
            decoration: new InputDecoration(
              hintText: "tulis alamat email",
              labelText: "Email",
              labelStyle: TextStyle(color: Colors.black),
              icon: Icon(Icons.email, color: Colors.black),
              enabledBorder: OutlineInputBorder(borderRadius: new BorderRadius.circular(5.0), borderSide: BorderSide(color: Colors.grey)),
              focusedBorder: OutlineInputBorder(borderRadius: new BorderRadius.circular(5.0), borderSide: BorderSide(color: Colors.black)),
            ),
          ),
          Padding(padding: EdgeInsets.all(10)),
          TextFormField(
            cursorColor: Colors.black12,
            decoration: new InputDecoration(
              hintText: "tulis pesan",
              labelText: "Pesan",
              labelStyle: TextStyle(color: Colors.black),
              icon: Icon(Icons.chat, color: Colors.black),
              enabledBorder: OutlineInputBorder(borderRadius: new BorderRadius.circular(5.0), borderSide: BorderSide(color: Colors.grey)),
              focusedBorder: OutlineInputBorder(borderRadius: new BorderRadius.circular(5.0), borderSide: BorderSide(color: Colors.black)),
            ),
          ),
          Padding(padding: EdgeInsets.all(10)),
          ElevatedButton(
            onPressed: () => print("Data anda telah terekam"),
            child: Text("Submit"),
            style: ElevatedButton.styleFrom(primary: Colors.black),
          ),
          Padding(padding: EdgeInsets.all(10)),
          Text(
            "Anda dapat menghubungi kami dengan mengirim pesan email atau melakukan panggilan melalui kontak yang telah disediakan",
            style: TextStyle(fontSize: 15, color: Colors.grey),
          )
        ],
      )),
    );
  }
}

class Forums extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[100],
          title: Text('Forums'),
        ),
        body: new Container(
            padding: EdgeInsets.all(20),
            child: ListView(
              children: [
                Center(
                  child: Text("Information", style: TextStyle(color: Colors.black38, fontWeight: FontWeight.bold, fontSize: 25)),
                ),
                Padding(padding: EdgeInsets.all(10)),
                Text("     Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
                Padding(padding: EdgeInsets.all(10)),
                Text("     It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)."),
                Padding(padding: EdgeInsets.all(10)),
                Text("     There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.")
              ],
            )));
  }
}

class Promos extends StatelessWidget {
  final List<String> gambar = [
    "assets/images/bw4.jpg",
    "assets/images/bw5.jpg",
    "assets/images/bw6.jpg",
    "assets/images/bw7.jpg",
    "assets/images/bw8.jpg",
    "assets/images/bw9.jpg",
    "assets/images/bw10.jpg",
    "assets/images/bw11.jpg",
    "assets/images/bw12.jpg",
    "assets/images/bw13.jpg",
    "assets/images/bw14.jpg",
    "assets/images/bw15.jpg",
    "assets/images/bw16.jpg",
    "assets/images/bw17.jpg",
    "assets/images/bw18.jpg",
    "assets/images/bw19.jpg",
    "assets/images/bw20.jpg",
    "assets/images/bw21.jpg",
  ];

  final List<String> sub = [
    "Forest",
    "Mountains",
    "Hill",
    "Dream",
    "Dream Field",
    "Boat",
    "Alone",
    "Mysterious",
    "Stop",
    "End of The Road",
    "Shut",
    "Forest Park",
    "Tunnel",
    "Rose Friend",
    "Rainy",
    "Praying",
    "Praying 2",
    "Reciting",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Promos"),
        backgroundColor: Colors.green[100],
      ),
      body: GridView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: gambar.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Image.asset(
                gambar[index],
                height: 150,
                width: 200,
                fit: BoxFit.cover,
              ),
              subtitle: Text(
                sub[index],
                style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
          );
        },
      ),
    );
  }
}
