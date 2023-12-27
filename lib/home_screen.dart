import 'package:flutter/material.dart';
import 'package:home_page/course_page.dart';
import 'package:home_page/course_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final txtTheme = Theme.of(context).textTheme;
    List<Color> bgColors = [
      const Color(0xFFFDD133),
      const Color(0xFF64DA91),
      const Color(0xFF60C0FC),
      const Color(0xFFFB7F7F),
      const Color(0XFFCA84F9),
      const Color(0XFF7AE667),
    ];
    List<String> containerList = [
      'Category',
      'Boutique Class',
      'Free Course',
      'Bookstore',
      'Live Course',
      'Leaderboard',
    ];
    List<Icon> iconsList = [
      const Icon(
        Icons.file_copy,
        color: Colors.white,
        size: 35,
      ),
      const Icon(
        Icons.video_call_rounded,
        color: Colors.white,
        size: 35,
      ),
      const Icon(
        Icons.padding_sharp,
        color: Colors.white,
        size: 35,
      ),
      const Icon(
        Icons.store,
        color: Colors.white,
        size: 35,
      ),
      const Icon(
        Icons.video_camera_back_rounded,
        color: Colors.white,
        size: 35,
      ),
      const Icon(
        Icons.leaderboard,
        color: Colors.white,
        size: 35,
      ),
    ];
    List<String> courseImage = [
      'assets/images/image1.png',
      'assets/images/image2.png',
      'assets/images/image3.png',
    ];
    List<String> courseTitle = [
      'Morning TextBook',
      'English Reading',
      'Illustration',
    ];
    List<String> courseRating = [
      '8.6',
      '8.0',
      '7.5',
    ];
    List<Color> courseColor = [
      Colors.red,
      Colors.green,
      Colors.cyanAccent,
    ];
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(
            top: 30,
            left: 15,
            right: 15,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('HomePage',
                        style:
                            TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                    Icon(
                      Icons.notifications_rounded,
                      color: Colors.green,
                    )
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                const Row(
                  children: [
                    Text(
                      'Choose your course\t',
                      style: TextStyle(
                        color: Colors.black45,
                      ),
                    ),
                    Text(
                      'right away',
                      style: TextStyle(
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.black12.withOpacity(0.03),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      border: InputBorder.none,
                      labelText: 'Search for your grade ,course ,training',
                      labelStyle: TextStyle(
                        fontSize: 14,
                        color: Colors.black45,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                GridView.builder(
                  shrinkWrap: true,
                  itemCount: 6,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                  ),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: bgColors[index],
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Center(
                            child: iconsList[index],
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          containerList[index],
                        )
                      ],
                    );
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Recommended Course',
                      style: txtTheme.titleLarge,
                    ),
                    const Text(
                      'more',
                      style: TextStyle(
                        color: Colors.black45,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    const Text(
                      'you may also like \t',
                      style: TextStyle(
                        color: Colors.black45,
                      ),
                    ),
                    Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        color: Colors.cyan.shade400,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Center(
                        child: Text(
                          '6',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 190,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      for (var i = 0; i < 3; i++)
                        Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 5),
                          height: 200,
                          width: 140,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,

                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 5,
                                color: Colors.black12,
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              InkWell(
                                onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>const CourseScreen(),));},
                                child: Container(
                                  height: 84,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: courseColor[i],
                                  ),
                                  child: Image.asset(
                                    courseImage[i],
                                    height: 40,
                                    width: 20,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      courseTitle[i],
                                      style: const TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      courseRating[i],
                                      style: const TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Icon(Icons.star,color: Colors.amber,size: 16,),
                                        const Icon(Icons.star,color: Colors.amber,size: 16,),
                                        const Icon(Icons.star,color: Colors.amber,size: 16,),
                                        const Icon(Icons.star,size: 16,),
                                        const Icon(Icons.star,size: 16,),
                                        Row(
                                          children: [
                                            const SizedBox(
                                              width: 4,
                                            ),
                                            Container(
                                              height: 30,
                                              width: 30,
                                              decoration: BoxDecoration(
                                                color: Colors.red,
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                              ),
                                              child: const Center(
                                                child: Icon(
                                                  Icons.favorite,
                                                  color: Colors.white,
                                                  size: 20,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: const CourseBar(),
      ),
    );
  }
}
