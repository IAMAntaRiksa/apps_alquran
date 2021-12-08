import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:alquran/bloc/alquran_bloc.dart';
import 'package:alquran/ui/home/surah/surah_detail_screen.dart';
import 'package:alquran/values/assets.dart';
import 'package:alquran/values/style.dart';

class Home extends StatefulWidget {
  const Home({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final TabController controller;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // Refresh
  final Completer _refreshCompleter = Completer();

  @override
  void initState() {
    super.initState();
    context.read<AlquranBloc>().add(GetAlQuranEvent());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AlquranBloc, AlquranState>(
      builder: (context, state) {
        if (state is AlquranLoadedLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is AlquranLoadedError) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(state.message),
                Center(
                  child: IconButton(
                    onPressed: () {
                      context.read<AlquranBloc>().add(GetAlQuranEvent());
                    },
                    icon: const Icon(Icons.refresh),
                  ),
                ),
              ],
            ),
          );
        } else if (state is AlquranLoadedSuccess) {
          return Column(
            children: [
              Expanded(
                child: TabBarView(
                  controller: widget.controller,
                  children: [
                    RefreshIndicator(
                      onRefresh: () {
                        context.read<AlquranBloc>().add(GetAlQuranEvent());
                        return _refreshCompleter.future;
                      },
                      child: ListView.builder(
                        itemCount: state.alquranModel.data.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(
                                context,
                                SurahDetaiScreen.routeName,
                                arguments: ArgumentsDetail(
                                  alquranId: state
                                      .alquranModel.data[index].number
                                      .toInt(),
                                  alquranName: state.alquranModel.data[index]
                                      .name.transliteration.id,
                                ),
                              );
                            },
                            child: SizedBox(
                              height: 75,
                              child: Card(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 20),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(100),
                                            child: SvgPicture.asset(
                                              iconNO,
                                              width: 50,
                                              height: 50,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Positioned(
                                            child: Text(
                                                '${state.alquranModel.data[index].number}'),
                                          )
                                        ],
                                      ),
                                      const SizedBox(width: 16),
                                      Expanded(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                                state.alquranModel.data[index]
                                                    .name.transliteration.en,
                                                style: titleAccount1),
                                            Row(
                                              children: [
                                                Text(
                                                    state
                                                        .alquranModel
                                                        .data[index]
                                                        .revelation
                                                        .en,
                                                    style: titleAss1),
                                                const SizedBox(width: 3),
                                                SvgPicture.asset(
                                                  iconelive,
                                                  height: 10,
                                                ),
                                                const SizedBox(width: 3),
                                                Text(
                                                    '${state.alquranModel.data[index].numberOfVerses} ayat',
                                                    style: titleAss1),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Text(
                                          state.alquranModel.data[index].name
                                              .short,
                                          style: titleAccount1),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    const Text('2'),
                    const Text('3'),
                    const Text('4'),
                  ],
                ),
              ),
            ],
          );
        }
        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}
