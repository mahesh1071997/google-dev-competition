import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:video_player/video_player.dart';

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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
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
  late VideoPlayerController _controller1;
  late VideoPlayerController _controllerTroohy;
  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: 'vWgPa3zIJUY',
    flags: const YoutubePlayerFlags(
      autoPlay: false,
      mute: true,
    ),
  );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("Google AI for Developers clone"),
      ),
      drawer: const SizedBox(
        width: 10,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('images/competition-star.svg',height: 130, semanticsLabel: 'Acme Logo'),
            Text(
              "Gemini API Developer Competition",
              style: Theme.of(context).textTheme.displayLarge!.copyWith(color: Colors.white),
              textAlign: TextAlign.center,
            ),
const SizedBox(height: 30,),
            Text(
              "Stay tuned, winners will be announced soon!",
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.grey),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 70,),

            Padding(
              padding: const EdgeInsets.all(30.0),
              child: YoutubePlayer(
                controller: _controller,
                showVideoProgressIndicator: false,
                progressIndicatorColor: Colors.amber,
                progressColors: const ProgressBarColors(
                  playedColor: Colors.amber,
                  handleColor: Colors.amberAccent,
                ),
                onReady: () {
                  _controller.addListener(() {});
                },
              ),
            ),
            SizedBox(height: 70,),
            Text(
              "Competition overview",
              style: Theme.of(context).textTheme.displayMedium!.copyWith(color: Colors.white),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20,),
            Text(
              "Developers are challenged to create groundbreaking apps with the Gemini API to showcase the power of generative AI",
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.grey),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 70,
            ),
            Text(
              "The grand prize".toUpperCase(),
              style: Theme.of(context).textTheme.labelMedium!.copyWith(color: Colors.grey, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20,),
            Text(
              "The best overall app will win a",
              style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: Colors.white),
              textAlign: TextAlign.center,
            ),
            GradientText(
              text: 'custom electric 1981 DeLorean',
              style: Theme.of(context).textTheme.headlineMedium!,
              gradient: const LinearGradient(
                colors: [
                  Colors.blueAccent,
                  Colors.purple,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            SizedBox(
              height: 200,
              child: _controller1.value.isInitialized
                  ? AspectRatio(
                      aspectRatio: _controller1.value.aspectRatio,
                      child: VideoPlayer(_controller1),
                    )
                  : const SizedBox(
                      height: 40,
                    ), // Show loading indicator while video initializes
            ),
            Wrap(
              alignment: WrapAlignment.center,
              children: [
                ListTile(
                  title: Text(
                    "The grand prize will be awarded to the best overall app based on innovation category scores.",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.grey),
                  ),
                  leading: SvgPicture.asset('images/electric-icon.svg', semanticsLabel: 'Acme Logo'),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: OutlinedButton(
                    onPressed: () {
                      print("object");
                    },
                    child: const Text(
                      "Learn More",
                      style: TextStyle(color: Colors.white),
                    ),
                    style: OutlinedButton.styleFrom(
                      minimumSize: const Size(100, 60),
                    ),
                  ),
                ),
                SizedBox(height: 30,),

              ],
            ),
            const SizedBox(
              height: 70,
            ),
            Text(
              "AWARD CATEGORIES",
              style: Theme.of(context).textTheme.labelMedium!.copyWith(color: Colors.grey, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20,),

            Text(
              "Compete for your total share of",
              style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: Colors.white),
              textAlign: TextAlign.center,
            ),
            GradientText(
              text: '\$1 million in cash prizes',
              style: Theme.of(context).textTheme.headlineMedium!,
              gradient: const LinearGradient(
                colors: [
                  Colors.blueAccent,
                  Colors.purple,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            SizedBox(height: 20,),

            Text(
              "Submissions could win in multiple categories—innovation, technology, the grand prize, and even the People's Choice award. See rules and restrictions for details.",
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.grey),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
                margin: const EdgeInsets.all(16.0),
                padding: const EdgeInsets.all(18.0),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(20), // Adjust the radius as needed
                  border: Border.all(
                    color: Colors.blueAccent,
                    width: 1, // Adjust the border width as needed
                  ),
                ),
                child: Column(
                  children: [
                    ListTile(
                      title: GradientText(
                        text: 'Innovation',
                        style: Theme.of(context).textTheme.bodyLarge!,
                        gradient: const LinearGradient(
                          colors: [
                            Colors.blueAccent,
                            Colors.purple,
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                      subtitle: Text(
                        'A submission can win one of the prizes in this category',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.grey),
                      ),
                    ),
                    const Divider(
                      height: 50,
                      endIndent: 20,
                      indent: 20,
                      thickness: 0.1,
                      color: Colors.grey,
                    ),
                    ExpansionTile(
                      // Remove divider when collapsed
                      collapsedShape: const RoundedRectangleBorder(
                        side: BorderSide(color: Colors.transparent),
                      ),
                      // Remove divider when expanded
                      shape: const RoundedRectangleBorder(
                        side: BorderSide(color: Colors.transparent),
                      ),
                      iconColor: Colors.blueAccent,
                      collapsedIconColor: Colors.blueAccent,
                      title: Wrap(
                        spacing: 250,
                        runSpacing: 8.0,
                        children: [
                          Text(
                            "Most impactful app",
                            style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                          GradientText(
                            text: '\$300,000',
                            style: Theme.of(context).textTheme.headlineSmall!,
                            gradient: const LinearGradient(
                              colors: [
                                Colors.blue,
                                Colors.blueAccent,
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                          ),
                        ],
                      ),
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text("Showcase how your innovative app can create a lasting, positive impact by addressing critical global challenges like climate change, renewable energy, socioeconomic inequality, personalized healthcare, or medical research.",
                              style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.grey)),
                        ),
                      ],
                    ),
                    const Divider(
                      height: 50,
                      endIndent: 20,
                      indent: 20,
                      thickness: 0.1,
                      color: Colors.grey,
                    ),
                    ExpansionTile(
                      // Remove divider when collapsed
                      collapsedShape: const RoundedRectangleBorder(
                        side: BorderSide(color: Colors.transparent),
                      ),
                      // Remove divider when expanded
                      shape: const RoundedRectangleBorder(
                        side: BorderSide(color: Colors.transparent),
                      ),
                      iconColor: Colors.blueAccent,
                      collapsedIconColor: Colors.blueAccent,
                      title: Wrap(
                        spacing: 250,
                        runSpacing: 8.0,
                        children: [
                          Text(
                            "Most useful app",
                            style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                          GradientText(
                            text: '\$200,000',
                            style: Theme.of(context).textTheme.headlineSmall!,
                            gradient: const LinearGradient(
                              colors: [
                                Colors.blue,
                                Colors.blueAccent,
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                          ),
                        ],
                      ),
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text("Demonstrate the tangible positive impact your app can have on everyday life. Show us how it automates repetitive tasks, streamlines essential activities, and provides tailored experiences that measurably improve productivity, learning, and creative potential.",
                              style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.grey)),
                        ),
                      ],
                    ),
                    const Divider(
                      height: 50,
                      endIndent: 20,
                      indent: 20,
                      thickness: 0.1,
                      color: Colors.grey,
                    ),
                    ExpansionTile(
                      // Remove divider when collapsed
                      collapsedShape: const RoundedRectangleBorder(
                        side: BorderSide(color: Colors.transparent),
                      ),
                      // Remove divider when expanded
                      shape: const RoundedRectangleBorder(
                        side: BorderSide(color: Colors.transparent),
                      ),
                      iconColor: Colors.blueAccent,
                      collapsedIconColor: Colors.blueAccent,
                      title: Wrap(
                        spacing: 250,
                        runSpacing: 8.0,
                        children: [
                          Text(
                            "Most creative app",
                            style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                          GradientText(
                            text: '\$200,000',
                            style: Theme.of(context).textTheme.headlineSmall!,
                            gradient: const LinearGradient(
                              colors: [
                                Colors.blue,
                                Colors.blueAccent,
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                          ),
                        ],
                      ),
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text("Blow us away with an app that shatters expectations and redefines the boundaries of what's possible. We're seeking applications that push the limits of creativity, AI, or even venture into the unknown.",
                              style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.grey)),
                        ),
                      ],
                    ),
                  ],
                )),
            Container(
                margin: const EdgeInsets.all(16.0),
                padding: const EdgeInsets.all(18.0),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(20), // Adjust the radius as needed
                  border: Border.all(
                    color: Colors.pinkAccent,
                    width: 1, // Adjust the border width as needed
                  ),
                ),
                child: Column(
                  children: [
                    ListTile(
                      title: GradientText(
                        text: 'Technology',
                        style: Theme.of(context).textTheme.bodyLarge!,
                        gradient: LinearGradient(
                          colors: [
                            Colors.pink.shade200,
                            Colors.pink,
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                      subtitle: Text(
                        'A submission can win one of the prizes in this category',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.grey),
                      ),
                    ),
                    const Divider(
                      height: 50,
                      endIndent: 20,
                      indent: 20,
                      thickness: 0.1,
                      color: Colors.grey,
                    ),
                    ExpansionTile(
                      // Remove divider when collapsed
                      collapsedShape: const RoundedRectangleBorder(
                        side: BorderSide(color: Colors.transparent),
                      ),
                      // Remove divider when expanded
                      shape: const RoundedRectangleBorder(
                        side: BorderSide(color: Colors.transparent),
                      ),
                      iconColor: Colors.pink,
                      collapsedIconColor: Colors.pink,
                      title: Wrap(
                        spacing: 250,
                        runSpacing: 8.0,
                        children: [
                          Text(
                            "Best Flutter app",
                            style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                          GradientText(
                            text: '\$50,000',
                            style: Theme.of(context).textTheme.headlineSmall!,
                            gradient: LinearGradient(
                              colors: [
                                Colors.pink.shade200,
                                Colors.pink,
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                          ),
                        ],
                      ),
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text("Build cross-platform apps that excel on any device, whether it's a brand-new creation or an existing app enhanced with Gemini models and Flutter's visual power.", style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.grey)),
                        ),
                      ],
                    ),
                    const Divider(
                      height: 50,
                      endIndent: 20,
                      indent: 20,
                      thickness: 0.1,
                      color: Colors.grey,
                    ),
                    ExpansionTile(
                      // Remove divider when collapsed
                      collapsedShape: const RoundedRectangleBorder(
                        side: BorderSide(color: Colors.transparent),
                      ),
                      // Remove divider when expanded
                      shape: const RoundedRectangleBorder(
                        side: BorderSide(color: Colors.transparent),
                      ),
                      iconColor: Colors.pink,
                      collapsedIconColor: Colors.pink,
                      title: Wrap(
                        spacing: 250,
                        runSpacing: 8.0,
                        children: [
                          Text(
                            "Best Android app",
                            style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                          GradientText(
                            text: '\$50,000',
                            style: Theme.of(context).textTheme.headlineSmall!,
                            gradient: LinearGradient(
                              colors: [
                                Colors.pink.shade200,
                                Colors.pink,
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                          ),
                        ],
                      ),
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text("Build cross-platform apps that excel on any device, whether it's a brand-new creation or an existing app enhanced with Gemini models and Flutter's visual power.", style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.grey)),
                        ),
                      ],
                    ),
                    const Divider(
                      height: 50,
                      endIndent: 20,
                      indent: 20,
                      thickness: 0.1,
                      color: Colors.grey,
                    ),
                    ExpansionTile(
                      // Remove divider when collapsed
                      collapsedShape: const RoundedRectangleBorder(
                        side: BorderSide(color: Colors.transparent),
                      ),
                      // Remove divider when expanded
                      shape: const RoundedRectangleBorder(
                        side: BorderSide(color: Colors.transparent),
                      ),
                      iconColor: Colors.pink,
                      collapsedIconColor: Colors.pink,
                      title: Wrap(
                        spacing: 250,
                        runSpacing: 8.0,
                        children: [
                          Text(
                            "Best web app",
                            style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                          GradientText(
                            text: '\$50,000',
                            style: Theme.of(context).textTheme.headlineSmall!,
                            gradient: LinearGradient(
                              colors: [
                                Colors.pink.shade200,
                                Colors.pink,
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                          ),
                        ],
                      ),
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text("Build cross-platform apps that excel on any device, whether it's a brand-new creation or an existing app enhanced with Gemini models and Flutter's visual power.", style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.grey)),
                        ),
                      ],
                    ),
                    const Divider(
                      height: 50,
                      endIndent: 20,
                      indent: 20,
                      thickness: 0.1,
                      color: Colors.grey,
                    ),
                    ExpansionTile(
                      // Remove divider when collapsed
                      collapsedShape: const RoundedRectangleBorder(
                        side: BorderSide(color: Colors.transparent),
                      ),
                      // Remove divider when expanded
                      shape: const RoundedRectangleBorder(
                        side: BorderSide(color: Colors.transparent),
                      ),
                      iconColor: Colors.pink,
                      collapsedIconColor: Colors.pink,
                      title: Wrap(
                        spacing: 250,
                        runSpacing: 8.0,
                        children: [
                          Text(
                            "Best use of ARCore",
                            style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                          GradientText(
                            text: '\$50,000',
                            style: Theme.of(context).textTheme.headlineSmall!,
                            gradient: LinearGradient(
                              colors: [
                                Colors.pink.shade200,
                                Colors.pink,
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                          ),
                        ],
                      ),
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text("Build cross-platform apps that excel on any device, whether it's a brand-new creation or an existing app enhanced with Gemini models and Flutter's visual power.", style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.grey)),
                        ),
                      ],
                    ),
                    const Divider(
                      height: 50,
                      endIndent: 20,
                      indent: 20,
                      thickness: 0.1,
                      color: Colors.grey,
                    ),
                    ExpansionTile(
                      // Remove divider when collapsed
                      collapsedShape: const RoundedRectangleBorder(
                        side: BorderSide(color: Colors.transparent),
                      ),
                      // Remove divider when expanded
                      shape: const RoundedRectangleBorder(
                        side: BorderSide(color: Colors.transparent),
                      ),
                      iconColor: Colors.pink,
                      collapsedIconColor: Colors.pink,
                      title: Wrap(
                        spacing: 250,
                        runSpacing: 8.0,
                        children: [
                          Text(
                            "Best use of Firebase",
                            style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                          GradientText(
                            text: '\$50,000',
                            style: Theme.of(context).textTheme.headlineSmall!,
                            gradient: LinearGradient(
                              colors: [
                                Colors.pink.shade200,
                                Colors.pink,
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                          ),
                        ],
                      ),
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text("Build cross-platform apps that excel on any device, whether it's a brand-new creation or an existing app enhanced with Gemini models and Flutter's visual power.", style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.grey)),
                        ),
                      ],
                    ),
                    const Divider(
                      height: 50,
                      endIndent: 20,
                      indent: 20,
                      thickness: 0.1,
                      color: Colors.grey,
                    ),
                    ExpansionTile(
                      // Remove divider when collapsed
                      collapsedShape: const RoundedRectangleBorder(
                        side: BorderSide(color: Colors.transparent),
                      ),
                      // Remove divider when expanded
                      shape: const RoundedRectangleBorder(
                        side: BorderSide(color: Colors.transparent),
                      ),
                      iconColor: Colors.pink,
                      collapsedIconColor: Colors.pink,
                      title: Wrap(
                        spacing: 250,
                        runSpacing: 8.0,
                        children: [
                          Text(
                            "Best game app",
                            style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                          GradientText(
                            text: '\$50,000',
                            style: Theme.of(context).textTheme.headlineSmall!,
                            gradient: LinearGradient(
                              colors: [
                                Colors.pink.shade200,
                                Colors.pink,
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                          ),
                        ],
                      ),
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text("Build cross-platform apps that excel on any device, whether it's a brand-new creation or an existing app enhanced with Gemini models and Flutter's visual power.", style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.grey)),
                        ),
                      ],
                    ),
                  ],
                )),
            const SizedBox(height: 70,),

            Text(
              "CROWD FAVORITE",
              style: Theme.of(context).textTheme.labelMedium!.copyWith(color: Colors.grey, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20,),

            Text(
              "The most voted app will win the",
              style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: Colors.white),
              textAlign: TextAlign.center,
            ),
            GradientText(
              text: 'People’s Choice Award',
              style: Theme.of(context).textTheme.headlineMedium!,
              gradient: const LinearGradient(
                colors: [
                  Colors.blueAccent,
                  Colors.purple,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            SizedBox(
              height: 250,
              child: _controllerTroohy.value.isInitialized
                  ? AspectRatio(
                      aspectRatio: _controllerTroohy.value.aspectRatio,
                      child: VideoPlayer(_controllerTroohy),
                    )
                  : const SizedBox(
                      height: 40,
                    ), // Show loading indicator while video initializes
            ),
            Text(
              "The winner will get a real Gemini API Developer Trophy.",
              style: Theme.of(context).textTheme.labelLarge!.copyWith(
                    color: Colors.grey,
                  ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 40,
            ),
            const SizedBox(height: 70,),

            Text(
              "Judging Criteria".toUpperCase(),
              style: Theme.of(context).textTheme.labelMedium!.copyWith(color: Colors.grey, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20,),

            Text(
              "Winners will be selected by an expert panel from Google",
              style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: Colors.white),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30,),

            const Divider(
              height: 25,
              endIndent: 10,
              indent: 10,
              thickness: 0.1,
              color: Colors.grey,
            ),
            MyListTile(
              title: "Remarkability",
              sub: "Your submission brilliantly showcases AI in a way that is both meaningful and impactful, delivering a superior and remarkable experience.",
            ),
            const Divider(
              height: 25,
              endIndent: 10,
              indent: 10,
              thickness: 0.1,
              color: Colors.grey,
            ),
            MyListTile(
              title: "Creativity",
              sub: "Your submission is creative, original, unexpected, and versatile. It is not just a copy of something that already exists, but rather something new and innovative.",
            ),
            const Divider(
              height: 25,
              endIndent: 10,
              indent: 10,
              thickness: 0.1,
              color: Colors.grey,
            ),
            MyListTile(
              title: "Usefulness",
              sub:
                  "Your submission should clearly identify the specific group of people your project aims to help. Describe the problems or difficulties these individuals face, and then explain how your solution directly tackles those challenges. Highlight the positive changes your solution brings to their lives or to society as a whole.",
            ),
            const Divider(
              height: 25,
              endIndent: 10,
              indent: 10,
              thickness: 0.1,
              color: Colors.grey,
            ),
            MyListTile(
              title: "Impactfulness",
              sub: "Your submission demonstrates value by contributing to accessibility, environmental sustainability, or the improvement of people's lives.",
            ),
            const Divider(
              height: 25,
              endIndent: 10,
              indent: 10,
              thickness: 0.1,
              color: Colors.grey,
            ),
            MyListTile(
              title: "Execution",
              sub: "Your submission is superbly executed, demonstrating high quality and meticulous attention to detail, and is completely free of bugs and glitches.",
            ),
            const SizedBox(height: 100,),

            Text(
              "Competition timeline",
              style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: Colors.white),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20,),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "All deadlines are at 11:59 PM GTM on the corresponding day unless otherwise noted.",
                style: Theme.of(context).textTheme.labelLarge!.copyWith(
                      color: Colors.grey,
                    ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
                margin: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 8.0),
                padding: const EdgeInsets.all(18.0),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(20), // Adjust the radius as needed
                  border: Border.all(
                    color: Colors.white,
                    width: 1, // Adjust the border width as needed
                  ),
                ),
                child: ListTile(
                  minVerticalPadding: 20,
                  title: GradientText(
                    text: 'Competition starts',
                    style: Theme.of(context).textTheme.bodyLarge!,
                    gradient: const LinearGradient(
                      colors: [
                        Colors.blueAccent,
                        Colors.white,
                        Colors.white,
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  subtitle: Text(
                    'A submission can win one of the prizes in this category',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.grey),
                  ),
                  leading: Container(
                      width: 110,
                      child: Text(
                        "May 14, 2024",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.white),
                        textAlign: TextAlign.start,
                      )),
                )),
            Container(
                margin: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 8.0),
                padding: const EdgeInsets.all(18.0),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(20), // Adjust the radius as needed
                  border: Border.all(
                    color: Colors.blueAccent,
                    width: 1, // Adjust the border width as needed
                  ),
                ),
                child: Column(
                  children: [
                    ListTile(
                      minVerticalPadding: 20,
                      title: GradientText(
                        text: 'Submission deadline',
                        style: Theme.of(context).textTheme.bodyLarge!,
                        gradient: const LinearGradient(
                          colors: [
                            Colors.blueAccent,
                            Colors.blue,
                          ],
                          begin: Alignment.centerRight,
                          end: Alignment.centerLeft,
                        ),
                      ),
                      subtitle: Text(
                        'Submit your Gemini API integrated app and pat yourself on the back.',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.grey),
                      ),
                      leading: Container(
                          width: 110,
                          child: Text(
                            "Aug 12, 2024",
                            style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.white),
                            textAlign: TextAlign.start,
                          )),
                    ),
                    ListTile(
                      minVerticalPadding: 20,

                      title: GradientText(
                        text: "Judge 's awards voting",
                        style: Theme.of(context).textTheme.bodyLarge!,
                        gradient: const LinearGradient(
                          colors: [
                            Colors.blueAccent,
                            Colors.blue,
                          ],
                          begin: Alignment.centerRight,
                          end: Alignment.centerLeft,
                        ),
                      ),
                      subtitle: Text(
                        'Judges review all entries and select winners for each category.',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.grey),
                      ),
                      leading: Container(
                          width: 110,
                          child: Text(
                            "Aug - Sep 2024",
                            style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.white),
                            textAlign: TextAlign.start,
                          )),
                    ),
                    ListTile(
                      minVerticalPadding: 20,

                      title: GradientText(
                        text: "People's Choice voting",
                        style: Theme.of(context).textTheme.bodyLarge!,
                        gradient: const LinearGradient(
                          colors: [
                            Colors.blueAccent,
                            Colors.blue,
                          ],
                          begin: Alignment.centerRight,
                          end: Alignment.centerLeft,
                        ),
                      ),
                      subtitle: Text(
                        'Now that your app is submitted, get ready to vote for your favorite apps. The app with the most votes will get the Gemini API Developer trophy!',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.grey),
                      ),
                      leading: Container(
                          width: 110,
                          child: Text(
                            "Sep 2024",
                            style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.white),
                            textAlign: TextAlign.start,
                          )),
                    ),
                  ],
                )),
            Container(
                margin: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 8.0),
                padding: const EdgeInsets.all(18.0),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(20), // Adjust the radius as needed
                  border: Border.all(
                    color: Colors.pinkAccent,
                    width: 1, // Adjust the border width as needed
                  ),
                ),
                child: ListTile(
                  minVerticalPadding: 18,
                  title: GradientText(
                    text: 'Results',
                    style: Theme.of(context).textTheme.bodyLarge!,
                    gradient: LinearGradient(
                      colors: [
                        Colors.pink.shade200,
                        Colors.pink,
                      ],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                  ),
                  subtitle: Text(
                    "Winners of the People's Choice Trophy and Judge's Awards will be announced.",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.grey),
                  ),
                  leading: Container(
                      width: 110,
                      child: Text(
                        "Late 2024",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.white),
                        textAlign: TextAlign.start,
                      )),
                )),
            SizedBox(height: 70,),
            Text(
              "Gemini API Developer Competition",
              style: Theme.of(context).textTheme.displayLarge!.copyWith(color: Colors.white),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.blueAccent.shade700, Colors.blueAccent.shade200], // Set your gradient colors
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
                borderRadius: BorderRadius.circular(30.0), // Set rounded corners
              ),
              child: TextButton(
                onPressed: () {
                  // Your onPressed logic
                },
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0), // Adjust padding
                  backgroundColor: Colors.transparent, // Text color
                  minimumSize: const Size(100, 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0), // Make sure this matches the container's borderRadius
                  ),
                ),
                child: const Text(
                  'Get Gemini API key in Google AI Studio',
                  style: TextStyle(fontSize: 16.0, color: Colors.white),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            OutlinedButton(
              onPressed: () {
                print("object");
              },
              child: const Text(
                "Read API docs",
                style: TextStyle(color: Colors.white),
              ),
              style: OutlinedButton.styleFrom(
                minimumSize: const Size(100, 60),
              ),
            ),
            SizedBox(height: 100,)
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    // Load the WebM video file
    _controller1 = VideoPlayerController.asset(
      'images/dolorean.webm',
    )
      ..initialize().then((_) {
        setState(() {}); // Update UI when video is loaded
      })
      ..setLooping(true)
      ..play();
    _controllerTroohy = VideoPlayerController.asset(
      'images/trophy.webm',
    )
      ..initialize().then((_) {
        setState(() {}); // Update UI when video is loaded
      })
      ..setLooping(true)
      ..play();
  }

  @override
  void dispose() {
    _controller1.dispose(); // Clean up the controller when the widget is removed
    _controllerTroohy.dispose(); // Clean up the controller when the widget is removed
    super.dispose();
  }
}

