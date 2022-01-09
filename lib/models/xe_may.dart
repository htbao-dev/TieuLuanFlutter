import 'package:intl/intl.dart';

class XeMay {
  String maXe;
  String tenXe;
  String thumbnail;
  List<String> hinhAnh;
  List<String> mauXe;
  int gia;
  String moTa;
  int soLuong;
  DateTime namSanXuat;
  String nhaSanXuat;
  DateTime ngayNhap;
  ThongSo thongSo;

  XeMay(
      {required this.maXe,
      required this.tenXe,
      required this.thumbnail,
      required this.hinhAnh,
      required this.mauXe,
      required this.gia,
      required this.moTa,
      required this.soLuong,
      required this.nhaSanXuat,
      required this.namSanXuat,
      required this.ngayNhap,
      required this.thongSo});

  String giaToMoney() {
    var format = NumberFormat("#,##0");
    return format.format(gia) + ' VND';
  }
}

class ThongSo {
  double khoiLuong;
  double dai, rong, cao;
  double dungTichBinh;
  String kichCoLopTruoc;
  String kichCoLopSau;
  String phuocTruoc;
  String phuocSau;

  ThongSo(
      {required this.khoiLuong,
      required this.dai,
      required this.rong,
      required this.cao,
      required this.dungTichBinh,
      required this.kichCoLopTruoc,
      required this.kichCoLopSau,
      required this.phuocTruoc,
      required this.phuocSau});
}
