import 'package:flutter/material.dart';
import 'package:salon_xe_may/models/xe_may.dart';

import 'common_style.dart';

class CreatePage extends StatelessWidget {
  const CreatePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Thêm mới'),
          actions: [
            TextButton(
              child: const Text(
                "Lưu",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              onPressed: () {
                // BlocProvider.of<DetailBloc>(context).add(
                //   DetailSave(xeMay: xeMay),
                // );
              },
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: const BoxDecoration(gradient: Style.gradient),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // _carousel(widget.xeMay.hinhAnh),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Tên xe", style: _style()),
                      ),
                    ),
                    TextFormField(
                      onChanged: (value) {
                        // BlocProvider.of<EditDetailBloc>(context)
                        //     .add(EditDetailChangeName(value));
                      },
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Giá", style: _style()),
                        ),
                      ),
                      TextFormField(
                        onChanged: (value) {
                          // BlocProvider.of<EditDetailBloc>(context)
                          //     .add(EditDetailChangeName(value));
                        },
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Số lượng", style: _style()),
                        ),
                      ),
                      TextFormField(
                        onChanged: (value) {
                          // BlocProvider.of<EditDetailBloc>(context)
                          //     .add(EditDetailChangeName(value));
                        },
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Mô tả", style: _style()),
                        ),
                      ),
                      TextFormField(
                        maxLines: 7,
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 25),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onChanged: (value) {
                          // BlocProvider.of<EditDetailBloc>(context)
                          //     .add(EditDetailChangeName(value));
                        },
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Column(
                    children: [
                      Text("Thông số kỹ thuật", style: _style()),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Container(
                          color: Colors.white,
                          child: Table(
                            border:
                                TableBorder.all(color: Colors.blue, width: 1),
                            defaultVerticalAlignment:
                                TableCellVerticalAlignment.middle,
                            columnWidths: const {
                              0: FlexColumnWidth(1.5),
                              1: FlexColumnWidth(2.0),
                            },
                            children: [
                              _tableRow("Khối lượng", " kg"),
                              _tableRow("Chiều dài", "mm"),
                              _tableRow("Chiều rộng", " mm"),
                              _tableRow("Chiều cao", " mm"),
                              _tableRow("Dung tích bình xăng", "l"),
                              _tableRow("Kích cỡ lốp trước", ""),
                              _tableRow("Kích cỡ lốp sau", ""),
                              _tableRow("Phuộc trước", ""),
                              _tableRow(
                                "Phuộc sau",
                                "",
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  TableRow _tableRow(String key, String value) {
    const double fontSize = 16;
    return TableRow(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(key, style: const TextStyle(fontSize: fontSize)),
        ),
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              initialValue: value,
              onChanged: (value) {
                // BlocProvider.of<EditDetailBloc>(context)
                //     .add(EditDetailChangeName(value));
              },
            )),
      ],
    );
  }

  TextStyle _style() {
    return TextStyle(fontSize: 17, color: Colors.blue[900]);
  }
}
