import 'package:adv_ch_9/helper/recipe_helper.dart';
import 'package:adv_ch_9/screens/Lec-9.1/modal/recipe_modal.dart';
import 'package:flutter/material.dart';

class RecipeProvider extends ChangeNotifier{
  RecipeHelper recipeHelper = RecipeHelper();
  RecipeModal? recipeModal;

  Future<RecipeModal?> fromApi() async {
    final data = await recipeHelper.fetchDataFromApi();
    recipeModal = RecipeModal.fromJson(data);
    print('------------provider------------------');
    return recipeModal;
  }
}