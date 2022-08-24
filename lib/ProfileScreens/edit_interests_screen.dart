import 'package:flutter/material.dart';

import '../Constants/app_constants.dart';
import '../Database/firebasedatabase.dart';
import '../Utilities/app_utils.dart';

class EditInterestScreen extends StatefulWidget {
  const EditInterestScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<EditInterestScreen> createState() => _EditInterestScreenState();
}

class _EditInterestScreenState extends State<EditInterestScreen> {
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
    // for (int i = 0; i < arts.length; i++) {
    //   selected1.add(false);
    // }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final selectedIndex =
        (ModalRoute.of(context)?.settings.arguments ?? <bool>[]) as List;

    selected1 = selectedIndex;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.arrow_back_ios,
                      size: 25,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      "Interests",
                      style: utils.mediumHeadingTextStyle(),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      addData();
                    },
                    child: Text(
                      "Done(${selected1.where((item) => item == true).length})",
                      style: utils.smallHeadingTextStyle(color: blueColor),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Text(
                "Choose up to 10 interests to make yourself stand \nout",
                style: utils.smallTitleTextStyle(
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 20,
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
                      },
                    ),
                ],
              ),
              const SizedBox(
                height: 60,
              ),
            ],
          ),
        ),
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
      Navigator.pop(context);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(res),
        ),
      );
    }
  }
}
