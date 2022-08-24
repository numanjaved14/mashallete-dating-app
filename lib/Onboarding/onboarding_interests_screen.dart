import 'package:flutter/material.dart';

import '../Constants/app_constants.dart';
import '../Database/firebasedatabase.dart';
import '../Utilities/app_utils.dart';

class OnBoardingInterestsScreen extends StatefulWidget {
  const OnBoardingInterestsScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingInterestsScreen> createState() =>
      _OnBoardingInterestsScreenState();
}

class _OnBoardingInterestsScreenState extends State<OnBoardingInterestsScreen> {
  List selected1 = [];
  List arts = [
    "90s Kid",
    "Self Care",
    "Hot Yoga",
    "Writing",
    "Meditation",
    "Sushi",
    "Hockey",
    "Basketball",
    "Slam Poetry",
    "Home Workout",
    "Manga",
    "Makeup",
    "Aquarium",
    "Sneakers",
    "Instagram",
    "Hot springs",
    "Martial arts",
    "Marvel",
    "Walking",
    "Running",
    "Travel",
    "Language Exchange",
    "Movies",
    "Gym",
    "Social Media",
    "Skincare",
    "Cricket",
    "Skateboarding",
    "Vegan Cooking",
    "K-Pop",
    "Photography",
    "Reading",
    "Singing",
    "Volleyball",
    "Sports",
    "Vinyasa",
    "Coffee",
    "Poetry",
    "Stand up Comedy",
    "Coffee",
    "League of Legends",
    "Karaoke",
    "Fortnite",
    "Free Diving",
    "Mental Health Awareness",
    "Foodie Tour",
    "Voter Rights",
    "Jiu-jitsu",
    "Climate Change",
    "NFTs",
    "Exhibition",
    "Bar Hopping",
    "Baseball",
    "LGBTQ+ Rights",
    "Ballet",
    "Feminism",
    "Band",
    "Escape Cafe",
    "Sailing",
    "Shopping",
    "Brunch",
    "Military",
    "Second-hand apparel",
    "Reggaeton",
    "Black Lives Matter",
    "Road Trips",
    "Memes",
    "Country Music",
    "Football",
    "Motorcycling",
    "Acapella",
    "Investing",
    "Art Galleries",
    "Hiking",
    "Mountains",
    "Archery",
    "Backpacking",
    "Fishing",
    "Ice Cream",
    "Ice Skating",
    "Expositions",
    "Skiing",
    "Snowboarding",
    "Pilates",
    "Clubbing",
    "Broadway",
    "Cheerleading",
    "Choir",
    "Car Racing",
    "Street Food",
    "Festivals",
    "Catan",
    "Crossfit",
    "Cosplay",
    "Motor Sports",
    "E-sports",
    "Content Creation",
    "Concerts",
    "Climbing",
    "Baking",
    "Camping",
    "Blogging",
    "Collecting",
    "Cars",
    "Bicycle Racing",
    "Start ups",
    "Boba Tea",
    "Binge-Watching TV shows",
    "Songwriter",
    "Tattoos",
    "Painting",
    "Paddle Boarding",
    "Padel",
    "Surfing",
    "Badminton",
    "Bowling",
    "Active Lifestyle",
    "Beach Bars",
    "Fashion",
    "Anime",
    "Astrology",
    "Motorcycles",
    "Entrepreneurship",
    "Cooking",
    "Fencing",
    "Soccer",
    "Dancing",
    "Gardening",
    "Amateur Cook",
    "Art",
    "DIV",
    "Politics",
    "Cycling",
    "Museum",
    "Outdoors",
    "Activism",
    "TikTok",
    "Picnicking",
    "Twitch",
    "Comedy",
    "Music",
    "Triathlon",
    "Netflix",
    "Disney",
    "Rugby",
    "DAOs",
    "Real Estate",
    "Podcasts",
    "Rave",
    "BBQ",
    "Craft Beer",
    "Stocks",
    "Swimming",
    "Iced Tea",
    "Drummer",
    "Tea",
    "Board GamesDrawing",
    "Trivia",
    "Volunteering",
    "Table Tennis",
    "Enviromentalism",
    "Rollerskating",
    "Wine",
    "Dungeons & Dragons",
    "Vlogging",
    "Electronic Music",
    "Working out",
    "Yoga",
    "Boxing",
    "Ramen",
  ];
  var utils = AppUtils();

  @override
  void initState() {
    for (int i = 0; i < arts.length; i++) {
      selected1.add(false);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 100,
                  ),
                  Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.625,
                        height: 7,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: linearGradientBlue,
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.125,
                        height: 7,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[200],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 45,
                  ),
                  Text(
                    "Add your interests",
                    style: utils.largeHeadingTextStyle(
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Text(
                    "Choose up to 10 interests to make yourself stand out",
                    style: utils.smallTitleTextStyle(
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Wrap(
                    children: [
                      for (int i = 0; i < arts.length; i++)
                        utils.interestsWidget(
                          text: arts[i],
                          selected: selected1[i],
                          onTap: () {
                            if (selected1.where((item) => item == true).length <
                                10) {
                              if (selected1[i] == false) {
                                selected1[i] = true;
                              } else {
                                selected1[i] = false;
                              }
                              setState(() {});
                            } else {
                              selected1[i] = false;
                            }
                            setState(() {});
                          },
                        ),
                    ],
                  ),
                  const SizedBox(
                    height: 200,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.8,
            left: 0,
            right: 0,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.white.withOpacity(0.0),
                      Colors.white,
                      Colors.white,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.9,
            left: 20,
            right: 20,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(
                            context, onBoardingLookingGoodScreenRoute);
                      },
                      child: const Text(
                        "Skip for now",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          fontFamily: "ProximaNova",
                          color: blueColor,
                        ),
                      ),
                    ),
                    utils.gradientBigButton(
                      onTap: selected1.where((item) => item == true).isEmpty
                          ? () {}
                          : () {
                              addData();
                            },
                      width: MediaQuery.of(context).size.width * 0.35,
                      text:
                          "Continue (${selected1.where((item) => item == true).length}/10)",
                      containerColor: blueColor,
                      textColor: Colors.white,
                      borderRadius: 8.0,
                      fontSize: 14.0,
                      enabled: selected1.where((item) => item == true).isEmpty
                          ? true
                          : false,
                      height: 50.0,
                      shadowColors: Colors.white,
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void addData() async {
    List<String> selectedValue = [];
    for (int i = 0; i <= selected1.length - 1; i++) {
      if (selected1[i] == true) {
        selectedValue.add(arts[i]);
      }
    }
    String res = await Database().updateList(
      key: 'likes',
      value: selectedValue,
    );
    res = await Database().updateList(
      key: 'likesIndex',
      value: selected1,
    );
    if (res == 'success') {
      Navigator.pushNamed(context, onBoardingLookingGoodScreenRoute);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(res),
        ),
      );
    }
  }
}
