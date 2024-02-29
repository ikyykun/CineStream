// import 'package:carousel_slider/carousel_slider.dart';
import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 25, 25, 25),
          title: const Center(
            child: Image(
              image: AssetImage('assets/images/logo.png'),
              fit: BoxFit.contain,
            ),
          ),
        ),
        body: SafeArea(
            child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            _popular(),
            const SizedBox(
              height: 10,
            ),
            _banner(),
            const SizedBox(
              height: 10,
            ),
            _text2(),
            const SizedBox(
              height: 10,
            ),
            _continueContent(),
            const SizedBox(
              height: 20,
            ),
            _text3(),
            const SizedBox(
              height: 10,
            ),
            _forYouContent()
          ],
        )));
  }

  Widget _forYouContent() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          8, // Ganti dengan jumlah gambar yang ingin ditampilkan
          (index) => Container(
            width: 120,
            height: 180,
            margin: const EdgeInsets.symmetric(
                horizontal: 5), // Untuk memberikan jarak antara kontainer
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: const DecorationImage(
                image: AssetImage('assets/images/bjir.jpg'),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _text3() {
    return const Row(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 10),
          child: Text(
            'For you',
            style: TextStyle(fontSize: 15, color: Colors.white),
          ),
        )
      ],
    );
  }

  Widget _continueContent() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          8, // Ganti dengan jumlah gambar yang ingin ditampilkan
          (index) => Container(
            width: 120,
            height: 180,
            margin: const EdgeInsets.symmetric(
                horizontal: 5), // Untuk memberikan jarak antara kontainer
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: const DecorationImage(
                image: AssetImage('assets/images/bjir.jpg'),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _text2() {
    return const Row(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 10),
          child: Text(
            'Continue watching your Movie',
            style: TextStyle(fontSize: 15, color: Colors.white),
          ),
        )
      ],
    );
  }

  Widget _banner() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: SizedBox(
              height: 200,
              width: double.infinity,
              child: AnotherCarousel(
                images: const [
                  AssetImage('assets/images/bjir.jpg'),
                  AssetImage('assets/images/bjir.jpg'),
                  AssetImage('assets/images/bjir.jpg'),
                ],
                dotSize: 3,
                dotBgColor: Colors.transparent,
                indicatorBgPadding: 5.0,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _popular() {
    return const Row(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 10),
          child: Text(
            'Popular Movie',
            style: TextStyle(fontSize: 15, color: Colors.white),
          ),
        )
      ],
    );
  }
}
