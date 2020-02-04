

import 'dart:async';

import 'package:flushbar/flushbar.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:Etqa_smile/enums/viewstate.dart';
import 'package:Etqa_smile/viewmodels/core/base_viewmodel.dart';
import 'package:provider/provider.dart';

import '../../locator.dart';

class BaseView<T extends BaseViewModel> extends StatefulWidget {
  final Widget Function(BuildContext context, T model, Widget child) builder;
  final Function(T) onModelReady;
  final Function(BuildContext context, T model, dynamic event) onErrorOccured;

  BaseView({this.builder, this.onModelReady,this.onErrorOccured});

  @override
  _BaseViewState<T> createState() => _BaseViewState<T>();
}

class _BaseViewState<T extends BaseViewModel> extends State<BaseView<T>> {
  T model = locator<T>();
  StreamSubscription<dynamic> erroreventSubscription;
  @override
  void initState() {
    if (widget.onModelReady != null) {
      widget.onModelReady(model);
    }

    //error
    erroreventSubscription = model.onErrorOccur?.listen(onEventOccured);

    model.state;
    
    super.initState();
  }

  void onEventOccured(dynamic event) {

    if (widget.onErrorOccured != null && mounted) {
      widget.onErrorOccured(context, model, event);
     setState(() {});
    }

    Flushbar(
                  title:  "Hey Ninjalove",
                  message:  "Lorem Ipsum is simply dummy text of the printing and typesetting industry",
                  duration:  Duration(seconds: 3),              
                )..show(context);
   
  }

  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider<T>(
        builder: (context) => model,
        child: Consumer<T>(builder: widget.builder));
  }

   @override
  void dispose() {
    erroreventSubscription?.cancel();
    super.dispose();
  }



  







}