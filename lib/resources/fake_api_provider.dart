import 'package:salon_xe_may/models/xe_may.dart';
import 'package:salon_xe_may/resources/repository.dart';

class FakeApiProvier extends DataProvider {
  @override
  Future<List<XeMay>> fetchDataXeMay() {
    List<XeMay> xeMayList = List.empty(growable: true);

    xeMayList.add(XeMay(
        maXe: "xe01",
        tenXe: "Winner X",
        thumbnail:
            "https://cdn.honda.com.vn/motorbikes/December2021/UanjC5lq3Hin1fzzxkSU.png",
        hinhAnh: [
          "https://cdn.honda.com.vn/motorbike-strong-points/December2021/eUKep4O2Ccr3OizFH7B2.png",
          "https://cdn.honda.com.vn/motorbike-strong-points/December2021/AsIsd85eH2wDOjTews9F.png",
          "https://cdn.honda.com.vn/motorbike-strong-points/December2021/H5M3H3BtB0EMshHsjs7A.png",
          "https://cdn.honda.com.vn/motorbike-strong-points/December2021/okEk00cfgvukJ5T27Pz8.png",
          "https://cdn.honda.com.vn/motorbike-strong-points/December2021/SIoZlOWSZD5lacwW3JJ3.png"
        ],
        mauXe: [
          "fa031c",
          "0a686d",
          "107c7c",
        ],
        gia: 41000000,
        moTa:
            "WINNER X - tâm điểm thu hút mọi ánh nhìn. Mang diện mạo của một siêu xe thể thao cao cấp, WINNER X hoàn toàn mới sở hữu thiết kế ấn tượng, mạnh mẽ, cùng với các chi tiết được tinh chỉnh công phu, tất cả hội tụ để tạo ra siêu phẩm mang đầy tính đột phá của Honda.",
        soLuong: 10,
        namSanXuat: DateTime(2021),
        nhaSanXuat: "Honda",
        ngayNhap: DateTime(2021, 1, 1),
        thongSo: ThongSo(
            khoiLuong: 122,
            dai: 2019,
            rong: 727,
            cao: 1104,
            dungTichBinh: 4.5,
            kichCoLopTruoc: "90/80-17M/C 46P",
            kichCoLopSau: "120/70-17M/C 58P",
            phuocTruoc: "Ống lồng, giảm chấn thủy lực",
            phuocSau: "Lò xo trụ đơn")));

    xeMayList.add(XeMay(
        maXe: "xe02",
        tenXe: "SH mode 125cc",
        thumbnail:
            "https://cdn.honda.com.vn/motorbikes/December2021/PfppnE0OTCgYeZATSK5q.png",
        hinhAnh: [
          "https://cdn.honda.com.vn/motorbike-strong-points/December2021/eUKep4O2Ccr3OizFH7B2.png",
          "https://cdn.honda.com.vn/motorbike-strong-points/December2021/AsIsd85eH2wDOjTews9F.png",
          "https://cdn.honda.com.vn/motorbike-strong-points/December2021/H5M3H3BtB0EMshHsjs7A.png",
          "https://cdn.honda.com.vn/motorbike-strong-points/December2021/okEk00cfgvukJ5T27Pz8.png",
          "https://cdn.honda.com.vn/motorbike-strong-points/December2021/SIoZlOWSZD5lacwW3JJ3.png"
        ],
        mauXe: [
          "fa031c",
          "0a686d",
          "107c7c",
        ],
        gia: 55190000,
        moTa:
            "WINNER X - tâm điểm thu hút mọi ánh nhìn. Mang diện mạo của một siêu xe thể thao cao cấp, WINNER X hoàn toàn mới sở hữu thiết kế ấn tượng, mạnh mẽ, cùng với các chi tiết được tinh chỉnh công phu, tất cả hội tụ để tạo ra siêu phẩm mang đầy tính đột phá của Honda.",
        soLuong: 10,
        namSanXuat: DateTime(2021),
        nhaSanXuat: "Honda",
        ngayNhap: DateTime(2021, 1, 1),
        thongSo: ThongSo(
            khoiLuong: 122,
            dai: 2019,
            rong: 727,
            cao: 1104,
            dungTichBinh: 4.5,
            kichCoLopTruoc: "90/80-17M/C 46P",
            kichCoLopSau: "120/70-17M/C 58P",
            phuocTruoc: "Ống lồng, giảm chấn thủy lực",
            phuocSau: "Lò xo trụ đơn")));

    xeMayList.add(XeMay(
        maXe: "xe03",
        tenXe: "Lead 125cc",
        thumbnail:
            "https://cdn.honda.com.vn/motorbikes/December2021/PxbOtPG619Vte84CQHPg.png",
        hinhAnh: [
          "https://cdn.honda.com.vn/motorbike-strong-points/December2021/eUKep4O2Ccr3OizFH7B2.png",
          "https://cdn.honda.com.vn/motorbike-strong-points/December2021/AsIsd85eH2wDOjTews9F.png",
          "https://cdn.honda.com.vn/motorbike-strong-points/December2021/H5M3H3BtB0EMshHsjs7A.png",
          "https://cdn.honda.com.vn/motorbike-strong-points/December2021/okEk00cfgvukJ5T27Pz8.png",
          "https://cdn.honda.com.vn/motorbike-strong-points/December2021/SIoZlOWSZD5lacwW3JJ3.png"
        ],
        mauXe: [
          "fa031c",
          "0a686d",
          "107c7c",
        ],
        gia: 38990000,
        moTa:
            "WINNER X - tâm điểm thu hút mọi ánh nhìn. Mang diện mạo của một siêu xe thể thao cao cấp, WINNER X hoàn toàn mới sở hữu thiết kế ấn tượng, mạnh mẽ, cùng với các chi tiết được tinh chỉnh công phu, tất cả hội tụ để tạo ra siêu phẩm mang đầy tính đột phá của Honda.",
        soLuong: 10,
        namSanXuat: DateTime(2021),
        nhaSanXuat: "Honda",
        ngayNhap: DateTime(2021, 1, 1),
        thongSo: ThongSo(
            khoiLuong: 122,
            dai: 2019,
            rong: 727,
            cao: 1104,
            dungTichBinh: 4.5,
            kichCoLopTruoc: "90/80-17M/C 46P",
            kichCoLopSau: "120/70-17M/C 58P",
            phuocTruoc: "Ống lồng, giảm chấn thủy lực",
            phuocSau: "Lò xo trụ đơn")));

    xeMayList.add(XeMay(
        maXe: "xe04",
        tenXe: "Future 125 FI",
        thumbnail:
            "https://cdn.honda.com.vn/motorbikes/October2021/OH34NuhAe2Lht6EVDGj3.png",
        hinhAnh: [
          "https://cdn.honda.com.vn/motorbike-strong-points/December2021/eUKep4O2Ccr3OizFH7B2.png",
          "https://cdn.honda.com.vn/motorbike-strong-points/December2021/AsIsd85eH2wDOjTews9F.png",
          "https://cdn.honda.com.vn/motorbike-strong-points/December2021/H5M3H3BtB0EMshHsjs7A.png",
          "https://cdn.honda.com.vn/motorbike-strong-points/December2021/okEk00cfgvukJ5T27Pz8.png",
          "https://cdn.honda.com.vn/motorbike-strong-points/December2021/SIoZlOWSZD5lacwW3JJ3.png"
        ],
        mauXe: [
          "fa031c",
          "0a686d",
          "107c7c",
        ],
        gia: 30290000,
        moTa:
            "WINNER X - tâm điểm thu hút mọi ánh nhìn. Mang diện mạo của một siêu xe thể thao cao cấp, WINNER X hoàn toàn mới sở hữu thiết kế ấn tượng, mạnh mẽ, cùng với các chi tiết được tinh chỉnh công phu, tất cả hội tụ để tạo ra siêu phẩm mang đầy tính đột phá của Honda.",
        soLuong: 10,
        namSanXuat: DateTime(2021),
        nhaSanXuat: "Honda",
        ngayNhap: DateTime(2021, 1, 1),
        thongSo: ThongSo(
            khoiLuong: 122,
            dai: 2019,
            rong: 727,
            cao: 1104,
            dungTichBinh: 4.5,
            kichCoLopTruoc: "90/80-17M/C 46P",
            kichCoLopSau: "120/70-17M/C 58P",
            phuocTruoc: "Ống lồng, giảm chấn thủy lực",
            phuocSau: "Lò xo trụ đơn")));

    xeMayList.add(XeMay(
        maXe: "xe01",
        tenXe: "Super Cub C125",
        thumbnail:
            "https://cdn.honda.com.vn/motorbikes/October2021/AGlyT5hHi2yvLQUo2Y7L.png",
        hinhAnh: [
          "https://cdn.honda.com.vn/motorbike-strong-points/December2021/eUKep4O2Ccr3OizFH7B2.png",
          "https://cdn.honda.com.vn/motorbike-strong-points/December2021/AsIsd85eH2wDOjTews9F.png",
          "https://cdn.honda.com.vn/motorbike-strong-points/December2021/H5M3H3BtB0EMshHsjs7A.png",
          "https://cdn.honda.com.vn/motorbike-strong-points/December2021/okEk00cfgvukJ5T27Pz8.png",
          "https://cdn.honda.com.vn/motorbike-strong-points/December2021/SIoZlOWSZD5lacwW3JJ3.png"
        ],
        mauXe: [
          "fa031c",
          "0a686d",
          "107c7c",
        ],
        gia: 86990000,
        moTa:
            "WINNER X - tâm điểm thu hút mọi ánh nhìn. Mang diện mạo của một siêu xe thể thao cao cấp, WINNER X hoàn toàn mới sở hữu thiết kế ấn tượng, mạnh mẽ, cùng với các chi tiết được tinh chỉnh công phu, tất cả hội tụ để tạo ra siêu phẩm mang đầy tính đột phá của Honda.",
        soLuong: 10,
        namSanXuat: DateTime(2021),
        nhaSanXuat: "Honda",
        ngayNhap: DateTime(2021, 1, 1),
        thongSo: ThongSo(
            khoiLuong: 122,
            dai: 2019,
            rong: 727,
            cao: 1104,
            dungTichBinh: 4.5,
            kichCoLopTruoc: "90/80-17M/C 46P",
            kichCoLopSau: "120/70-17M/C 58P",
            phuocTruoc: "Ống lồng, giảm chấn thủy lực",
            phuocSau: "Lò xo trụ đơn")));

    xeMayList.add(XeMay(
        maXe: "xe01",
        tenXe: "Air Blade 125/150",
        thumbnail:
            "https://cdn.honda.com.vn/motorbikes/October2021/rlgE18sUOAYuTtuLCg9t.png",
        hinhAnh: [
          "https://cdn.honda.com.vn/motorbike-strong-points/December2021/eUKep4O2Ccr3OizFH7B2.png",
          "https://cdn.honda.com.vn/motorbike-strong-points/December2021/AsIsd85eH2wDOjTews9F.png",
          "https://cdn.honda.com.vn/motorbike-strong-points/December2021/H5M3H3BtB0EMshHsjs7A.png",
          "https://cdn.honda.com.vn/motorbike-strong-points/December2021/okEk00cfgvukJ5T27Pz8.png",
          "https://cdn.honda.com.vn/motorbike-strong-points/December2021/SIoZlOWSZD5lacwW3JJ3.png"
        ],
        mauXe: [
          "fa031c",
          "0a686d",
          "107c7c",
        ],
        gia: 41000000,
        moTa:
            "WINNER X - tâm điểm thu hút mọi ánh nhìn. Mang diện mạo của một siêu xe thể thao cao cấp, WINNER X hoàn toàn mới sở hữu thiết kế ấn tượng, mạnh mẽ, cùng với các chi tiết được tinh chỉnh công phu, tất cả hội tụ để tạo ra siêu phẩm mang đầy tính đột phá của Honda.",
        soLuong: 10,
        namSanXuat: DateTime(2021),
        nhaSanXuat: "Honda",
        ngayNhap: DateTime(2021, 1, 1),
        thongSo: ThongSo(
            khoiLuong: 122,
            dai: 2019,
            rong: 727,
            cao: 1104,
            dungTichBinh: 4.5,
            kichCoLopTruoc: "90/80-17M/C 46P",
            kichCoLopSau: "120/70-17M/C 58P",
            phuocTruoc: "Ống lồng, giảm chấn thủy lực",
            phuocSau: "Lò xo trụ đơn")));

    return Future.delayed(const Duration(seconds: 1), () {
      return xeMayList;
    });
  }

  Future<List<String>> fetchDataCategory() {
    List<String> categories = [
      "Tất cả",
      "Honda",
      "Yamaha",
      "Suzuki",
      "Kawasaki",
      "KTM"
    ];

    return Future.delayed(const Duration(seconds: 1), () {
      return categories;
    });
  }
}
