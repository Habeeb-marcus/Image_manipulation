// import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
// import 'package:transparent_image/transparent_image.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      // backgroundColor: Color.fromARGB(255, 230, 230, 236),
      // appBar: AppBar(
      //   title: Text(widget.title),
      // ),
      body: SafeArea(
        child: Padding(
          padding:const EdgeInsets.symmetric(
            horizontal: 20
          ),
          child: Column(
            children: [
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: height * 0.03,
                    ),
                  const Text(
                       'Welcome',
                       textAlign: TextAlign.start,
                       style: TextStyle(
                         fontSize: 25,
                         fontWeight: FontWeight.bold,
                         // color: Colors.
                       ),
                     ),
                  const SizedBox(
                      height: 5,
                     ),
                    const Text(
                      'What would you like to listen to today?',
                    ),
                      const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                       Text('Originals',
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 17
                        ),),
              
                        Icon(Icons.arrow_forward_ios,
                        size: 15,)
                      ],
                    ),
              
                
                 
                    // Image.network('https://picsum.photos/250?image=9'),
                    //  Image.network also suppport GIF
                    // using placeholder and animating images when loading.
                    // using Transparent image package
                
                    // Stack(children: [
                    //   Center(
                    //     child: CircularProgressIndicator(),
                    //   ),
                    //   FadeInImage.memoryNetwork(
                    //     placeholder: kTransparentImage,
                    //     image: 'https://picsum.photos/250?image=9',
                    //   ),
                    // ]),
                
                    // Using cahched network image package
                    // CachedNetworkImage(
                    //   placeholder: (context, url) => const CircularProgressIndicator(),
                    //   imageUrl: 'https://picsum.photos/250?image=9',
                    // )
                
                    // Image.network(
                    //    'https://picsum.photos/250?image=9',
                    //    frameBuilder: (context, child, frame, wasSynchronouslyLoaded) {
                    //      return child;
                    //    },
                    //    loadingBuilder: (context, child, loadingProgress) {
                    //      if(loadingProgress == null) {
                    //       return child;
                    //      } else {
                    //       return const Center(
                    //         child: CircularProgressIndicator(
                    //           color: Colors.blue,
                    //         ),
                    //       );
                    //      }
                    //    },
                    // )
                  
                  ],
                ),
              ),
              SizedBox(
                height: 13,
              ),
               SizedBox(
                height: 100,
                 child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                     Image.network(
                      'https://picsum.photos/250?image=9',
                      width: 100,
                      frameBuilder:
                          (context, child, frame, wasSynchronouslyLoaded) {
                        return child;
                      },
                      loadingBuilder: (context, child, loadingProgress) {
                        if (loadingProgress == null) {
                          return child;
                        } else {
                          return const Center(
                            child: CircularProgressIndicator(
                              color: Colors.blue,
                            ),
                          );
                        }
                      },
                    ),
                    SizedBox(
                      width: 12,
                    ),

                     Image.network(
                         'https://picsum.photos/250?image=9',
                      width: 100,
                         frameBuilder: (context, child, frame, wasSynchronouslyLoaded) {
                           return child;
                         },
                         loadingBuilder: (context, child, loadingProgress) {
                           if(loadingProgress == null) {
                            return child;
                           } else {
                            return const Center(
                              child: CircularProgressIndicator(
                                color: Colors.blue,
                              ),
                            );
                           }
                         },
                      ),
                    SizedBox(
                      width: 12,
                    ),

                     Image.network(
                         'https://picsum.photos/250?image=9',
                      width: 100,
                         frameBuilder: (context, child, frame, wasSynchronouslyLoaded) {
                           return child;
                         },
                         loadingBuilder: (context, child, loadingProgress) {
                           if(loadingProgress == null) {
                            return child;
                           } else {
                            return const Center(
                              child: CircularProgressIndicator(
                                color: Colors.blue,
                              ),
                            );
                           }
                         },
                      ),
                    SizedBox(
                      width: 12,
                    ),

                     Image.network(
                         'https://picsum.photos/250?image=9',
                      width: 100,
                         frameBuilder: (context, child, frame, wasSynchronouslyLoaded) {
                           return child;
                         },
                         loadingBuilder: (context, child, loadingProgress) {
                           if(loadingProgress == null) {
                            return child;
                           } else {
                            return const Center(
                              child: CircularProgressIndicator(
                                color: Colors.blue,
                              ),
                            );
                           }
                         },
                      ),
                      SizedBox(
                      width: 12,
                    ),

                    
                     Image.network(
                         'https://picsum.photos/250?image=9',
                      width: 100,
                         frameBuilder: (context, child, frame, wasSynchronouslyLoaded) {
                           return child;
                         },
                         loadingBuilder: (context, child, loadingProgress) {
                           if(loadingProgress == null) {
                            return child;
                           } else {
                            return const Center(
                              child: CircularProgressIndicator(
                                color: Colors.blue,
                              ),
                            );
                           }
                         },
                      )
                    
                  ],
                             ),
               )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
