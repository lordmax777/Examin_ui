import 'package:flutter/material.dart';

class BoshSahifa extends StatefulWidget {
  @override
  _BoshSahifaState createState() => _BoshSahifaState();
}
// login Page
class _BoshSahifaState extends State<BoshSahifa> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Container(
            color: Color.fromRGBO(247, 247, 247, 247),
            height: 280.0,
            width: 400.0,
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.only(top: 110.0),
              child: CircleAvatar(
                backgroundColor: Colors.grey,
                backgroundImage: AssetImage("assets/images/logo.png"),
                radius: 75.0,
              ),
            ),
          ),
          Container(
            height: 380.0,
            width: 400.0,
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      top: 20.0, left: 30.0, right: 30.0, bottom: 10.0),
                  child: Container(
                    height: 45.0,
                    child: Form(
                      child: TextFormField(
                        keyboardType: TextInputType.name,
                        obscureText: false,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40.0),
                            borderSide: BorderSide(
                              color: Colors.grey,
                              width: 1.5,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40.0),
                            borderSide: BorderSide(
                              color: Colors.blue,
                              width: 1.5,
                            ),
                          ),
                          prefixIcon: Icon(
                            Icons.edit,
                            color: Colors.grey,
                          ),
                          hintText: "Ismingizni Kiriting...",
                          hintStyle: TextStyle(fontSize: 14.0),
                          labelText: "Ism",
                          labelStyle:
                              TextStyle(fontSize: 16.0, color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 20.0, left: 30.0, right: 30.0, bottom: 10.0),
                  child: Container(
                    height: 45.0,
                    child: Form(
                      child: TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: false,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40.0),
                            borderSide: BorderSide(
                              color: Colors.grey,
                              width: 1.5,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40.0),
                            borderSide: BorderSide(
                              color: Colors.blue,
                              width: 1.5,
                            ),
                          ),
                          prefixIcon: Icon(
                            Icons.lock,
                            color: Colors.grey,
                          ),
                          hintText: "Password Kiriting...",
                          hintStyle: TextStyle(fontSize: 14.0),
                          labelText: "Password",
                          labelStyle:
                              TextStyle(fontSize: 16.0, color: Colors.grey),
                        ),
                        validator: (String? m) {
                          if (m!.length < 6) {
                            return "Iltimos Parolingizni To'liq Kiriting....";
                          } else {
                            return null;
                          }
                        },
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 30.0, right: 30.0, top: 15.0),
                  child: Container(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      )),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage()));
                      },
                      child: Text("SIGN IN"),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 30.0, right: 30.0, top: 20.0),
                  child: Container(
                    child: TextButton(
                      style: ElevatedButton.styleFrom(
                        shadowColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Forgot password?",
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                  child: Container(
                    child: TextButton(
                      style: ElevatedButton.styleFrom(
                        shadowColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Create an Account",
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        body: Column(
          children: [
            Container(
              height: 280.0,
              color: Colors.black,
              child: Container(
                height: 70.0,
                margin: EdgeInsets.only(top: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        child: Text(
                      "Delivery address",
                      style: TextStyle(fontSize: 16.0, color: Colors.grey),
                    )),
                    Row(
                      children: [
                        Text(
                          "San Francisco, USA",
                          style: TextStyle(fontSize: 22.0, color: Colors.white),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Icon(
                            Icons.keyboard_arrow_down_outlined,
                            color: Colors.white,
                            size: 30.0,
                          ),
                        )
                      ],
                    ),
                    // 111
                    Container(
                      height: 170.0,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: OlibKel(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 40.0,
                margin: EdgeInsets.only(top: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Restaurants",
                      style: TextStyle(
                          fontSize: 25.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 40.0,
                    ),
                    Row(
                      children: [
                        Text(
                          "Delivery: Now",
                          style: TextStyle(fontSize: 16.0, color: Colors.grey),
                        ),
                        Icon(
                          Icons.settings_applications_outlined,
                          size: 25.0,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            // 222
            Container(
              height: 110.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: OlVertical(),
              ),
            ),
            // 333
            Container(
              height: 270,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: ListOl(),
              ),
            ),
            //Menu Containerlar;
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.home),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.search),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => YangiKlass()));
                    },
                    icon: Icon(Icons.shopping_bag_outlined),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.person_outline),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  // 111
  OlibKel() {
    return [
      Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/1.jpg"),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(10.0)),
        margin: EdgeInsets.only(left: 10.0, top: 5.0, bottom: 10.0, right: 5.0),
        height: 180.0,
        width: 180.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(top: 7.0, left: 83.0),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.yellow.shade700,
                borderRadius: BorderRadius.circular(5.0),
              ),
              width: 70.0,
              height: 20.0,
              child: Text(
                "FREE DELIVERY",
                style: TextStyle(fontSize: 8.0, color: Colors.black),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.5),
                borderRadius: BorderRadius.circular(15.0),
              ),
              alignment: Alignment.bottomLeft,
              height: 40.0,
              width: 185.0,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Popular food",
                      style: TextStyle(fontSize: 10.0),
                    ),
                    Text(
                      "Most Popular dishes in your location",
                      style: TextStyle(fontSize: 9.0, color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/2.jpg"),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(10.0)),
        margin: EdgeInsets.only(left: 10.0, top: 5.0, bottom: 10.0, right: 5.0),
        height: 180.0,
        width: 180.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(top: 7.0, left: 83.0),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.yellow.shade700,
                borderRadius: BorderRadius.circular(5.0),
              ),
              width: 70.0,
              height: 20.0,
              child: Text("FREE DELIVERY",
                  style: TextStyle(fontSize: 8.0, color: Colors.black)),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.5),
                borderRadius: BorderRadius.circular(15.0),
              ),
              alignment: Alignment.bottomLeft,
              height: 40.0,
              width: 185.0,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Popular food",
                      style: TextStyle(fontSize: 10.0),
                    ),
                    Text(
                      "Most Popular dishes in your location",
                      style: TextStyle(fontSize: 9.0, color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/3.jpg"),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(10.0)),
        margin: EdgeInsets.only(left: 10.0, top: 5.0, bottom: 10.0, right: 5.0),
        height: 180.0,
        width: 180.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(top: 7.0, left: 83.0),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.yellow.shade700,
                borderRadius: BorderRadius.circular(5.0),
              ),
              width: 70.0,
              height: 20.0,
              child: Text("FREE DELIVERY",
                  style: TextStyle(fontSize: 8.0, color: Colors.black)),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.5),
                borderRadius: BorderRadius.circular(15.0),
              ),
              alignment: Alignment.bottomLeft,
              height: 40.0,
              width: 185.0,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Popular salads",
                      style: TextStyle(fontSize: 10.0),
                    ),
                    Text(
                      "Most Popular salads in your location",
                      style: TextStyle(fontSize: 9.0, color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/4.jpg"),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(10.0)),
        margin: EdgeInsets.only(left: 10.0, top: 5.0, bottom: 10.0, right: 5.0),
        height: 180.0,
        width: 180.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(top: 7.0, left: 83.0),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.yellow.shade700,
                borderRadius: BorderRadius.circular(5.0),
              ),
              width: 70.0,
              height: 20.0,
              child: Text("FREE DELIVERY",
                  style: TextStyle(fontSize: 8.0, color: Colors.black)),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.5),
                borderRadius: BorderRadius.circular(15.0),
              ),
              alignment: Alignment.bottomLeft,
              height: 40.0,
              width: 185.0,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Popular Fast Food",
                      style: TextStyle(fontSize: 10.0),
                    ),
                    Text(
                      "Most Popular Fast Food in your location",
                      style: TextStyle(fontSize: 8.0, color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/2.jpg"),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(10.0)),
        margin: EdgeInsets.only(left: 10.0, top: 5.0, bottom: 10.0, right: 5.0),
        height: 180.0,
        width: 180.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(top: 7.0, left: 83.0),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.yellow.shade700,
                borderRadius: BorderRadius.circular(5.0),
              ),
              width: 70.0,
              height: 20.0,
              child: Text("FREE DELIVERY",
                  style: TextStyle(fontSize: 8.0, color: Colors.black)),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.5),
                borderRadius: BorderRadius.circular(15.0),
              ),
              alignment: Alignment.bottomLeft,
              height: 40.0,
              width: 185.0,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Popular food",
                      style: TextStyle(fontSize: 10.0),
                    ),
                    Text(
                      "Most Popular dishes in your location",
                      style: TextStyle(fontSize: 9.0, color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/3.jpg"),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(10.0)),
        margin: EdgeInsets.only(left: 10.0, top: 5.0, bottom: 10.0, right: 5.0),
        height: 180.0,
        width: 180.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(top: 7.0, left: 83.0),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.yellow.shade700,
                borderRadius: BorderRadius.circular(5.0),
              ),
              width: 70.0,
              height: 20.0,
              child: Text("FREE DELIVERY",
                  style: TextStyle(fontSize: 8.0, color: Colors.black)),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.5),
                borderRadius: BorderRadius.circular(15.0),
              ),
              alignment: Alignment.bottomLeft,
              height: 40.0,
              width: 185.0,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Popular salads",
                      style: TextStyle(fontSize: 10.0),
                    ),
                    Text(
                      "Most Popular salads in your location",
                      style: TextStyle(fontSize: 9.0, color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ];
  }

  // 222
  List<Widget> OlVertical() {
    return [
      Container(
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.yellow.shade700,
          borderRadius: BorderRadius.circular(15.0),
        ),
        height: 90.0,
        width: 80.0,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/images/22.jpg",
                    ),
                    fit: BoxFit.cover,
                  )),
              margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
              height: 40.0,
              width: 40.0,
            ),
            Text("All")
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.0),
        ),
        height: 90.0,
        width: 80.0,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/images/11.jpg",
                    ),
                    fit: BoxFit.cover,
                  )),
              margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
              height: 40.0,
              width: 40.0,
            ),
            Text("Fast Food")
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.0),
        ),
        height: 90.0,
        width: 80.0,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/images/44.jpg",
                    ),
                    fit: BoxFit.cover,
                  )),
              margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
              height: 40.0,
              width: 40.0,
            ),
            Text("Asian"),
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.0),
        ),
        height: 90.0,
        width: 80.0,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/images/33.jpg",
                    ),
                    fit: BoxFit.cover,
                  )),
              margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
              height: 40.0,
              width: 40.0,
            ),
            Text("Pizza"),
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.0),
        ),
        height: 90.0,
        width: 80.0,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/images/11.jpg",
                    ),
                    fit: BoxFit.cover,
                  )),
              margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
              height: 40.0,
              width: 40.0,
            ),
            Text("Hamburger"),
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.0),
        ),
        height: 90.0,
        width: 80.0,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/images/44.jpg",
                    ),
                    fit: BoxFit.cover,
                  )),
              margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
              height: 40.0,
              width: 40.0,
            ),
            Text("Pizza")
          ],
        ),
      ),
    ];
  }

  // 333
  List<Widget> ListOl() {
    return [
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/55.jpg"), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(15.0)),
          height: 180.0,
          child: Text("20-30 min"),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/11.jpg"), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(15.0)),
          height: 180.0,
          child: Text("20-30 min"),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/1.jpg"), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(15.0)),
          height: 180.0,
          child: Text("60-70 min"),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/2.jpg"), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(15.0)),
          height: 180.0,
          child: Text("40-50 min"),
        ),
      ),
    ];
  }
}

