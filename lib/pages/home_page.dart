import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salon_xe_may/blocs/category_bloc/bloc/category_bloc.dart';
import 'package:salon_xe_may/blocs/xemay_bloc/bloc/xemay_bloc.dart';
import 'package:salon_xe_may/models/xe_may.dart';
import 'package:salon_xe_may/pages/common_style.dart';
import 'package:salon_xe_may/pages/create_page.dart';
import 'package:salon_xe_may/pages/detail_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> listCategory = List.empty(growable: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quản lý salon xe máy'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const CreatePage();
              }));
            },
          ),
        ],
      ),
      body: Container(
        child: _buildHomeContent(),
        decoration: const BoxDecoration(gradient: Style.gradient),
        width: double.infinity,
        height: double.infinity,
      ),
    );
  }

  Widget _buildHomeContent() {
    return MultiBlocProvider(
        providers: [
          BlocProvider<XeMayBloc>(
            create: (context) => XeMayBloc(),
          ),
          BlocProvider(create: (context) => CategoryBloc()),
        ],
        child: Column(
          children: [
            _listViewCategory(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Tìm kiếm',
                  hintText: "Winner, Honda, Suzuki, ...",
                  fillColor: Colors.white70,
                  prefixIcon: Icon(Icons.search),
                ),
                onChanged: (value) {},
              ),
            ),
            Expanded(child: _buildListItem()),
          ],
        ));
  }

  Widget _buildListItem() {
    List<XeMay> listXeMay = [];
    return BlocBuilder<XeMayBloc, XeMayState>(
      builder: (context, state) {
        if (state is XeMayLoaded) {
          listXeMay = state.listXeMay;
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: GridView.builder(
              itemCount: listXeMay.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 20,
                childAspectRatio: 0.8,
              ),
              itemBuilder: (context, index) {
                return _gridViewItemBuilder(listXeMay[index]);
              },
            ),
          );
        } else if (state is XeMayInitial) {
          return Container();
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }

  Widget _gridViewItemBuilder(XeMay item) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => DetailPage(xeMay: item)));
      },
      child: Card(
        color: Colors.teal[100],
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                child: Image.network(item.thumbnail),
              ),
              Text(
                item.tenXe,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                item.giaToMoney(),
                style: const TextStyle(
                    fontSize: 20,
                    color: Colors.red,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                (item.soLuong > 0) ? "Còn hàng" : "Hết hàng",
                style: const TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _listViewCategory() {
    return BlocBuilder<CategoryBloc, CategoryState>(builder: (context, state) {
      if (state is CategoryInitial) {
        context.read<CategoryBloc>().add(LoadCategory());
        return Container();
      } else if (state is CategoryLoading) {
        return Container();
      } else if (state is CategoryLoaded) {
        listCategory = state.categories;
        context.read<CategoryBloc>().add(SelectCategory(0));
        context.read<XeMayBloc>().add(LoadXeMay());
        return Container();
      } else if (state is CategorySelected) {
        int selectedIndex = state.index;
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
          child: SizedBox(
            height: 25,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: listCategory.length,
              itemBuilder: (context, index) =>
                  _buildListItemCategory(context, index, selectedIndex),
            ),
          ),
        );
      } else {
        return const Text('Lỗi');
      }
    });
  }

  Widget _buildListItemCategory(
      BuildContext _context, int index, int selectedIndex) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: GestureDetector(
        onTap: () {
          _context.read<CategoryBloc>().add(SelectCategory(index));
          _context.read<XeMayBloc>().add(LoadXeMay());
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(listCategory[index],
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: (index == selectedIndex)
                      ? FontWeight.w600
                      : FontWeight.w300,
                )),
            Container(
              height: 2,
              width: (index == selectedIndex) ? 40 : 0,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
