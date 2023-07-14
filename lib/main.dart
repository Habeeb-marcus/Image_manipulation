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
                     ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                       child: Image.network(
                        'https://images.unsplash.com/photo-1547041270-d3d54e1263cb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Y3JlZWt8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
                        width: 100,
                        fit: BoxFit.cover,
                        frameBuilder:
                            (context, child, frame, wasSynchronouslyLoaded) {
                          //  if (wasSynchronouslyLoaded) {
                          //     return child;
                          //   }
                        return AnimatedOpacity(
                          opacity: frame == null ? 0 : 1,
                          duration: const Duration(seconds: 5000),
                          curve: Curves.easeOut,
                          child: child,
                        );
        
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
                     ),
                    SizedBox(
                      width: 12,
                    ),

                     ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                       child: Image.network(
                           'https://plus.unsplash.com/premium_photo-1669638665133-3fec4466ad43?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8dmFsbGV5JTIwb2YlMjBmaXJlfGVufDB8fDB8fHww&w=1000&q=80',
                           fit: BoxFit.cover,
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
                     ),
                    SizedBox(
                      width: 12,
                    ),
                     ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                       child: Image.network(
                        'https://i0.wp.com/digital-photography-school.com/wp-content/uploads/2019/05/joseph-barrientos-49318-unsplash-e1558728034701.jpg?resize=1500%2C1000&ssl=1',
                           fit: BoxFit.cover,
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
                     ),
                    SizedBox(
                      width: 12,
                    ),
                     ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                       child: Image.network(
                        'https://images.unsplash.com/photo-1536782376847-5c9d14d97cc0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8ZnJlZXxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80',
                           fit: BoxFit.cover,
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
                     ),
                    SizedBox(
                      width: 12,
                    ),
                     ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                       child: Image.network(
                        'https://images.unsplash.com/photo-1536599018102-9f803c140fc1?auto=format&fit=crop&w=440&h=220&q=60',
                           fit: BoxFit.cover,
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
                     ),
                    SizedBox(
                      width: 12,
                    ),


                   

                  ]
                             ),
               ),
                Image.network(
                  'https://images.unsplash.com/photo-1547041270-d3d54e1263cb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Y3JlZWt8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover, frameBuilder:
                      (context, child, frame, wasSynchronouslyLoaded) {
                if (wasSynchronouslyLoaded) {
                  return child;
                }
                return AnimatedOpacity(
                  opacity: frame == null ? 0 : 1,
                  duration: const Duration(seconds: 1),
                  curve: Curves.easeOut,
                  child: child,
                );
              })
            ],
          ),
        ),
      ),
    );
  }
}
