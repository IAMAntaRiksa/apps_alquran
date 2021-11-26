import 'package:alquran/bloc/home_bloc.dart';
import 'package:alquran/data/model/quran_surah_response.dart';
import 'package:alquran/data/network/api_client_response.dart';
import 'package:alquran/ui/home/componets/home_vertical_item_view.dart';
import 'package:alquran/values/assets.dart';
import 'package:alquran/values/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
    context.read<HomeBloc>().add(GetHomeEvent());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        if (state is GetHomeLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is GetHomeError) {
          return Column(
            children: [
              const Text('Eror'),
              IconButton(onPressed: () {}, icon: const Icon(Icons.refresh))
            ],
          );
        } else if (state is GetHomeLoaded) {
          return HomeLoded(state);
        }

        return const Center(child: CircularProgressIndicator());
      },
    );
  }

  ListView HomeLoded(GetHomeLoaded state) {
    return ListView(
      children: [
        Container(
          padding: const EdgeInsets.only(top: 47, right: 20, left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      iconMENU,
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Text('Al-QURAN', style: titleTextStyle),
                    ),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        iconSearch,
                      )),
                ],
              ),
              Container(
                padding: const EdgeInsets.all(20),
                child: Text('Assalamualaikum', style: titleAss),
              ),
              Container(
                padding: const EdgeInsets.only(top: 4, left: 20),
                child: Text('AntaRiksa', style: titleAccount),
              ),
              const SizedBox(height: 24, width: 20),
              Container(
                padding: const EdgeInsets.only(right: 20, left: 20),
                child: Stack(
                  children: [
                    Container(
                      height: 160,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          image: AssetImage(
                            imageLog,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 19,
                      left: 20,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(iconalquran1),
                              const SizedBox(width: 10),
                              Text('Last Read', style: textTitle),
                            ],
                          ),
                          const SizedBox(height: 20),
                          Text('Al-Fatiha', style: textTitle2),
                          const SizedBox(height: 4),
                          Text('Ayat No : 1', style: textTitle2),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              HomeVertialItemView(
                tabController: _tabController,
                itemView: state.dataHome.itemQuran,
              )
            ],
          ),
        ),
      ],
    );
  }
}
