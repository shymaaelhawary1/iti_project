import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iti_project/bannerModel.dart';
import 'package:iti_project/helpers/apiConst.dart';
import 'package:iti_project/helpers/apiHelper.dart';
import 'package:meta/meta.dart';

part 'state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  BannerModel bannerModel = BannerModel();

  void getbanners() async {
    emit(HomeBannerLoading());
    try {
      final response = await ApiHelper.instance.get(
        ApiConst.BANNER,
      );
      bannerModel = BannerModel.fromJson(response.data);
      if (bannerModel.status == true) {
        emit(HomeBannerSuccess());
      } else {
        emit(HomeBannerError());
      }
    } catch (e) {
      emit(HomeBannerError());
    }
  }
}