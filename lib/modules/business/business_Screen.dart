import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_app/layout/cubit/cubit.dart';
import 'package:new_app/layout/cubit/states.dart';
import 'package:new_app/shared/components/components.dart';


class BusinessScreen extends StatelessWidget {
  const BusinessScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit, NewsStates >(
      listener: (context, state){},
      builder: (context, state){
        var list = NewsCubit.get(context).business;
        return articleBuilder(list, context);
      },
    );
  }
}