class YangiKlass extends StatefulWidget {

  @override
  _YangiKlassState createState() => _YangiKlassState();
}

class _YangiKlassState extends State<YangiKlass> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 70.0,
                child: Column(
                  children: [
                    Container(
                        alignment: Alignment.center,
                        child: Text(
                          "Delivery address",
                          style: TextStyle(fontSize: 16.0, color: Colors.grey),
                        )),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "San Francisco, USA",
                          style: TextStyle(fontSize: 19.0, color: Colors.white),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Icon(
                            Icons.keyboard_arrow_down_outlined,
                            color: Colors.white,
                            size: 25.0,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            // 444
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15.0),
                    topRight: Radius.circular(15.0),
                  )),
              height: 110.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: OlVertical(),
              ),
            ),
            // 555
            Container(
              height: 520.0,
              color: Colors.white,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: ListOl(),
              ),
            ),
            // Icon Buttonlar
            Container(
              height: 70.0,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(Icons.home),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.search),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.shopping_bag_outlined),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.person_outline),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  // 444
  List<Widget> OlVertical() {
    return [
      Container(
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.yellow.shade700,
          borderRadius: BorderRadius.circular(15.0),
        ),
        height: 90.0,
        width: 80.0,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/images/22.jpg",
                    ),
                    fit: BoxFit.cover,
                  )),
              margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
              height: 40.0,
              width: 40.0,
            ),
            Text("All")
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.0),
        ),
        height: 90.0,
        width: 80.0,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/images/11.jpg",
                    ),
                    fit: BoxFit.cover,
                  )),
              margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
              height: 40.0,
              width: 40.0,
            ),
            Text("Fast Food")
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.0),
        ),
        height: 90.0,
        width: 80.0,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/images/44.jpg",
                    ),
                    fit: BoxFit.cover,
                  )),
              margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
              height: 40.0,
              width: 40.0,
            ),
            Text("Asian"),
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.0),
        ),
        height: 90.0,
        width: 80.0,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/images/33.jpg",
                    ),
                    fit: BoxFit.cover,
                  )),
              margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
              height: 40.0,
              width: 40.0,
            ),
            Text("Pizza"),
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.0),
        ),
        height: 90.0,
        width: 80.0,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/images/11.jpg",
                    ),
                    fit: BoxFit.cover,
                  )),
              margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
              height: 40.0,
              width: 40.0,
            ),
            Text("Hamburger"),
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.0),
        ),
        height: 90.0,
        width: 80.0,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/images/44.jpg",
                    ),
                    fit: BoxFit.cover,
                  )),
              margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
              height: 40.0,
              width: 40.0,
            ),
            Text("Pizza")
          ],
        ),
      ),
    ];
  }

  // 555
  List<Widget> ListOl() {
    return [
      Padding(
        padding: const EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
        child: GestureDetector(
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/55.jpg"),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(10.0)),
            margin:
                EdgeInsets.only(left: 10.0, top: 5.0, bottom: 10.0, right: 5.0),
            height: 180.0,
            width: 180.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 250.0, top: 15.0),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  width: 80.0,
                  height: 20.0,
                  child: Text(
                    "20-30 min",
                    style: TextStyle(fontSize: 14.0, color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
          onTap: (){
            showDialog(
              barrierDismissible: false,
                context: context,
                builder: (context){
                  return AlertDialog(
                    title: Text("Double Burger"),
                    content: Container(
                      height: 150.0,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white,
                            offset: Offset.infinite,
                            spreadRadius: 10.0,
                            blurRadius: 10.0,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(15.0),
                        image: DecorationImage(
                          image: AssetImage("assets/images/55.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    actions: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("""Toblab, qizarti-rib pishirilgan goʻsht yoki qaynoq goʻshtli qiyma hamda qayla, oshkoʻklar qoʻshilgan buterbrod.""", style: TextStyle(color: Colors.white),),
                      ),
                      TextButton(
                        onPressed: (){
                          setState(() {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => BoshSahifa()));
                          });
                        },
                        child: Text("Bosh Sahifaga Qaytish",style: TextStyle(color: Colors.red, fontSize: 18.0, fontWeight: FontWeight.bold),),),
                      SizedBox(width: 55.0,),
                      TextButton(
                        onPressed: (){
                          setState(() {
                            Navigator.of(context).pop();
                          });
                        },
                        child: Text("Ortga Qaytish",style: TextStyle(color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.bold),),),
                    ],
                    backgroundColor: Colors.grey.withOpacity(0.6),
                  );
                });
          },
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "Double Burger",
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 160.0,
                ),
                Text("20-30 min"),
              ],
            ),
            Text("American(Traditional), Lunch"),
            Row(
              children: [
                Text("⭐⭐⭐⭐⭐"),
                SizedBox(
                  width: 15.0,
                ),
                Text(
                  "4.5(108 reviews)",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
        child: GestureDetector(
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/1.jpg"),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(10.0)),
            margin:
                EdgeInsets.only(left: 10.0, top: 5.0, bottom: 10.0, right: 5.0),
            height: 180.0,
            width: 180.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 250.0, top: 15.0),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  width: 80.0,
                  height: 20.0,
                  child: Text(
                    "60-70 min",
                    style: TextStyle(fontSize: 14.0, color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
          onTap: (){
            showDialog(
                context: context,
                builder: (context){
                  return AlertDialog(
                    title: Text("Shourma"),
                    content: Container(
                      height: 150.0,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white,
                            offset: Offset.infinite,
                            spreadRadius: 10.0,
                            blurRadius: 10.0,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(15.0),
                        image: DecorationImage(
                          image: AssetImage("assets/images/1.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    actions: [
                      TextButton(
                        onPressed: (){
                          setState(() {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => BoshSahifa()));
                          });
                        },
                        child: Text("Bosh Sahifaga Qaytish",style: TextStyle(color: Colors.red, fontSize: 18.0, fontWeight: FontWeight.bold),),),
                      SizedBox(width: 55.0,),
                      TextButton(
                        onPressed: (){
                          setState(() {
                            Navigator.of(context).pop();
                          });
                        },
                        child: Text("Ortga Qaytish",style: TextStyle(color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.bold),),),
                    ],
                    backgroundColor: Colors.grey.withOpacity(0.6),
                  );
                });
          },
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "Shourma",
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 200.0,
                ),
                Text("60-70 min"),
              ],
            ),
            Text("Asian(Traditional), Lunch"),
            Row(
              children: [
                Text("⭐⭐⭐⭐⭐"),
                SizedBox(
                  width: 15.0,
                ),
                Text(
                  "4.5(108 reviews)",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
        child: GestureDetector(
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/4.jpg"),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(10.0)),
            margin:
                EdgeInsets.only(left: 10.0, top: 5.0, bottom: 10.0, right: 5.0),
            height: 180.0,
            width: 180.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 250.0, top: 15.0),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  width: 80.0,
                  height: 20.0,
                  child: Text(
                    "50-60 min",
                    style: TextStyle(fontSize: 14.0, color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
          onTap: (){
            showDialog(
                context: context,
                builder: (context){
                  return AlertDialog(
                    title: Text("Fast Food"),
                    content: Container(
                      height: 150.0,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white,
                            offset: Offset.infinite,
                            spreadRadius: 10.0,
                            blurRadius: 10.0,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(15.0),
                        image: DecorationImage(
                          image: AssetImage("assets/images/4.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    actions: [
                      TextButton(
                        onPressed: (){
                          setState(() {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => BoshSahifa()));
                          });
                        },
                        child: Text("Bosh Sahifaga Qaytish",style: TextStyle(color: Colors.red, fontSize: 18.0, fontWeight: FontWeight.bold),),),
                      SizedBox(width: 55.0,),
                      TextButton(
                        onPressed: (){
                          setState(() {
                            Navigator.of(context).pop();
                          });
                        },
                        child: Text("Ortga Qaytish",style: TextStyle(color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.bold),),),
                    ],
                    backgroundColor: Colors.grey.withOpacity(0.6),
                  );
                });
          },
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "Fast Food",
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 200.0,
                ),
                Text("50-60 min"),
              ],
            ),
            Text("(Traditional), Lunch"),
            Row(
              children: [
                Text("⭐⭐⭐⭐⭐"),
                SizedBox(
                  width: 15.0,
                ),
                Text(
                  "4.5(108 reviews)",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
        child: GestureDetector(
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/2.jpg"),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(10.0)),
            margin:
                EdgeInsets.only(left: 10.0, top: 5.0, bottom: 10.0, right: 5.0),
            height: 180.0,
            width: 180.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 250.0, top: 15.0),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  width: 80.0,
                  height: 20.0,
                  child: Text(
                    "30-40 min",
                    style: TextStyle(fontSize: 14.0, color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
          onTap: (){
            showDialog(
                context: context,
                builder: (context){
                  return AlertDialog(
                    title: Text("Lagmonli Bosma"),
                    content: Container(
                      height: 150.0,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white,
                            offset: Offset.infinite,
                            spreadRadius: 10.0,
                            blurRadius: 10.0,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(15.0),
                        image: DecorationImage(
                          image: AssetImage("assets/images/2.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    actions: [
                      TextButton(
                        onPressed: (){
                          setState(() {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => BoshSahifa()));
                          });
                        },
                        child: Text("Bosh Sahifaga Qaytish",style: TextStyle(color: Colors.red, fontSize: 18.0, fontWeight: FontWeight.bold),),),
                      SizedBox(width: 55.0,),
                      TextButton(
                        onPressed: (){
                          setState(() {
                            Navigator.of(context).pop();
                          });
                        },
                        child: Text("Ortga Qaytish",style: TextStyle(color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.bold),),),
                    ],
                    backgroundColor: Colors.grey.withOpacity(0.6),
                  );
                });
          },
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "Lagmonli Bosma",
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 145.0,
                ),
                Text("30-40 min"),
              ],
            ),
            Text("Asian (Traditional), Lunch"),
            Row(
              children: [
                Text("⭐⭐⭐⭐⭐"),
                SizedBox(
                  width: 15.0,
                ),
                Text(
                  "4.5(108 reviews)",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/1.jpg"),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(10.0)),
          margin:
              EdgeInsets.only(left: 10.0, top: 5.0, bottom: 10.0, right: 5.0),
          height: 180.0,
          width: 180.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(right: 250.0, top: 15.0),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5.0),
                ),
                width: 80.0,
                height: 20.0,
                child: Text(
                  "20-30 min",
                  style: TextStyle(fontSize: 14.0, color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "Dolma",
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 220.0,
                ),
                Text("20-30 min"),
              ],
            ),
            Text("American (Traditional), Lunch"),
            Row(
              children: [
                Text("⭐⭐⭐⭐⭐"),
                SizedBox(
                  width: 15.0,
                ),
                Text(
                  "4.5(108 reviews)",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/1.jpg"),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(10.0)),
          margin:
              EdgeInsets.only(left: 10.0, top: 5.0, bottom: 10.0, right: 5.0),
          height: 180.0,
          width: 180.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(right: 250.0, top: 15.0),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5.0),
                ),
                width: 80.0,
                height: 20.0,
                child: Text(
                  "20-30 min",
                  style: TextStyle(fontSize: 14.0, color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "Double Burger",
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 160.0,
                ),
                Text("20-30 min"),
              ],
            ),
            Text("American (Traditional), Lunch"),
            Row(
              children: [
                Text("⭐⭐⭐⭐⭐"),
                SizedBox(
                  width: 15.0,
                ),
                Text(
                  "4.5(108 reviews)",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ),
    ];
  }
}



