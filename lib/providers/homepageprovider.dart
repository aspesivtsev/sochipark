import 'package:flutter/material.dart';
import '../models/attractions.dart';

class HomePageProvider extends ChangeNotifier {
  bool _isProcessing = true;
  List<Attraction> _attractionList = [];

  bool get isProcessing => _isProcessing;

  setIsProcessing(bool value) {
    _isProcessing = value;
    notifyListeners();
  }

  List<Attraction> get attractionList => _attractionList;

  setAttractionList(List<Attraction> list) {
    _attractionList = list;
    notifyListeners();
  }

  Attraction getAttractionsByIndex(int index) => _attractionList[index];
}
