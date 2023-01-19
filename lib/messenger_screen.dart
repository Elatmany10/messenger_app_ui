import 'package:flutter/material.dart';

class MessengerScreen extends StatelessWidget {
  const MessengerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Icon(
          Icons.menu,
          color: Colors.blue,
        ),
        title: const Text("Chats", style: TextStyle(color: Colors.black)),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: CircleAvatar(
                child: Icon(
              Icons.edit,
              color: Colors.white,
            )),
          ),
        ],
      ),
      body: Container(
          width: double.infinity,
          child: Column(
            children: [
              Container(
                clipBehavior: Clip.antiAlias,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    fillColor: Colors.grey[300],
                    filled: true,
                    prefixIcon: const Icon(Icons.search),
                    border: InputBorder.none,
                  ),
                ),
              ),
              Container(
                height: 110,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (ctx, index) => _buildStoryItem(name: stories[index]["name"],image:stories[index]["image"] ),
                  itemCount: stories.length,
                ),
              ),
              Expanded(
                child: ListView.separated(
                  itemBuilder: (context, index) => _buildChatItem(
                    name: chats[index]["name"],
                    message: chats[index]["message"],
                    image:chats[index]["image"],
                  ),
                  separatorBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: double.infinity,
                      height: 2,
                      color: Colors.blueGrey[200],
                    ),
                  ),
                  itemCount: chats.length,
                ),
              ),
            ],
          )),
    );
  }

  Widget _buildStoryItem({required String name,required String image}) => Padding(
        padding: const EdgeInsets.all(7.0),
        child: Column(
          children: [
            Stack(
              alignment: Alignment.bottomRight,
              children:  [
                CircleAvatar(
                  radius: 37,
                  backgroundImage: NetworkImage(image),
                ),
                const Padding(
                  padding: EdgeInsets.all(6),
                  child: CircleAvatar(
                    radius: 9,
                    backgroundColor: Colors.white,
                  ),
                ),
               const Padding(
                  padding: EdgeInsets.all(8),
                  child: CircleAvatar(
                    radius: 7,
                    backgroundColor: Colors.lightGreen,
                  ),
                ),
              ],
            ),
             Text(
              name,
              style:const TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      );

  Widget _buildChatItem({required String name,required String image,required String message,}) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Stack(
              alignment: Alignment.bottomRight,
              children:  [
                CircleAvatar(
                  radius: 37,
                  backgroundImage: NetworkImage(image),
                ),
                const Padding(
                  padding: EdgeInsets.all(6),
                  child: CircleAvatar(
                    radius: 9,
                    backgroundColor: Colors.white,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8),
                  child: CircleAvatar(
                    radius: 7,
                    backgroundColor: Colors.lightGreen,
                  ),
                ),
              ],
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Text(
                      name,
                      style:const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text(
                      message,
                      style: TextStyle(fontSize: 18, color: Colors.grey[600]),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
}


List<Map<String,dynamic>> stories=[
  {
    "name":"Ahmed",
    "image":"https://qc.yaschools.com/img/anonymous.jpg",
  },
  {
    "name":"Omar",
    "image":"https://qc.yaschools.com/img/anonymous.jpg",
  },
  {
    "name":"Ali",
    "image":"https://qc.yaschools.com/img/anonymous.jpg",
  },
  {
    "name":"Ali",
    "image":"https://qc.yaschools.com/img/anonymous.jpg",
  },
  {
    "name":"Ali",
    "image":"https://qc.yaschools.com/img/anonymous.jpg",
  },
  {
    "name":"Ali",
    "image":"https://qc.yaschools.com/img/anonymous.jpg",
  },
];

List<Map<String,dynamic>> chats=[
  {
    "name":"Ahmed",
    "image":"https://qc.yaschools.com/img/anonymous.jpg",
    "message":"hello Ahmed how are you dod call me please"
  },
  {
    "name":"Karim",
    "image":"https://qc.yaschools.com/img/anonymous.jpg",
    "message":"hello Ahmed how are you dod call me please"
  },
  {
    "name":"Hani",
    "image":"https://qc.yaschools.com/img/anonymous.jpg",
    "message":"hello Ahmed how are you dod call me please"
  },
  {
    "name":"Mohamed",
    "image":"https://qc.yaschools.com/img/anonymous.jpg",
    "message":"hello Ahmed how are you dod call me please"
  },
  {
    "name":"Ali",
    "image":"https://qc.yaschools.com/img/anonymous.jpg",
    "message":"hello Ahmed how are you dod call me please"
  },

];