import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CourseScreen extends StatelessWidget {
  const CourseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final txtThem=Theme.of(context).textTheme;
    const txtStyle=TextStyle(color: Colors.black54,fontSize: 14);
    List courseTitle=[
    'Positive Rotation',
      'Fun Practice',
      'Wrong title set',

    ];
    List<Icon>courseIconsData=[
      const Icon(CupertinoIcons.add,color: Colors.white,),
      const Icon(Icons.widgets,color: Colors.white,),
      const Icon(Icons.book,color: Colors.white,),


    ];
    List<Color> bgColors=[
      const Color(0xFFFDD133),
      const Color(0xFF64DA91),
      const Color(0xFF60C0FC),
    ];
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Course Page',
                style: txtThem.titleLarge,
                ),
                const Icon(Icons.post_add,
                color: Color(0xFF3CB792),
                ),
              ],
            ),
            const SizedBox(height: 5,),
            const Row(
              children: [
                Text("Today's math progress\t",
                style: TextStyle(color: Colors.black45),
                ),
                Text("0 min",
                style: TextStyle(color: Color(0xFF3CB792)),
                ),
              ],
            ),
            const SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Mathematics',style: txtThem.titleLarge,),
                const Text('English',style: txtStyle,),
                const Text('Physics',style: txtStyle),
                const Text('Chemistry',style: txtStyle),

              ],
            ),
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
              padding: const EdgeInsets.all(20),
                height: 150,
                  width: 120,
                  decoration: BoxDecoration(
                    color: const Color(0xFF5AD995),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.bookmark,
                            color: Color(0xFF5AD995),
                          ),
                        ),
                      ),
                      const Text('Test',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                      ),
                      const Text('Chapter Knowledge',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                    height: 150,
                    width: 120,
                  decoration: BoxDecoration(
                    color: const Color(0xFF5EBBFD),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.font_download_off_outlined,
                            color: Color(0xFF5EBBFD),
                          ),
                        ),
                      ),
                      const Text('Summarize',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      const Text('Study notes',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30,),
            Text('Recommended Course',
            style: txtThem.titleLarge,
            ),
            const SizedBox(height: 5,),
            const Text('I learned Chapter 6 last time',
              style: txtStyle,
            ),
            const SizedBox(height: 20,),
            for(var i=0; i<3; i++)
              Container(
                 margin: const EdgeInsets.symmetric(vertical: 10),
                 height: 50,
                 decoration: BoxDecoration(
                   color: Colors.white,
                   borderRadius: BorderRadius.circular(5),
                   boxShadow: const [
                     BoxShadow(
                       color: Colors.black12,blurRadius: 5,
                     ),
                   ]
                 ),
                 child:Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Container(
                       height: 40,
                       width: 40,
                       decoration: BoxDecoration(
                         color: bgColors[i],
                         borderRadius: BorderRadius.circular(20),
                       ),
                       child: Center(
                         child: courseIconsData[i],
                       ),
                     ),
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Text(
                           courseTitle[i],
                           style: txtThem.titleMedium,

                         ),
                         Text(
                           courseTitle[i],
                         )
                       ],

                     ),
                     const SizedBox(width: 20,),
                     Container(
                       height: 30,
                       width: 100,
                       decoration: BoxDecoration(
                         color: const Color(0xFF178366),
                         borderRadius: BorderRadius.circular(15),
                       ),
                       child: const Center(
                         child: Text(
                           'Start',
                           style: TextStyle(
                             color: Colors.white,
                           ),
                         ),
                       ),
                     ),
                   ],
                 ),
               ),






              ],
            ),


        ),


      ),
    );
  }
}


