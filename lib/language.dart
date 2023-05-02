import 'package:get/get.dart';

class Language {
  final int id;
  final String flag;
  final String name;
  final String languageCode;

  Language(this.id, this.flag, this.name, this.languageCode);

  static List<Language> languageList() {
    return <Language>[
      Language(1, "🇻🇳", "Việt Nam", "vn"),
      Language(2, "🏴󠁧󠁢󠁥󠁮󠁧󠁿", "English", "en"),
      Language(3, "🇨🇳", "China", "cn"),
    ];
  }
}

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'vi_vn': {
          'welcome_to': 'Chào Mừng đến',
          '_welcome_to_detail':
              'Quảng Ninh là tỉnh ven biển thuộc vùng Đông Bắc Bộ Việt Nam Theo quy hoạch phát triển kinh tế, Quảng Ninh vừa thuộc vùng kinh tế trọng điểm phía bắc vừa thuộc Vùng duyên hải Bắc Bộ. Đây là tỉnh khai thác than đá chính của Việt Nam, có vịnh Hạ Long là di sản, kỳ quan thiên nhiên thế giới.',
          '_welcome_to_bottom': 'Dự Án',
          '_welcome_to_bottom_detail': 'Khoa học sáng tạo',
          '_appbar_title': 'Quảng Ninh Việt Nam',
          '_taxi': 'Xe Taxi',
          '_hotels': 'Khách sạn',
          '_atms': 'Cây rút tiền',
          '_food': 'Món ăn',
          '_best_places': 'Địa điểm Hot',
          '_title_name': 'Tên',
          "_title_general_infor": "Thông tin chung:",
          '_video_intro': 'Video Giới thiệu:',
          '_read_continue': '...<đọc tiếp>',
          '_read_collapse': ' <thu gọn>',
          '_Volume': 'Âm lượng',
          '_beacon_1_name': 'Địa danh số 1',
          "_beacon_1_name_detail":
              "Đình Hồng Thái - Địa điểm dừng chân đầu tiên của Bác Hồ khi đến Tân Trào.",
          '_beacon_1_info':
              'Tháng  5 năm 1945, trước những diễn biến mau lẹ và yêu cầu của tình hình cách mạng  Bác Hồ rời Pác Bó (Cao Bằng) về Tân Trào, Sơn Dương (Tuyên Quang). Ngày 21/5/1945 Bác đến Tân Trào dừng chân nghỉ tại đình Hồng Thái.\n'
                  '    Đình Hồng Thái thuộc thôn Cả, xã Tân Trào. Đình nằm bên bờ sông Phó Đáy, hướng đông nam, đình lấy núi Thia làm án. Đình được xây dựng năm 1918, có kiến trúc đơn giản, ít chạm trổ. Giữa là 1 khu đất rộng, cỏ mọc xanh rì. Phía trước đình có 1 cánh đồng rộng chạy dài đến chân núi Bòng. Đình có hai gian, 2 trái theo kiểu nhà sàn, mái lợp lá cọ.  Tháng 3/1945 dưới sự lãnh đạo của Đảng nhân dân xã Kim Trận đứng lên giành chính quyền, nhân dân họp bàn lấy tên liệt sĩ Phạm Hồng Thái là tên xã, tên đình Hồng Thái cũng ra đời từ đó. Đình Hồng Thái chính là địa điểm dừng chân đầu tiên của Bác khi đến Tân Trào. Ngôi đình này cũng là nơi tiếp đón các đại biểu về dự Quốc dân đại hội tháng 8/1945.',
          '_beacon_2_name': 'Địa danh số 2',
          '_beacon_2_name_detail':
              'Đình Hồng Thái - Địa điểm dừng chân đầu tiên của Bác Hồ khi đến Tân Trào. ',
          '_beacon_2_info': 'Lúc mới đến Tân Trào, Bác Hồ được bố trí ở tạm với gia đình ông Nguyễn Tiến Sự, Chủ nhiệm Việt Minh của làng Kim Long. Sau đó, để đảm bảo an toàn, bí mật Bác chuyển lên ở và làm việc tại căn lán nhỏ trong khu rừng Nà Nưa, thuộc dãy núi Hồng.\n'
              '    Lán Nà Nưa nằm kín đáo dưới các tán cây rậm rạp, bảo đảm bí mật và đáp ứng được yêu cầu của Bác đề ra: Gần nước, gần dân, xa quốc lộ, thuận đường tiến, tiện đường thoái. Lán cách làng Tân Lập hơn 500 mét về hướng đông, cách lán chừng 80 mét là con đường mòn qua đèo De, sang Phú Đình- Định Hóa (Thái Nguyên); phía trước lán, dưới chân rừng Nà Nưa là dòng suối Khuôn Pén.\n'
              '	   Lán Nà Nưa được dựng theo kiểu nhà sàn của người miền núi, làm bằng gỗ rừng, mái lợp lá cọ. Lán được ngăn làm hai nửa, một bên là nơi Bác làm việc và tiếp khách; một bên là nơi Bác nghỉ ngơi. Phía dưới, đầu sàn của lán là phiến đá rộng và phẳng, nơi Bác thường ngồi làm việc, đánh máy chữ mỗi khi trời tối.\n'
              '	   Lán Nà Nưa là nơi Bác Hồ đã ở, làm việc từ cuối tháng 5 đến ngày 22-8-1945. Tại đây Bác đã có những chỉ thị quan trọng, thành lập Khu giải phóng (gồm 6 tỉnh: Cao Bằng, Bắc Kạn, Lạng Sơn, Thái Nguyên, Tuyên Quang, Hà Giang). Tân Trào (Tuyên Quang) được chọn là thủ đô khu giải phóng.\n'
              '	   Cũng tại căn lán này cuối tháng 7, đầu tháng 8 năm 1945, trong lúc tình hình đang diễn ra hết sức khẩn trương, Bác bị ốm nặng, có lúc yếu mệt, Bác đã căn dặn đồng chí Võ Nguyên Giáp: “Lúc này thời cơ thuận lợi đã tới, dù hy sinh tới đâu, dù phải đốt cháy cả dãy Trường Sơn cũng phải kiên quyết giành cho được độc lập”.\n'
              '	   Từ đây Bác đã triệu tập Hội nghị toàn quốc của Đảng (từ ngày 13/8/1945 đến ngày 15/8/1945 thông qua kế hoạch lãnh đạo toàn dân tổng khởi nghĩa giành chính quyền trong cả nước. Cùng ngày, Ủy ban Khởi nghĩa toàn quốc được thành lập và ra bản Quân lệnh số I, hạ lệnh tổng khởi nghĩa.',
          '_beacon_3_name': 'Địa danh số 3',
          '_beacon_3_name_detail':
              'Cây đa Tân Trào - nơi Đại tướng Võ Nguyễn Giáp đã đọc bản Quân lệnh số 1, làm lễ xuất quân tiến về giải phóng Thủ đô Hà Nội',
          '_beacon_3_info':
              'Cây đa Tân Trào là một cây đa cổ nằm ở đầu làng Tân Lập, xã Tân Trào, huyện Sơn Dương. Dưới bóng đa cổ thụ này chiều 16/8/1945, Quân Giải phóng Việt Nam đã làm lễ xuất quân trước sự chứng kiến của nhân dân Tân Trào và 60 đại biểu toàn quốc về dự Quốc dân đại hội.  Đồng chí Võ Nguyên Giáp đã đọc bản quân lệnh số 1 và hạ lệnh xuất quân.  Ngay sau đó Quân Giải phóng đã lên đường qua Thái Nguyên về giải phóng thủ đô Hà Nội. ',
          '_beacon_4_name': 'Địa danh số 4',
          '_beacon_4_name_detail':
              'Đình Tân Trào - nơi diễn ra Quốc dân đại hội Tân Trào',
          '_beacon_4_info':
              '	Đình Tân Trào là một ngôi đình nhỏ thờ các thần sông núi của làng Tân Lập( trước đây gọi là đình làng Kim Long). Đình được dựng năm Quí Hợi (1923) theo kiểu nhà sàn, cột gỗ, ba gian, hai trái, mái đình lợp lá cọ, sàn lát ván. Dưới mái đình này, trong hai ngày 16,17/8/1945, Trung ương Đảng và Bác Hồ đã quyết định triệu tập Quốc dân Đại hội. Đại hội đã tán thành chủ trương Tổng khởi nghĩa của Đảng, thông qua lệnh tổng khởi nghĩa và 10 chính sách lớn của Việt Minh, qui định Quốc kỳ cờ đỏ sao vàng, Quốc ca là bài Tiến quân ca và cử ra Uỷ ban Dân tộc Giải phóng Việt Nam do Hồ Chí Minh làm Chủ tịch. Sáng 17/8/1945, thay mặt Chính phủ Lâm thời, Bác Hồ đọc lời thề thiêng liêng trong lễ ra mắt Quốc dân ở đình Tân Trào. \n'
                  '    Thủ đô khu giải phóng, mà Tân Trào là trung tâm đóng vai trò hết sức to lớn vào thành công của Cách mạng Tháng Tám, là trung tâm chỉ đạo Tổng khởi nghĩa giành chính quyền thắng lợi trong phạm vi cả nước. Với những sự kiện quan trọng diễn ra trên căn cứ cách mạng Tân Trào, dân tộc Việt Nam đã chấm dứt những năm dài nô lệ, tiến sang kỷ nguyên độc lập, tự do bằng cuộc Tổng khởi nghĩa Tháng Tám năm 1945.',
        },
        'en_US': {
          'welcome_to': 'Welcome to',
          '_welcome_to_detail':
              'EN_Quảng Ninh là tỉnh ven biển thuộc vùng Đông Bắc Bộ Việt Nam Theo quy hoạch phát triển kinh tế, Quảng Ninh vừa thuộc vùng kinh tế trọng điểm phía bắc vừa thuộc Vùng duyên hải Bắc Bộ. Đây là tỉnh khai thác than đá chính của Việt Nam, có vịnh Hạ Long là di sản, kỳ quan thiên nhiên thế giới.',
          '_welcome_to_bottom': 'Project',
          '_welcome_to_bottom_detail': 'Khoa học sáng tạo',
          '_appbar_title': 'Quảng Ninh Việt Nam',
          '_taxi': 'Taxi',
          '_hotels': 'Hotels',
          '_atms': 'ATMs',
          '_food': 'Food',
          '_best_places': 'Best Places',
          '_title_name': 'Name',
          "_title_general_infor": "General information:",
          '_video_intro': 'Video Introduction:',
          '_read_continue': '...<read more>',
          '_read_collapse': ' <read collapse>',
          '_Volume': 'Volume',
          '_beacon_1_name': 'EN_Địa danh số 1',
          "_beacon_1_name_detail":
              "EN_Đình Hồng Thái - Địa điểm dừng chân đầu tiên của Bác Hồ khi đến Tân Trào.",
          '_beacon_1_info':
              'EN_Tháng  5 năm 1945, trước những diễn biến mau lẹ và yêu cầu của tình hình cách mạng  Bác Hồ rời Pác Bó (Cao Bằng) về Tân Trào, Sơn Dương (Tuyên Quang). Ngày 21/5/1945 Bác đến Tân Trào dừng chân nghỉ tại đình Hồng Thái.\n'
                  '    Đình Hồng Thái thuộc thôn Cả, xã Tân Trào. Đình nằm bên bờ sông Phó Đáy, hướng đông nam, đình lấy núi Thia làm án. Đình được xây dựng năm 1918, có kiến trúc đơn giản, ít chạm trổ. Giữa là 1 khu đất rộng, cỏ mọc xanh rì. Phía trước đình có 1 cánh đồng rộng chạy dài đến chân núi Bòng. Đình có hai gian, 2 trái theo kiểu nhà sàn, mái lợp lá cọ.  Tháng 3/1945 dưới sự lãnh đạo của Đảng nhân dân xã Kim Trận đứng lên giành chính quyền, nhân dân họp bàn lấy tên liệt sĩ Phạm Hồng Thái là tên xã, tên đình Hồng Thái cũng ra đời từ đó. Đình Hồng Thái chính là địa điểm dừng chân đầu tiên của Bác khi đến Tân Trào. Ngôi đình này cũng là nơi tiếp đón các đại biểu về dự Quốc dân đại hội tháng 8/1945.',
          '_beacon_2_name': 'EN_Địa danh số 2',
          '_beacon_2_name_detail':
              'EN_Đình Hồng Thái - Địa điểm dừng chân đầu tiên của Bác Hồ khi đến Tân Trào. ',
          '_beacon_2_info': 'EN_Lúc mới đến Tân Trào, Bác Hồ được bố trí ở tạm với gia đình ông Nguyễn Tiến Sự, Chủ nhiệm Việt Minh của làng Kim Long. Sau đó, để đảm bảo an toàn, bí mật Bác chuyển lên ở và làm việc tại căn lán nhỏ trong khu rừng Nà Nưa, thuộc dãy núi Hồng.\n'
              '    Lán Nà Nưa nằm kín đáo dưới các tán cây rậm rạp, bảo đảm bí mật và đáp ứng được yêu cầu của Bác đề ra: Gần nước, gần dân, xa quốc lộ, thuận đường tiến, tiện đường thoái. Lán cách làng Tân Lập hơn 500 mét về hướng đông, cách lán chừng 80 mét là con đường mòn qua đèo De, sang Phú Đình- Định Hóa (Thái Nguyên); phía trước lán, dưới chân rừng Nà Nưa là dòng suối Khuôn Pén.\n'
              '	   Lán Nà Nưa được dựng theo kiểu nhà sàn của người miền núi, làm bằng gỗ rừng, mái lợp lá cọ. Lán được ngăn làm hai nửa, một bên là nơi Bác làm việc và tiếp khách; một bên là nơi Bác nghỉ ngơi. Phía dưới, đầu sàn của lán là phiến đá rộng và phẳng, nơi Bác thường ngồi làm việc, đánh máy chữ mỗi khi trời tối.\n'
              '	   Lán Nà Nưa là nơi Bác Hồ đã ở, làm việc từ cuối tháng 5 đến ngày 22-8-1945. Tại đây Bác đã có những chỉ thị quan trọng, thành lập Khu giải phóng (gồm 6 tỉnh: Cao Bằng, Bắc Kạn, Lạng Sơn, Thái Nguyên, Tuyên Quang, Hà Giang). Tân Trào (Tuyên Quang) được chọn là thủ đô khu giải phóng.\n'
              '	   Cũng tại căn lán này cuối tháng 7, đầu tháng 8 năm 1945, trong lúc tình hình đang diễn ra hết sức khẩn trương, Bác bị ốm nặng, có lúc yếu mệt, Bác đã căn dặn đồng chí Võ Nguyên Giáp: “Lúc này thời cơ thuận lợi đã tới, dù hy sinh tới đâu, dù phải đốt cháy cả dãy Trường Sơn cũng phải kiên quyết giành cho được độc lập”.\n'
              '	   Từ đây Bác đã triệu tập Hội nghị toàn quốc của Đảng (từ ngày 13/8/1945 đến ngày 15/8/1945 thông qua kế hoạch lãnh đạo toàn dân tổng khởi nghĩa giành chính quyền trong cả nước. Cùng ngày, Ủy ban Khởi nghĩa toàn quốc được thành lập và ra bản Quân lệnh số I, hạ lệnh tổng khởi nghĩa.',
          '_beacon_3_name': 'EN_Địa danh số 3',
          '_beacon_3_name_detail':
              'EN_Cây đa Tân Trào - nơi Đại tướng Võ Nguyễn Giáp đã đọc bản Quân lệnh số 1, làm lễ xuất quân tiến về giải phóng Thủ đô Hà Nội',
          '_beacon_3_info':
              'EN_Cây đa Tân Trào là một cây đa cổ nằm ở đầu làng Tân Lập, xã Tân Trào, huyện Sơn Dương. Dưới bóng đa cổ thụ này chiều 16/8/1945, Quân Giải phóng Việt Nam đã làm lễ xuất quân trước sự chứng kiến của nhân dân Tân Trào và 60 đại biểu toàn quốc về dự Quốc dân đại hội.  Đồng chí Võ Nguyên Giáp đã đọc bản quân lệnh số 1 và hạ lệnh xuất quân.  Ngay sau đó Quân Giải phóng đã lên đường qua Thái Nguyên về giải phóng thủ đô Hà Nội. ',
          '_beacon_4_name': 'EN_Địa danh số 4',
          '_beacon_4_name_detail':
              'EN_Đình Tân Trào - nơi diễn ra Quốc dân đại hội Tân Trào',
          '_beacon_4_info':
              'EN_Đình Tân Trào là một ngôi đình nhỏ thờ các thần sông núi của làng Tân Lập( trước đây gọi là đình làng Kim Long). Đình được dựng năm Quí Hợi (1923) theo kiểu nhà sàn, cột gỗ, ba gian, hai trái, mái đình lợp lá cọ, sàn lát ván. Dưới mái đình này, trong hai ngày 16,17/8/1945, Trung ương Đảng và Bác Hồ đã quyết định triệu tập Quốc dân Đại hội. Đại hội đã tán thành chủ trương Tổng khởi nghĩa của Đảng, thông qua lệnh tổng khởi nghĩa và 10 chính sách lớn của Việt Minh, qui định Quốc kỳ cờ đỏ sao vàng, Quốc ca là bài Tiến quân ca và cử ra Uỷ ban Dân tộc Giải phóng Việt Nam do Hồ Chí Minh làm Chủ tịch. Sáng 17/8/1945, thay mặt Chính phủ Lâm thời, Bác Hồ đọc lời thề thiêng liêng trong lễ ra mắt Quốc dân ở đình Tân Trào. \n'
                  '    Thủ đô khu giải phóng, mà Tân Trào là trung tâm đóng vai trò hết sức to lớn vào thành công của Cách mạng Tháng Tám, là trung tâm chỉ đạo Tổng khởi nghĩa giành chính quyền thắng lợi trong phạm vi cả nước. Với những sự kiện quan trọng diễn ra trên căn cứ cách mạng Tân Trào, dân tộc Việt Nam đã chấm dứt những năm dài nô lệ, tiến sang kỷ nguyên độc lập, tự do bằng cuộc Tổng khởi nghĩa Tháng Tám năm 1945.',
        },
        'ko_KR': {
          'welcome_to': 'Chào Mừng đến',
          '_welcome_to_detail':
              'Quảng Ninh là tỉnh ven biển thuộc vùng Đông Bắc Bộ Việt Nam Theo quy hoạch phát triển kinh tế, Quảng Ninh vừa thuộc vùng kinh tế trọng điểm phía bắc vừa thuộc Vùng duyên hải Bắc Bộ. Đây là tỉnh khai thác than đá chính của Việt Nam, có vịnh Hạ Long là di sản, kỳ quan thiên nhiên thế giới.',
          '_welcome_to_bottom': 'Dự Án',
          '_welcome_to_bottom_detail': 'Khoa học sáng tạo',
          '_appbar_title': 'Quảng Ninh Việt Nam',
          '_taxi': 'Xe Taxi',
          '_hotels': 'Khách sạn',
          '_atms': 'Cây rút tiền',
          '_food': 'Món ăn',
          '_best_places': 'Địa điểm Hot',
          '_title_name': 'Tên',
          "_title_general_infor": "Thông tin chung:",
          '_video_intro': 'Video Giới thiệu:',
          '_read_continue': '...<đọc tiếp>',
          '_read_collapse': ' <thu gọn>',
          '_Volume': 'Âm lượng',
          '_beacon_1_name': 'Địa danh số 1',
          "_beacon_1_name_detail":
              "Đình Hồng Thái - Địa điểm dừng chân đầu tiên của Bác Hồ khi đến Tân Trào.",
          '_beacon_1_info':
              'Tháng  5 năm 1945, trước những diễn biến mau lẹ và yêu cầu của tình hình cách mạng  Bác Hồ rời Pác Bó (Cao Bằng) về Tân Trào, Sơn Dương (Tuyên Quang). Ngày 21/5/1945 Bác đến Tân Trào dừng chân nghỉ tại đình Hồng Thái.\n'
                  '    Đình Hồng Thái thuộc thôn Cả, xã Tân Trào. Đình nằm bên bờ sông Phó Đáy, hướng đông nam, đình lấy núi Thia làm án. Đình được xây dựng năm 1918, có kiến trúc đơn giản, ít chạm trổ. Giữa là 1 khu đất rộng, cỏ mọc xanh rì. Phía trước đình có 1 cánh đồng rộng chạy dài đến chân núi Bòng. Đình có hai gian, 2 trái theo kiểu nhà sàn, mái lợp lá cọ.  Tháng 3/1945 dưới sự lãnh đạo của Đảng nhân dân xã Kim Trận đứng lên giành chính quyền, nhân dân họp bàn lấy tên liệt sĩ Phạm Hồng Thái là tên xã, tên đình Hồng Thái cũng ra đời từ đó. Đình Hồng Thái chính là địa điểm dừng chân đầu tiên của Bác khi đến Tân Trào. Ngôi đình này cũng là nơi tiếp đón các đại biểu về dự Quốc dân đại hội tháng 8/1945.',
          '_beacon_2_name': 'Địa danh số 2',
          '_beacon_2_name_detail':
              'Đình Hồng Thái - Địa điểm dừng chân đầu tiên của Bác Hồ khi đến Tân Trào. ',
          '_beacon_2_info': 'Lúc mới đến Tân Trào, Bác Hồ được bố trí ở tạm với gia đình ông Nguyễn Tiến Sự, Chủ nhiệm Việt Minh của làng Kim Long. Sau đó, để đảm bảo an toàn, bí mật Bác chuyển lên ở và làm việc tại căn lán nhỏ trong khu rừng Nà Nưa, thuộc dãy núi Hồng.\n'
              '    Lán Nà Nưa nằm kín đáo dưới các tán cây rậm rạp, bảo đảm bí mật và đáp ứng được yêu cầu của Bác đề ra: Gần nước, gần dân, xa quốc lộ, thuận đường tiến, tiện đường thoái. Lán cách làng Tân Lập hơn 500 mét về hướng đông, cách lán chừng 80 mét là con đường mòn qua đèo De, sang Phú Đình- Định Hóa (Thái Nguyên); phía trước lán, dưới chân rừng Nà Nưa là dòng suối Khuôn Pén.\n'
              '	   Lán Nà Nưa được dựng theo kiểu nhà sàn của người miền núi, làm bằng gỗ rừng, mái lợp lá cọ. Lán được ngăn làm hai nửa, một bên là nơi Bác làm việc và tiếp khách; một bên là nơi Bác nghỉ ngơi. Phía dưới, đầu sàn của lán là phiến đá rộng và phẳng, nơi Bác thường ngồi làm việc, đánh máy chữ mỗi khi trời tối.\n'
              '	   Lán Nà Nưa là nơi Bác Hồ đã ở, làm việc từ cuối tháng 5 đến ngày 22-8-1945. Tại đây Bác đã có những chỉ thị quan trọng, thành lập Khu giải phóng (gồm 6 tỉnh: Cao Bằng, Bắc Kạn, Lạng Sơn, Thái Nguyên, Tuyên Quang, Hà Giang). Tân Trào (Tuyên Quang) được chọn là thủ đô khu giải phóng.\n'
              '	   Cũng tại căn lán này cuối tháng 7, đầu tháng 8 năm 1945, trong lúc tình hình đang diễn ra hết sức khẩn trương, Bác bị ốm nặng, có lúc yếu mệt, Bác đã căn dặn đồng chí Võ Nguyên Giáp: “Lúc này thời cơ thuận lợi đã tới, dù hy sinh tới đâu, dù phải đốt cháy cả dãy Trường Sơn cũng phải kiên quyết giành cho được độc lập”.\n'
              '	   Từ đây Bác đã triệu tập Hội nghị toàn quốc của Đảng (từ ngày 13/8/1945 đến ngày 15/8/1945 thông qua kế hoạch lãnh đạo toàn dân tổng khởi nghĩa giành chính quyền trong cả nước. Cùng ngày, Ủy ban Khởi nghĩa toàn quốc được thành lập và ra bản Quân lệnh số I, hạ lệnh tổng khởi nghĩa.',
          '_beacon_3_name': 'Địa danh số 3',
          '_beacon_3_name_detail':
              'Cây đa Tân Trào - nơi Đại tướng Võ Nguyễn Giáp đã đọc bản Quân lệnh số 1, làm lễ xuất quân tiến về giải phóng Thủ đô Hà Nội',
          '_beacon_3_info':
              'Cây đa Tân Trào là một cây đa cổ nằm ở đầu làng Tân Lập, xã Tân Trào, huyện Sơn Dương. Dưới bóng đa cổ thụ này chiều 16/8/1945, Quân Giải phóng Việt Nam đã làm lễ xuất quân trước sự chứng kiến của nhân dân Tân Trào và 60 đại biểu toàn quốc về dự Quốc dân đại hội.  Đồng chí Võ Nguyên Giáp đã đọc bản quân lệnh số 1 và hạ lệnh xuất quân.  Ngay sau đó Quân Giải phóng đã lên đường qua Thái Nguyên về giải phóng thủ đô Hà Nội. ',
          '_beacon_4_name': 'Địa danh số 4',
          '_beacon_4_name_detail':
              'Đình Tân Trào - nơi diễn ra Quốc dân đại hội Tân Trào',
          '_beacon_4_info':
              '	Đình Tân Trào là một ngôi đình nhỏ thờ các thần sông núi của làng Tân Lập( trước đây gọi là đình làng Kim Long). Đình được dựng năm Quí Hợi (1923) theo kiểu nhà sàn, cột gỗ, ba gian, hai trái, mái đình lợp lá cọ, sàn lát ván. Dưới mái đình này, trong hai ngày 16,17/8/1945, Trung ương Đảng và Bác Hồ đã quyết định triệu tập Quốc dân Đại hội. Đại hội đã tán thành chủ trương Tổng khởi nghĩa của Đảng, thông qua lệnh tổng khởi nghĩa và 10 chính sách lớn của Việt Minh, qui định Quốc kỳ cờ đỏ sao vàng, Quốc ca là bài Tiến quân ca và cử ra Uỷ ban Dân tộc Giải phóng Việt Nam do Hồ Chí Minh làm Chủ tịch. Sáng 17/8/1945, thay mặt Chính phủ Lâm thời, Bác Hồ đọc lời thề thiêng liêng trong lễ ra mắt Quốc dân ở đình Tân Trào. \n'
                  '    Thủ đô khu giải phóng, mà Tân Trào là trung tâm đóng vai trò hết sức to lớn vào thành công của Cách mạng Tháng Tám, là trung tâm chỉ đạo Tổng khởi nghĩa giành chính quyền thắng lợi trong phạm vi cả nước. Với những sự kiện quan trọng diễn ra trên căn cứ cách mạng Tân Trào, dân tộc Việt Nam đã chấm dứt những năm dài nô lệ, tiến sang kỷ nguyên độc lập, tự do bằng cuộc Tổng khởi nghĩa Tháng Tám năm 1945.',
        },
        'ja_JP': {
          'welcome_to': 'Chào Mừng đến',
          '_welcome_to_detail':
              'Quảng Ninh là tỉnh ven biển thuộc vùng Đông Bắc Bộ Việt Nam Theo quy hoạch phát triển kinh tế, Quảng Ninh vừa thuộc vùng kinh tế trọng điểm phía bắc vừa thuộc Vùng duyên hải Bắc Bộ. Đây là tỉnh khai thác than đá chính của Việt Nam, có vịnh Hạ Long là di sản, kỳ quan thiên nhiên thế giới.',
          '_welcome_to_bottom': 'Dự Án',
          '_welcome_to_bottom_detail': 'Khoa học sáng tạo',
          '_appbar_title': 'Quảng Ninh Việt Nam',
          '_taxi': 'Xe Taxi',
          '_hotels': 'Khách sạn',
          '_atms': 'Cây rút tiền',
          '_food': 'Món ăn',
          '_best_places': 'Địa điểm Hot',
          '_title_name': 'Tên',
          "_title_general_infor": "Thông tin chung:",
          '_video_intro': 'Video Giới thiệu:',
          '_read_continue': '...<đọc tiếp>',
          '_read_collapse': ' <thu gọn>',
          '_Volume': 'Âm lượng',
          '_beacon_1_name': 'Địa danh số 1',
          "_beacon_1_name_detail":
              "Đình Hồng Thái - Địa điểm dừng chân đầu tiên của Bác Hồ khi đến Tân Trào.",
          '_beacon_1_info':
              'Tháng  5 năm 1945, trước những diễn biến mau lẹ và yêu cầu của tình hình cách mạng  Bác Hồ rời Pác Bó (Cao Bằng) về Tân Trào, Sơn Dương (Tuyên Quang). Ngày 21/5/1945 Bác đến Tân Trào dừng chân nghỉ tại đình Hồng Thái.\n'
                  '    Đình Hồng Thái thuộc thôn Cả, xã Tân Trào. Đình nằm bên bờ sông Phó Đáy, hướng đông nam, đình lấy núi Thia làm án. Đình được xây dựng năm 1918, có kiến trúc đơn giản, ít chạm trổ. Giữa là 1 khu đất rộng, cỏ mọc xanh rì. Phía trước đình có 1 cánh đồng rộng chạy dài đến chân núi Bòng. Đình có hai gian, 2 trái theo kiểu nhà sàn, mái lợp lá cọ.  Tháng 3/1945 dưới sự lãnh đạo của Đảng nhân dân xã Kim Trận đứng lên giành chính quyền, nhân dân họp bàn lấy tên liệt sĩ Phạm Hồng Thái là tên xã, tên đình Hồng Thái cũng ra đời từ đó. Đình Hồng Thái chính là địa điểm dừng chân đầu tiên của Bác khi đến Tân Trào. Ngôi đình này cũng là nơi tiếp đón các đại biểu về dự Quốc dân đại hội tháng 8/1945.',
          '_beacon_2_name': 'Địa danh số 2',
          '_beacon_2_name_detail':
              'Đình Hồng Thái - Địa điểm dừng chân đầu tiên của Bác Hồ khi đến Tân Trào. ',
          '_beacon_2_info': 'Lúc mới đến Tân Trào, Bác Hồ được bố trí ở tạm với gia đình ông Nguyễn Tiến Sự, Chủ nhiệm Việt Minh của làng Kim Long. Sau đó, để đảm bảo an toàn, bí mật Bác chuyển lên ở và làm việc tại căn lán nhỏ trong khu rừng Nà Nưa, thuộc dãy núi Hồng.\n'
              '    Lán Nà Nưa nằm kín đáo dưới các tán cây rậm rạp, bảo đảm bí mật và đáp ứng được yêu cầu của Bác đề ra: Gần nước, gần dân, xa quốc lộ, thuận đường tiến, tiện đường thoái. Lán cách làng Tân Lập hơn 500 mét về hướng đông, cách lán chừng 80 mét là con đường mòn qua đèo De, sang Phú Đình- Định Hóa (Thái Nguyên); phía trước lán, dưới chân rừng Nà Nưa là dòng suối Khuôn Pén.\n'
              '	   Lán Nà Nưa được dựng theo kiểu nhà sàn của người miền núi, làm bằng gỗ rừng, mái lợp lá cọ. Lán được ngăn làm hai nửa, một bên là nơi Bác làm việc và tiếp khách; một bên là nơi Bác nghỉ ngơi. Phía dưới, đầu sàn của lán là phiến đá rộng và phẳng, nơi Bác thường ngồi làm việc, đánh máy chữ mỗi khi trời tối.\n'
              '	   Lán Nà Nưa là nơi Bác Hồ đã ở, làm việc từ cuối tháng 5 đến ngày 22-8-1945. Tại đây Bác đã có những chỉ thị quan trọng, thành lập Khu giải phóng (gồm 6 tỉnh: Cao Bằng, Bắc Kạn, Lạng Sơn, Thái Nguyên, Tuyên Quang, Hà Giang). Tân Trào (Tuyên Quang) được chọn là thủ đô khu giải phóng.\n'
              '	   Cũng tại căn lán này cuối tháng 7, đầu tháng 8 năm 1945, trong lúc tình hình đang diễn ra hết sức khẩn trương, Bác bị ốm nặng, có lúc yếu mệt, Bác đã căn dặn đồng chí Võ Nguyên Giáp: “Lúc này thời cơ thuận lợi đã tới, dù hy sinh tới đâu, dù phải đốt cháy cả dãy Trường Sơn cũng phải kiên quyết giành cho được độc lập”.\n'
              '	   Từ đây Bác đã triệu tập Hội nghị toàn quốc của Đảng (từ ngày 13/8/1945 đến ngày 15/8/1945 thông qua kế hoạch lãnh đạo toàn dân tổng khởi nghĩa giành chính quyền trong cả nước. Cùng ngày, Ủy ban Khởi nghĩa toàn quốc được thành lập và ra bản Quân lệnh số I, hạ lệnh tổng khởi nghĩa.',
          '_beacon_3_name': 'Địa danh số 3',
          '_beacon_3_name_detail':
              'Cây đa Tân Trào - nơi Đại tướng Võ Nguyễn Giáp đã đọc bản Quân lệnh số 1, làm lễ xuất quân tiến về giải phóng Thủ đô Hà Nội',
          '_beacon_3_info':
              'Cây đa Tân Trào là một cây đa cổ nằm ở đầu làng Tân Lập, xã Tân Trào, huyện Sơn Dương. Dưới bóng đa cổ thụ này chiều 16/8/1945, Quân Giải phóng Việt Nam đã làm lễ xuất quân trước sự chứng kiến của nhân dân Tân Trào và 60 đại biểu toàn quốc về dự Quốc dân đại hội.  Đồng chí Võ Nguyên Giáp đã đọc bản quân lệnh số 1 và hạ lệnh xuất quân.  Ngay sau đó Quân Giải phóng đã lên đường qua Thái Nguyên về giải phóng thủ đô Hà Nội. ',
          '_beacon_4_name': 'Địa danh số 4',
          '_beacon_4_name_detail':
              'Đình Tân Trào - nơi diễn ra Quốc dân đại hội Tân Trào',
          '_beacon_4_info':
              '	Đình Tân Trào là một ngôi đình nhỏ thờ các thần sông núi của làng Tân Lập( trước đây gọi là đình làng Kim Long). Đình được dựng năm Quí Hợi (1923) theo kiểu nhà sàn, cột gỗ, ba gian, hai trái, mái đình lợp lá cọ, sàn lát ván. Dưới mái đình này, trong hai ngày 16,17/8/1945, Trung ương Đảng và Bác Hồ đã quyết định triệu tập Quốc dân Đại hội. Đại hội đã tán thành chủ trương Tổng khởi nghĩa của Đảng, thông qua lệnh tổng khởi nghĩa và 10 chính sách lớn của Việt Minh, qui định Quốc kỳ cờ đỏ sao vàng, Quốc ca là bài Tiến quân ca và cử ra Uỷ ban Dân tộc Giải phóng Việt Nam do Hồ Chí Minh làm Chủ tịch. Sáng 17/8/1945, thay mặt Chính phủ Lâm thời, Bác Hồ đọc lời thề thiêng liêng trong lễ ra mắt Quốc dân ở đình Tân Trào. \n'
                  '    Thủ đô khu giải phóng, mà Tân Trào là trung tâm đóng vai trò hết sức to lớn vào thành công của Cách mạng Tháng Tám, là trung tâm chỉ đạo Tổng khởi nghĩa giành chính quyền thắng lợi trong phạm vi cả nước. Với những sự kiện quan trọng diễn ra trên căn cứ cách mạng Tân Trào, dân tộc Việt Nam đã chấm dứt những năm dài nô lệ, tiến sang kỷ nguyên độc lập, tự do bằng cuộc Tổng khởi nghĩa Tháng Tám năm 1945.',
        },
      };
}
