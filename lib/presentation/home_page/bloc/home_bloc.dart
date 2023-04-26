import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listbag_item_model.dart';
import '../models/listsettings_item_model.dart';
import 'package:e_commerce_app/presentation/home_page/models/home_model.dart';
import 'package:e_commerce_app/data/models/list/post_list_resp.dart';
import 'package:e_commerce_app/data/models/list/post_list_req.dart';
import 'dart:async';
import 'package:e_commerce_app/data/repository/repository.dart';
import 'package:fluttertoast/fluttertoast.dart';

part 'home_event.dart';

part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(HomeState initialState) : super(initialState) {
    on<HomeInitialEvent>(_onInitialize);
    on<CreateListEvent>(_callCreateList);
  }

  final _repository = Repository();

  var postListResp = PostListResp();

  _onInitialize(HomeInitialEvent event, Emitter<HomeState> emit,) async {
    emit(state.copyWith(homeModelObj: state.homeModelObj?.copyWith(
        listbagItemList: fillListbagItemList(),
        listsettingsItemList: fillListsettingsItemList())));
    add(CreateListEvent(onCreateListEventError: () {
      _onCreateListEventError();
    },),);
  }

  List<ListbagItemModel> fillListbagItemList() {
    return List.generate(2, (index) => ListbagItemModel());
  }

  List<ListsettingsItemModel> fillListsettingsItemList() {
    return List.generate(2, (index) => ListsettingsItemModel());
  }

  FutureOr<void> _callCreateList(CreateListEvent event,
      Emitter<HomeState> emit,) async {
    var postListReq = PostListReq(

    );
    await _repository.createList(
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjYzYTNmOTI0NTNjODViYzEyNjU4ZjNiZSIsInVzZXJuYW1lIjoiSnVkZ2VfQ3JvbmluIiwiaWF0IjoxNjcxNjk3MTcxfQ.hbZLKSsS6Mdj1ndhAf4rm_5we4iWYvKY1VPSo51sQRM',
      },
      requestData: postListReq.toJson(),
    )
        .then((value) async {
      postListResp = value;
      _onCreateListSuccess(value, emit);
    })
        .onError((error, stackTrace) {
      //implement error call
      _onCreateListError();
      event.onCreateListEventError.call();
    })
    ;
  }

  void _onCreateListSuccess(PostListResp resp, Emitter<HomeState> emit,) {
    var listsettingsItemModelList = <ListsettingsItemModel>[];
    if (resp!.data!.data! != null && resp!.data!.data!.isNotEmpty) {
      for (var element in resp!.data!.data!) {
        var listsettingsItemModel = ListsettingsItemModel();
        listsettingsItemModel.jobtypeTxt = element.email!.toString();
        listsettingsItemModelList.add(listsettingsItemModel);
      }
    }
    emit(state.copyWith(homeModelObj: state.homeModelObj?.copyWith(
      listsettingsItemList: listsettingsItemModelList,),),);
  }

  void _onCreateListError() {
    //implement error method body...
  }

  void _onCreateListEventError() {
     Fluttertoast.showToast(msg: 'Something went wrong, Please try again',);
  }
}
