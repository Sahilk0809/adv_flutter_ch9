import 'package:adv_ch_9/helper/e_commerce_helper.dart';
import 'package:adv_ch_9/screens/Lec-9.1.2/modal/e_commerce_modal.dart';
import 'package:flutter/cupertino.dart';

class ECommerceProvider extends ChangeNotifier{
  ECommerceHelper eCommerceHelper = ECommerceHelper();
  ECommerceModal? eCommerceModal;

  Future<ECommerceModal?> fromApi() async {
    final data = await eCommerceHelper.fetchDataFromApi();
    eCommerceModal = ECommerceModal.fromJson(data);
    print('-----------------Provider----------------------');
    // notifyListeners();
    return eCommerceModal;
  }
}