class GradientText extends StatelessWidget {
  final String text;
  final Gradient gradient;
  final TextStyle style;

  GradientText({
    required this.text,
    required this.gradient,
    this.style = const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
  });

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Text(
        text,
        style: style.copyWith(color: Colors.white), // Setting the base color is required for `ShaderMask` to work
      ),
    );
  }
}

class MyListTile extends StatelessWidget {
  final String title;
  final String sub;

  MyListTile({
    required this.title,
    required this.sub,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        child: Text(title, style: Theme.of(context).textTheme.labelLarge!.copyWith(color: Colors.white, fontWeight: FontWeight.normal)),
      ),
      subtitle: Text(
        sub,
        style: Theme.of(context).textTheme.labelLarge!.copyWith(
              color: Colors.grey,
            ),
      ),
    );
  }
}


/*
* <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 400" width="1440" height="400" preserveAspectRatio="xMidYMid meet" style="width: 100%; height: 100%; transform: translate3d(0px, 0px, 0px);"><defs><clipPath id="__lottie_element_3"><rect width="1440" height="400" x="0" y="0"></rect></clipPath><linearGradient id="__lottie_element_7" spreadMethod="pad" gradientUnits="userSpaceOnUse" x1="-22.632999420166016" y1="119.322998046875" x2="-58.14099884033203" y2="-55.97200012207031"><stop offset="0%" stop-color="rgb(172,135,235)" stop-opacity="1"></stop><stop offset="50%" stop-color="rgb(86,68,118)" stop-opacity="0.5"></stop><stop offset="100%" stop-color="rgb(0,0,0)" stop-opacity="0"></stop></linearGradient><linearGradient id="__lottie_element_11" spreadMethod="pad" gradientUnits="userSpaceOnUse" x1="-43.64099884033203" y1="56.672000885009766" x2="-68.75800323486328" y2="-58.132999420166016"><stop offset="16%" stop-color="rgb(33,123,254)" stop-opacity="1"></stop><stop offset="58%" stop-color="rgb(17,61,127)" stop-opacity="0.5"></stop><stop offset="100%" stop-color="rgb(0,0,0)" stop-opacity="0"></stop></linearGradient><linearGradient id="__lottie_element_15" spreadMethod="pad" gradientUnits="userSpaceOnUse" x1="21.413999557495117" y1="12.434000015258789" x2="23.209999084472656" y2="-105.76200103759766"><stop offset="0%" stop-color="rgb(7,142,251)" stop-opacity="1"></stop><stop offset="50%" stop-color="rgb(4,71,125)" stop-opacity="0.5"></stop><stop offset="100%" stop-color="rgb(0,0,0)" stop-opacity="0"></stop></linearGradient><linearGradient id="__lottie_element_19" spreadMethod="pad" gradientUnits="userSpaceOnUse" x1="49.5" y1="187.5" x2="-36" y2="-18"><stop offset="16%" stop-color="rgb(172,135,235)" stop-opacity="1"></stop><stop offset="58%" stop-color="rgb(86,68,118)" stop-opacity="0.5"></stop><stop offset="100%" stop-color="rgb(0,0,0)" stop-opacity="0"></stop></linearGradient></defs><g clip-path="url(#__lottie_element_3)"><g transform="matrix(-1,0,0,1,153,-6)" opacity="0.5" style="display: none;"><g opacity="1" transform="matrix(1,0,0,1,0,0)"><path stroke="url(#__lottie_element_19)" stroke-linecap="round" stroke-linejoin="miter" fill-opacity="0" stroke-miterlimit="4" stroke-opacity="1" stroke-width="2" d="M0 0"></path></g></g><g transform="matrix(1,0,0,1,1248,121)" opacity="0.5" style="display: none;"><g opacity="1" transform="matrix(1,0,0,1,0,0)"><path stroke="url(#__lottie_element_15)" stroke-linecap="round" stroke-linejoin="miter" fill-opacity="0" stroke-miterlimit="4" stroke-opacity="1" stroke-width="2" d="M0 0"></path></g></g><g transform="matrix(-1,0,0,1,131,74)" opacity="0.5" style="display: block;"><g opacity="1" transform="matrix(1,0,0,1,0,0)"><path stroke="url(#__lottie_element_11)" stroke-linecap="round" stroke-linejoin="miter" fill-opacity="0" stroke-miterlimit="4" stroke-opacity="1" stroke-width="2" d=" M114.66799926757812,-145.38299560546875 C114.66799926757812,-102.71199798583984 114.66799926757812,54 114.66799926757812,54 C114.66799926757812,70.55699920654297 101.2249984741211,84 84.66799926757812,84 C84.66799926757812,84 13,84 13,84 C-3.556999921798706,84 -16.626728057861328,70.56217956542969 -16.166988372802734,54.011566162109375 C-16.166988372802734,54.011566162109375 -15.833011627197266,41.988433837890625 -15.833011627197266,41.988433837890625 C-15.373272895812988,25.437816619873047 -28.44300079345703,12 -45,12 C-45,12 -241,12 -241,12 C-242.01499938964844,12 -243.01800537109375,11.949999809265137 -244.0070037841797,11.85099983215332"></path></g></g><g transform="matrix(1,0,0,1,1263,66)" opacity="0.5" style="display: block;"><g opacity="1" transform="matrix(1,0,0,1,0,0)"><path stroke="url(#__lottie_element_7)" stroke-linecap="round" stroke-linejoin="miter" fill-opacity="0" stroke-miterlimit="4" stroke-opacity="1" stroke-width="2" d=" M162,-161.0229949951172 C162,-106.1520004272461 162,104 162,104 C162,120.55699920654297 148.5570068359375,134 132,134 C132,134 33.45500183105469,134 33.45500183105469,134 C16.898000717163086,134 3.4549999237060547,120.55699920654297 3.4549999237060547,104 C3.4549999237060547,104 3.4549999237060547,93 3.4549999237060547,93 C3.4549999237060547,76.44300079345703 -9.98799991607666,63 -26.545000076293945,63 C-26.545000076293945,63 -268,63 -268,63 C-269.25799560546875,63 -270.49798583984375,62.922000885009766 -271.7149963378906,62.77199935913086"></path></g></g></g></svg>
* */