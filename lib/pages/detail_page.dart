import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salon_xe_may/blocs/detail_bloc/bloc/detail_bloc.dart';
import 'package:salon_xe_may/models/xe_may.dart';
import 'package:salon_xe_may/pages/common_style.dart';

import 'detail_edit_page.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key, required this.xeMay}) : super(key: key);
  final XeMay xeMay;
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  final DetailBloc _detailBloc = DetailBloc();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _detailBloc,
      child: BlocListener<DetailBloc, DetailState>(
        listener: (context, state) {
          if (state is DetailEdit) {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => DetailEditPage(
                xeMay: state.xeMay,
              ),
            ));
          } else if (state is DetailDelete) {
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text('Bạn có muốn xoá ${state.xeMay.tenXe} không?'),
                    actions: <Widget>[
                      TextButton(
                        child: Text('Có'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                      TextButton(
                        child: Text("Không"),
                        onPressed: () {},
                      )
                    ],
                  );
                });
          }
        },
        child: Scaffold(
          backgroundColor: Theme.of(context).backgroundColor,
          appBar: AppBar(
            title: Row(
              children: [
                SizedBox(
                    height: 50, child: Image.network(widget.xeMay.thumbnail)),
                const SizedBox(width: 10),
                Text(widget.xeMay.tenXe)
              ],
            ),
            actions: [
              PopupMenuButton(
                  onSelected: _onPopupSelect,
                  itemBuilder: (context) {
                    return [
                      const PopupMenuItem(
                        child: Text('Chỉnh sửa'),
                        value: 1,
                      ),
                      const PopupMenuItem(
                        child: Text('Xoá'),
                        value: 2,
                      ),
                    ];
                  })
            ],
          ),
          body: SingleChildScrollView(
            child: Container(
              decoration: const BoxDecoration(gradient: Style.gradient),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _carousel(widget.xeMay.hinhAnh),
                  Padding(
                    padding: const EdgeInsets.only(left: 25, bottom: 5),
                    child: Text(
                      widget.xeMay.tenXe,
                      style: const TextStyle(
                        fontSize: 30,
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 25,
                      bottom: 10,
                    ),
                    child: _listMauXe(widget.xeMay.mauXe),
                  ),
                  _info(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _listMauXe(List<String> mauXe) {
    return Row(
      children: [
        for (var i = 0; i < mauXe.length; i++)
          Icon(
            Icons.circle,
            color: Color(int.parse(mauXe[i], radix: 16) + 0xFF000000),
          )
      ],
    );
  }

  void _onPopupSelect(int value) {
    if (value == 1) {
      _detailBloc.add(EditEvent(widget.xeMay));
    } else if (value == 2) {
      _detailBloc.add(DeleteButtonPressed(widget.xeMay));
    }
  }

  Widget _info() {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 20,
          left: 20,
          right: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Giá từ: " + widget.xeMay.giaToMoney(),
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: [
                  const Text("Số lượng: ",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      )),
                  Text(
                    widget.xeMay.soLuong.toString(),
                    style: const TextStyle(
                      fontSize: 18,
                    ),
                  )
                ],
              ),
            ),
            Text(
              widget.xeMay.moTa,
              textAlign: TextAlign.justify,
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
            _thongSoKyThuat(widget.xeMay.thongSo),
          ],
        ),
      ),
    );
  }

  Widget _carousel(List<String> listHinhAnh) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: CarouselSlider.builder(
        itemCount: listHinhAnh.length,
        itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
            itemBuilder(listHinhAnh[itemIndex]),
        options: CarouselOptions(
          viewportFraction: 0.6,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 4),
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          // onPageChanged: callbackFunction,
          // scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }

  Widget itemBuilder(String hinhAnh) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        // width: 200,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(hinhAnh),
            fit: BoxFit.fill,
          ),
          boxShadow: const [
            BoxShadow(
              color: Colors.black,
              offset: Offset(0.0, 1.0), //(x,y)
              blurRadius: 6.0,
            ),
          ],
        ),
      ),
    );
  }

  Widget _thongSoKyThuat(ThongSo thongSo) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        children: [
          const Text("Thông số kỹ thuật",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              )),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Table(
              columnWidths: const {
                0: FlexColumnWidth(1.5),
                1: FlexColumnWidth(2.0),
              },
              children: [
                _tableRow(
                    "Khối lượng", thongSo.khoiLuong.toString() + " kg", true),
                _tableRow(
                    "Dài x Rộng x Cao",
                    thongSo.dai.toString() +
                        " x " +
                        thongSo.rong.toString() +
                        " x " +
                        thongSo.cao.toString(),
                    false),
                _tableRow("Dung tích bình xăng",
                    thongSo.dungTichBinh.toString() + "l", true),
                _tableRow("Kích cỡ lốp trước", thongSo.kichCoLopTruoc, false),
                _tableRow("Kích cỡ lốp sau", thongSo.kichCoLopSau, true),
                _tableRow("Phuộc trước", thongSo.phuocTruoc, false),
                _tableRow("Phuộc sau", thongSo.phuocSau, true),
              ],
            ),
          ),
        ],
      ),
    );
  }

  TableRow _tableRow(String key, String value, bool hightLight) {
    const double fontSize = 16;
    return TableRow(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(key, style: const TextStyle(fontSize: fontSize)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(value,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: fontSize,
                )),
          ),
        ],
        decoration: hightLight
            ? BoxDecoration(
                color: Colors.grey[200],
              )
            : null);
  }
}
