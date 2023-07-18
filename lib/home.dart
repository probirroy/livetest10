import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isPortrait = MediaQuery.orientationOf(context) == Orientation.portrait;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('News Feed',
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
      ),
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
              itemCount: 10,
              scrollDirection: isPortrait ? Axis.vertical : Axis.horizontal,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 4.0,
                  child: Padding(
                    padding: const EdgeInsets.all(9.0),
                    child: Flex(
                      direction: isPortrait ? Axis.horizontal : Axis.vertical,
                      children: [
                        Expanded(
                          flex: isPortrait ? 2 : 4,
                          child: Image.network('https://images.prothomalo.com/prothomalo-english%2F2023-07%2F4effdb28-0f34-4b89-9597-89a46344f2bb%2F2023_07_17T101653Z_1933182510_UP1EJ7H0SK37B_RTRMADP_3_SOCCER_SPAIN_FCB_GUNDOGAN.JPG?rect=0%2C0%2C6000%2C3375&auto=format%2Ccompress&fmt=webp&format=webp&w=940&dpr=1.0',
                            width: MediaQuery.sizeOf(context).width * 0.35,
                            fit: BoxFit.contain,
                          ),
                        ),
                        Expanded(
                          flex: isPortrait ? 3 : 2,
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Gundogan ready for Barca',
                                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                                ),
                                Text('Barcelona’s new midfielder Ilkay Gundogan ready to join the Barcelona',
                                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              }
          )
      ),
    );
  }
}