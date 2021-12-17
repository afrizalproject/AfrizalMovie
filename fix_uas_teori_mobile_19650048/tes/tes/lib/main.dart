import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:tes/viewmodel/services/services.dart';

import 'viewmodel/bloc/blocs.dart';
import 'view/pages/pages.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider.value(
      value: AuthServices.userStream,
      child: MultiBlocProvider(
          providers: [
            BlocProvider(create: (_) => PageBloc()),
            BlocProvider(create: (_) => UserBloc()),
            BlocProvider(create: (_) => ThemeBloc()),
            BlocProvider(create: (_) => MovieBloc()..add(FetchMovie())),
            BlocProvider(create: (_) => TicketBloc()),
          ],
          child: BlocBuilder<ThemeBloc, ThemeState>(
              builder: (_, themeState) => MaterialApp(
                  theme: themeState.themeData,
                  debugShowCheckedModeBanner: false,
                  home: Wrapper()))),
    );
  }
}
