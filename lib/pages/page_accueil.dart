
import 'package:flutter/material.dart';

class Accueil extends StatelessWidget {
  const Accueil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.add_box_outlined),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          'Instagram',
          style: TextStyle(fontStyle: FontStyle.italic, fontSize: 20),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.ac_unit_sharp),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.add_a_photo_outlined),
            onPressed: () {},
          ),
        ]
      ),
      body: ListView(

        children: [
          // Section des stories
          Container(
            height: 100,


            child: ListView.builder(

              scrollDirection: Axis.horizontal,

              itemCount: 10, // Nombre de stories
              itemBuilder: (context, index) {
                return Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 32, // Augmentez le rayon pour créer un cercle autour de la story
                        backgroundColor: Colors.grey[300], // Couleur du cercle autour de la story
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.grey,
                        backgroundImage: NetworkImage(
                            'https://source.unsplash.com/100x100/?portrait,face'),
                        // Ajoutez l'image de profil ici
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          // Section des posts
          Card(
            child: Container(
              color: Colors.white,
              child: Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://source.unsplash.com/50x50/?portrait,face'),
                      // Ajoutez l'image de profil de l'utilisateur ici
                    ),
                    title: Text('leo_prolo'),
                    subtitle: Text('Franglish, Gasso - Esso Drip'),
                    trailing: Icon(Icons.more_vert),
                  ),
                  Container(
                    height: 300,
                    width: 1000,                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://source.unsplash.com/random/300x300/?nature,water')
                        ,

                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Text("Aimé par claudine et autres personnes. "),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: Icon(Icons.favorite_border),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(Icons.comment),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(Icons.send),
                        onPressed: () {},
                      ),
                      Spacer(),
                      IconButton(
                        icon: Icon(Icons.bookmark_border),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        elevation: 6,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  // Action lorsque l'icône "home" est cliquée
                },
                icon: Icon(Icons.home, color: Colors.black),
              ),
              IconButton(
                onPressed: () {
                  // Action lorsque l'icône "settings" est cliquée
                },
                icon: Icon(Icons.search, color: Colors.black),
              ),
              IconButton(
                onPressed: () {
                  // Action lorsque l'icône "like" est cliquée
                },
                icon: Icon(Icons.favorite, color: Colors.black),
              ),
              IconButton(
                onPressed: () {
                  // Action lorsque l'icône "video" est cliquée
                },
                icon: Icon(Icons.video_library, color: Colors.black),
              ),
              IconButton(
                onPressed: () {
                  // Action lorsque l'icône "photo de profil" est cliquée
                },
                icon: Icon(Icons.account_circle, color: Colors.black),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
