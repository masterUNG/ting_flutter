import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import './bottom_nav_bar.dart';
import './experiences_screen.dart';

class ApartmentDetailScreen extends StatelessWidget {
  Widget mySizeBox(double doubleSize) {
    return SizedBox(
      width: doubleSize,
    );
  }

  Widget showImage(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          Container(
            height: 200,
            decoration: BoxDecoration(
              image: new DecorationImage(
                image: ExactAssetImage('assets/images/img5.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
              child: Container(
                  padding: EdgeInsets.only(left: 12, top: 38),
                  child: GestureDetector(
                    onTap: () {
                      print('You Click');
                      // Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.navigate_before,
                      color: Colors.white,
                      size: 34,
                    ),
                  ))),
        ],
      ),
    );
  }

  Widget headTitle(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.98,
      padding: EdgeInsets.only(left: 8),
      alignment: Alignment.topLeft,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) => ExperiencesScreen()),
          );
        },
        child: Text(
          "Centric studio with roof\ntop terrace ",
          style: TextStyle(fontSize: 28, fontFamily: 'OpenSansRegular'),
        ),
      ),
    );
  }

  Widget subTitle(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.98,
      padding: EdgeInsets.only(left: 8),
      alignment: Alignment.topLeft,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: Text(
              'Entire apartment',
              style: TextStyle(fontFamily: 'OpenSansBold', fontSize: 16),
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 18),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/img1.jpg'),
            ),
          )
        ],
      ),
    );
  }

  Widget showTextBy() {
    return Container(
      alignment: Alignment.topLeft,
      padding: EdgeInsets.only(left: 12),
      child: Text(
        '85 CHF per night',
        style: TextStyle(
            fontFamily: 'OpenSansRegular',
            fontSize: 16,
            color: Colors.black,
            fontWeight: FontWeight.w400),
      ),
    );
  }

  Widget showRate() {
    return Row(children: [
      Container(
        padding: EdgeInsets.only(left: 8),
        alignment: Alignment.topLeft,
        child: SmoothStarRating(
          allowHalfRating: false,
          onRatingChanged: (v) {},
          starCount: 5,
          rating: 2,
          size: 30.0,
          color: Colors.green,
          borderColor: Colors.green,
        ),
      ),
      Container(
          child: Text(
        ' 3 Votes',
        style: TextStyle(
            fontFamily: 'OpenSansRegular',
            fontSize: 17,
            color: Colors.black,
            fontWeight: FontWeight.w400),
      )),
    ]);
  }

  Widget showLine(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.94,
      height: 2,
      color: Colors.grey,
    );
  }

  Widget showLastText() {
    return Container(
      alignment: Alignment.topLeft,
      padding: EdgeInsets.only(left: 12),
      child: Text(
        'Small and cozy top floor studio with its own\nroof top terrace',
        style: TextStyle(
            color: Colors.black, fontFamily: 'OpenSansRegular', fontSize: 16),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: <Widget>[
            showImage(context),
            mySizeBox(8.0),
            headTitle(context),
            mySizeBox(12.0),
            subTitle(context),
            mySizeBox(8.0),
            showTextBy(),
            mySizeBox(6.0),
            showRate(),
            mySizeBox(22.0),
            showLine(context),
            mySizeBox(12.0),
            showLastText(),
          ],
        ),
        bottomNavigationBar: CustomBottomNavBar(context, 0));
  }
}
