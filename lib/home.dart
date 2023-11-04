import 'package:eventnstate/bloc/bmibloc.dart';
import 'package:eventnstate/bloc/event.dart';
import 'package:eventnstate/bloc/state.dart';
import 'package:eventnstate/model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: blocBody(),
    );
  }
  Widget blocBody() {
    return BlocProvider(
      create: (context) => BmiBloc(

      )..add(LoadBmiCal()),
      child: BlocBuilder<BmiBloc, BmiState>(
        builder: (context, state) {
          if (state is BmiInitial) {
            return const Center(
              child: CircularProgressIndicator(color:Colors.black ,),
            );
          }if (state is BmiLoaded) {
            List<Bmi> userList = state.bmi;
            return ListView.builder(
                    itemCount: userList.length ,
                    itemBuilder: (context,index) {
                      return Padding(
                          padding:
                          const EdgeInsets.symmetric(
                              vertical: 4, horizontal: 8),
                          child: Card(
                              color: Theme
                                  .of(context)
                                  .primaryColor,
                              child: ListTile(
                                title: TextFormField(
                                  keyboardType: TextInputType.number,
                                  decoration: const InputDecoration(
                                      labelText: 'weight (kg)'),
                                  onChanged: (value) {
                                    userList[index].height;
                                  },
                                  style: const TextStyle(color: Colors.white),
                                ),
                                subtitle: TextFormField(
                                  keyboardType: TextInputType.number,
                                  decoration: const InputDecoration(
                                      labelText: 'weight (kg)'),
                                  onChanged: (value) {
                                    userList[index].weight;
                                  },
                                  style: const TextStyle(color: Colors.white),
                                ),


                              )));

                    });

          }

          return Container();
        },
      ),
    );
  }

}
