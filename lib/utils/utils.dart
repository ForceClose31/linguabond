import 'package:flutter/material.dart';
import 'package:linguabond/models/models.dart';
import 'package:linguabond/views/pages/pages.dart';
import 'package:linguabound_widget/linguabound_widget.dart';

final GlobalKey<HomePageState> homePageKey = GlobalKey();

const kColorBannerBackground = Color(0xFFFEF3E7);
const kBorderRadiusBanner = BorderRadius.all(Radius.circular(20.0));
const kBannerShadow = [BoxShadow(color: kColorBorder, offset: Offset(0.0, 5.0))];

const kDummyPictureProfileUrl = 'https://avatars.githubusercontent.com/u/116476102?v=4';

const keyToken = 'token';

User? currentUser;
