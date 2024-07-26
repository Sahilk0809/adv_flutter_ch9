import 'package:adv_ch_9/helper/helper.dart';
import 'package:flutter/cupertino.dart';
import '../../../utils/global.dart';
import '../modal/pixabay_api_modal.dart';

class PixabayApiProvider extends ChangeNotifier{

  ApiHelper apiHelper = ApiHelper();
  PixabayApiModal? pixabayApiModal;
  String search = 'flower';

  void searchImage(String img){
    search = img;
    notifyListeners();
  }

  void clearSearch(){
    txtSearch.clear();
    notifyListeners();
  }

   Future<PixabayApiModal?> fromApi(String img) async {
    final data = await apiHelper.fetchApiData(img);
    pixabayApiModal = PixabayApiModal.fromApi(data);
    return pixabayApiModal;
  }
}