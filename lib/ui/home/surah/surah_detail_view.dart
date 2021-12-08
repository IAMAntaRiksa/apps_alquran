import 'dart:async';

import 'package:alquran/values/assets.dart';
import 'package:alquran/values/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:alquran/bloc/alquran_bloc.dart';
import 'package:flutter_svg/svg.dart';

class SurahDetailBodyView extends StatefulWidget {
  const SurahDetailBodyView({
    Key? key,
    required this.idSurah,
    required this.nameSurah,
  }) : super(key: key);
  final int idSurah;
  final String nameSurah;
  @override
  State<SurahDetailBodyView> createState() => _SurahDetailBodyViewState();
}

class _SurahDetailBodyViewState extends State<SurahDetailBodyView> {
  // Refresh
  final Completer _refreshCompleter = Completer();
  @override
  void initState() {
    // BlocProvider.of<AlquranBloc>(context)
    //     .add(GetAlQuranDetailEvent(alquranIdDetail: widget.idSurah));

    context
        .read<AlquranBloc>()
        .add(GetAlQuranDetailEvent(alquranIdDetail: widget.idSurah));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AlquranBloc, AlquranState>(
      builder: (context, state) {
        if (state is AlquranDetailLoadedLoading) {
          return const Center(child: CircularProgressIndicator());
        }
        if (state is AlquranDetailLoadedError) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(state.message),
                Center(
                  child: IconButton(
                    onPressed: () {
                      context.read<AlquranBloc>().add(GetAlQuranDetailEvent(
                          alquranIdDetail: widget.idSurah));
                    },
                    icon: const Icon(Icons.refresh),
                  ),
                ),
              ],
            ),
          );
        } else if (state is AlquranDetailLoadedSuccess) {
          return RefreshIndicator(
            onRefresh: () {
              context
                  .read<AlquranBloc>()
                  .add(GetAlQuranDetailEvent(alquranIdDetail: widget.idSurah));
              return _refreshCompleter.future;
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(24),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        height: 257,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35),
                          image: const DecorationImage(
                            image: AssetImage(
                              imageDetail,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 20,
                        child: Column(
                          children: [
                            Text(state.surahModel.data.name.transliteration.id,
                                style: textTitle),
                            const SizedBox(height: 10),
                            Text('The Opening', style: textTitle),
                            const SizedBox(height: 10),
                            const Divider(
                              height: 20,
                              thickness: 20,
                              color: Colors.black,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('${state.surahModel.data.numberOfVerses}',
                                    style: textTitle),
                                const SizedBox(width: 3),
                                SvgPicture.asset(
                                  iconelive,
                                  height: 10,
                                ),
                                const SizedBox(width: 3),
                                Text(
                                    state.surahModel.data.name.transliteration
                                        .id,
                                    style: textTitle)
                              ],
                            ),
                            const SizedBox(height: 30),
                            Text('بِسْمِ اللَّهِ الرَّحْمَٰنِ الرَّحِيم',
                                style: textTitle),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                // HomeDetailViews(detailView: dataa)
                Expanded(
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: state.surahModel.data.verses.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(24),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      IconButton(
                                        onPressed: () {},
                                        icon: SvgPicture.asset(iconRecht),
                                      ),
                                      Positioned(
                                        child: Text(
                                            '${state.surahModel.data.verses[index].number.inSurah}',
                                            style: const TextStyle(
                                                color: Colors.white)),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      IconButton(
                                          onPressed: () {},
                                          icon: SvgPicture.asset(iconShare)),
                                      IconButton(
                                          onPressed: () {},
                                          icon: SvgPicture.asset(iconPlay)),
                                      IconButton(
                                          onPressed: () {},
                                          icon: SvgPicture.asset(iconSave)),
                                    ],
                                  )
                                ],
                              ),
                              const SizedBox(height: 25),
                              Text(
                                state.surahModel.data.verses[index].text.arab,
                                style: titleAss,
                              ),
                              const SizedBox(height: 25),
                              Text(
                                state.surahModel.data.verses[index].translation
                                    .id,
                              )
                            ],
                          ),
                        );
                      }),
                ),
              ],
            ),
          );
        }
        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}
