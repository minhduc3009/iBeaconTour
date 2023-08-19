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
          '_welcome_to_detail': 'Quảng Ninh',
          '_welcome_to_bottom': 'Dự Án',
          '_welcome_to_bottom_detail': 'Khoa học sáng tạo',
          '_appbar_title': 'Quảng Ninh Việt Nam',
          '_taxi': 'Xe Taxi',
          '_hotels': 'Khách sạn',
          '_atms': 'Cây rút tiền',
          '_food': 'Nhà hàng',
          '_best_places': 'Địa điểm Hot',
          '_title_name': 'Tên',
          "_title_general_infor": "Thông tin chung:",
          '_video_intro': 'Video Giới thiệu:',
          '_read_continue': '...<đọc tiếp>',
          '_read_collapse': ' <thu gọn>',
          '_Volume': 'Âm lượng',
          '_beacon_1_name': 'Bảo tàng Quảng Ninh',
          "_beacon_1_name_detail": "Bảo tàng Quảng Ninh",
          '_beacon_1_info':
              'Bảo tàng Quảng Ninh là một công trình kiến trúc nghệ thuật độc đáo. Chỉ nhìn từ bên ngoài thôi đã khiến du khách phải trầm trồ khen ngợi. Diện mạo của bảo tàng cực kỳ thu hút với phần kính đen bao trùm tất cả các phía. Đây giống như một tấm gương khổng lồ phản chiếu hình ảnh biển trời Hạ Long hùng vĩ.\n'
                  'Bên cạnh đó, bảo tàng được thiết kế theo cấu trúc hình vuông độc đáo với màu đen chủ đạo cũng là hình ảnh khiến nhiều du khách liên tưởng tới ngọc trai đen - một sản vật quý giá tại Hạ Long. Thực sự, kiến trúc của bảo tàng Quảng Ninh là sự hòa hợp tinh tế giữa đơn giản và hiện đại, truyền thống nhưng rất mới mẻ.',
          '_beacon_2_name': 'Đền Trần Quốc Nghiễn',
          '_beacon_2_name_detail': 'Đền Trần Quốc Nghiễn',
          '_beacon_2_info':
              'Đức Ông Hưng Vũ Vương Trần Quốc Nghiễn là con trai cả của Hưng Đạo Đại Vương Trần Quốc Tuấn. Ông là vị tướng đã có công lớn trong cuộc chiến chống giặc Nguyên Mông lần thứ 2 và thứ 3 của dân tộc, được vua Trần phong tước là “Khai Quốc Công”.\n'
                  'Đền thờ Đức Ông Trần Quốc Nghiễn được hình thành từ cuối thế kỷ XIII, được xây dựng lại vào năm Quý Sửu 1913 và được trùng tu lần thứ nhất vào năm Mậu Dần 1938, lần thứ 2 vào năm Nhâm Ngọ 2002. Đây là ngôi đền cổ, linh thiêng, nằm trong Cụm Di tích lịch sử - văn hoá và danh thắng núi Bài Thơ, đã có lịch sử gần một ngàn năm và đã được công nhận là di tích quốc gia.',
          '_beacon_3_name': 'Chùa Long Tiên',
          '_beacon_3_name_detail': 'Chùa Long Tiên',
          '_beacon_3_info':
              'Chùa Long Tiên được xây dựng vào năm 1941, dưới thời vua nhà Nguyễn. Nơi đây thờ thần phật và các vị tướng đã có công với đất nước..Chùa Long Tiên có diện tích lớn nhất tại Hạ Long, nằm trên con phố cùng tên, là nơi nổi tiếng lưu giữ những giá trị lịch sử và văn hóa lâu đời của thành phố.',
          '_beacon_4_name': 'Núi bài thơ',
          '_beacon_4_name_detail': 'Núi bài thơ',
          '_beacon_4_info':
              'Nằm ở trung tâm thành phố, núi Bài Thơ hiện lên uy nghi, bề thế - một tuyệt tác “mẹ thiên nhiên” đã dày công nhào nặn trong cuộc kiến tạo núi đá vôi. Nói đến núi Bài Thơ là cả một dòng chảy lịch sử của thi ca và những chiến công vẻ vang của đất Mỏ anh hùng. Lịch sử núi Bài Thơ đựơc viết nên trong công cuộc dựng nước, giữ nước, gắn với giai thoại đánh thắng giặc Nguyên Mông trên sông Bạch Đằng của Hưng Đạo Vương Trần Quốc Tuấn vào năm 1228. Ngày nay, trên bia đá vẫn còn khắc ghi vị trí chiến lược quan trọng của ngọn núi trong chiến thắng ấy: “Từ đỉnh núi này, hàng ngàn năm trước đã là vọng gác trọng yếu vùng biên ải Đông Bắc của Tổ quốc, núi Bài Thơ chỉ lặng lẽ "ngắm nhìn" sự đổi thay của Quảng Ninh thì hôm nay, núi Bài Thơ đã "tham gia" vào việc xây dựng thương hiệu du lịch tỉnh Quảng Ninh. Ngọn núi đã chứng tỏ sức hấp dẫn của mình. Không chỉ là điểm dừng chân lý tưởng cho những người mê leo núi, núi Bài Thơ còn là hành trình khám phá tuyệt vời cho những người yêu văn hóa lịch sử.\n'
                  'Hành trình khám phá điều bí ẩn chưa bao giờ dễ dàng sẽ mang lại nhiều bất ngờ. Mỗi chặng đường dưới chân núi đều ghi dấu năm tháng hoạt động cách mạng của những người con đất Mỏ ở những hang động kì bí.  May mắn vào buổi sớm bình minh, người leo núi có thể bắt gặp những chú dê núi đang thong dong gặm cỏ. Sự treo leo khi bám vào vách đá để leo lên là một trải nghiệm cảm giác mạnh thú vị.',
          '_beacon_5_name': 'Vịnh Hạ Long',
          "_beacon_5_name_detail": "Vịnh Hạ Long",
          '_beacon_5_info':
              'Vịnh Hạ Long được Unesco nhiều lần công nhận là Di sản thiên nhiên của Thế giới với hàng nghìn hòn đảo được làm nên bởi tạo hoá kỳ vĩ và sống động. Vịnh Hạ Long có phong cảnh tuyệt đẹp nên nơi đây là một điểm du lịch rất hấp dẫn với du khách trong nước và quốc tế.\n'
                  'Vịnh Hạ Long là một di sản độc đáo bởi địa danh này chứa đựng những dấu tích quan trọng trong quá trình hình thành và phát triển lịch sử trái đất, là cái nôi cư trú của người Việt cổ, đồng thời là tác phẩm nghệ thuật tạo hình vĩ đại của thiên nhiên với sự hiện diện của hàng nghìn đảo đá muôn hình vạn trạng, với nhiều hang động kỳ thú quần tụ thành một thế giới vừa sinh động vừa huyền bí. Bên cạnh đó, vịnh Hạ Long còn là nơi tập trung đa dạng sinh học cao với những hệ sinh thái điển hình cùng với hàng nghìn loài động thực vật vô cùng phong phú, đa dạng. Nơi đây còn gắn liền với những giá trị văn hóa – lịch sử hào hùng của dân tộc.',
        },
        'en_US': {
          'welcome_to': 'Welcome to',
          '_welcome_to_detail': 'Quang Ninh',
          '_welcome_to_bottom': 'Project',
          '_welcome_to_bottom_detail': 'Creative Science',
          '_appbar_title': 'Quang Ninh Province',
          '_taxi': 'Taxi',
          '_hotels': 'Hotels',
          '_atms': 'ATMs',
          '_food': 'Restaurant',
          '_best_places': 'Best Places',
          '_title_name': 'Name',
          "_title_general_infor": "General information:",
          '_video_intro': 'Video Introduction:',
          '_read_continue': '...<read more>',
          '_read_collapse': ' <read collapse>',
          '_Volume': 'Volume',
          '_beacon_1_name': 'Quang Ninh Museum',
          "_beacon_1_name_detail": "Quang Ninh Museum",
          '_beacon_1_info':
              'Quang Ninh Museum is a unique architectural and artistic work. Visitors who have only glanced at it from the outside have praised and admired it. The museum has all sides covered in black glass, which gives it a very appealing aspect. This is like a giant mirror reflecting the majestic sea and sky in Ha Long city.\n'
                  'In addition, the museum is built in a distinctive square shape with a dominant black color, which many tourists link with black pearls, a valuable product in Ha Long. Indeed, the architecture of Quang Ninh Museum is a delicate harmony between simplicity and modernity, not only traditional but very new.',
          '_beacon_2_name': 'Tran Quoc Nghien Temple',
          '_beacon_2_name_detail': 'Tran Quoc Nghien Temple',
          '_beacon_2_info':
              'Monsignor Hung Vu Vuong Tran Quoc Nghien is the eldest son of Hung Dao Dai Vuong Tran Quoc Tuan. He was a general who made great contributions to the nation'
                  's 2nd and 3rd wars against the Nguyen Mong invaders, and was awarded the title '
                  "'Khai Quoc Cong'"
                  ' by King Tran.\n'
                  'At the end of the 13th century, the Temple of Monsignor Tran Quoc Nghien was established. It was reconstructed in 1913, first restored in 1938, and then renovated a second time in 2002. This is the ancient and sacred temple, located in the cluster of historical-cultural relics and scenic spots on Bai Tho Mountain. It has a history of nearly a thousand years and has been recognized as a national relic.',
          '_beacon_3_name': 'Long Tien Pagoda',
          '_beacon_3_name_detail': 'Long Tien Pagoda',
          '_beacon_3_info':
              'During the Nguyen Dynasty, Long Tien Pagoda was constructed in 1941. This place worships Buddhas and generals who have contributed to the country. Long Tien Pagoda has the largest area in Ha Long and is located on the street of the same name. It is a well-known location to preserve historical and cultural values for a very long time in urban life.',
          '_beacon_4_name': 'Bai Tho Mountain ',
          '_beacon_4_name_detail': 'Bai Tho Mountain ',
          '_beacon_4_info':
              'Located in the city center, Bai Tho Mountain appears majestic and superficial; a masterpiece of "mother nature" has been painstakingly molded in the limestone mountain construction. Bai Tho Mountain is a historical flow of poetry and glorious feats of the heroic land. The history of Bai Tho mountain was written in the process of building and defending the country and is associated with the anecdote of Hung Dao Vuong Tran Quoc Tuan'
                  's victory over the Nguyen Mong invaders on Bach Dang river in 1228. Today, the stone stele is still inscribed on the mountain'
                  's important strategic position in that victory: "From this mountain top, which thousands of years ago was an important watchtower on the northeastern border of the country, Bai Tho mountain just quietly "watched" the change of Quang Ninh; today, Bai Tho mountain has "participated" in the building of a tourism brand in Quang Ninh province. The mountain has proven its charm. Not only Bai Tho Mountain is an ideal destination for mountaineers, but it is also a great discovery journey for lovers of culture and history.\n'
                  'The journey to discover the mystery which has never been easy will bring many surprises. Each step at the foot of the mountain marks the years of revolutionary activities of the people of the Mining land in mysterious caves. Fortunately, in the early morning, climbers can see mountain goats grazing leisurely. The climb when clinging to the cliff to climb is an exciting thrill experience.',
          '_beacon_5_name': 'Ha Long Bay',
          "_beacon_5_name_detail": "Ha Long Bay",
          '_beacon_5_info':
              'Ha Long Bay has been recognized by UNESCO as a World Natural Heritage Site on numerous occasions, with thousands of islands created by a magnificent and lively creation. Ha Long Bay is a popular tourist attraction both domestically and internationally because of its stunning beauty.\n'
                  'Ha Long Bay is a unique heritage site because this place contains important vestiges of the formation and development of the earth'
                  's history. It is not only the cradle of the ancient Vietnamese people, but it is also a work of art from the great shape of nature, with the presence of thousands of rocky islands of all shapes and sizes and many interesting caves, gathering into a world that is both vivid and mysterious. In addition, Ha Long Bay is also home to a high concentration of biodiversity, with typical ecosystems and thousands of extremely rich and diverse species of flora and fauna. This place is also associated with the heroic historical and cultural values of the nation.',
        },
        'cn_CN': {
          'welcome_to': '欢迎来到',
          '_welcome_to_detail': '广西',
          '_welcome_to_bottom': '项目',
          '_welcome_to_bottom_detail': '创新科学',
          '_appbar_title': '越南广宁省',
          '_taxi': '出租车',
          '_hotels': '酒店',
          '_atms': 'ATM机',
          '_food': '餐馆',
          '_best_places': '最佳地点',
          '_title_name': '名称',
          "_title_general_infor": "常规信息：",
          '_video_intro': '视频介绍：',
          '_read_continue': '...<继续阅读>',
          '_read_collapse': ' <折叠阅读>',
          '_Volume': '音量',
          '_beacon_1_name': '广西博物馆',
          "_beacon_1_name_detail": "广西博物馆",
          '_beacon_1_info':
              '广西博物馆是一项独特的建筑和艺术作品。仅从外面看过它的游客都对它表示赞美和钦佩。博物馆的所有侧面都覆盖着黑色玻璃，这使它看起来非常吸引人。这就像是一面巨大的镜子，反射出哈龙市壮丽的海洋和天空。\n'
                  '此外，该博物馆的建筑风格独特，以主导性的黑色色调构建，许多游客将其与哈龙中的黑珍珠相联系，这是哈龙的一种宝贵产品。实际上，广西博物馆的建筑风格是简约和现代的精致和谐之间的完美融合，既有传统又非常新颖。',
          '_beacon_2_name': '陈国宁庙',
          '_beacon_2_name_detail': '陈国宁庙',
          '_beacon_2_info':
              '陈国宁庙是陈大元帅陈国宁的长子。他是一位在国家第二次和第三次对抗元兵入侵的将军，被授予了"开国公"的头衔。陈国宁庙始建于13世纪末。它在1913年重建，首次在1938年恢复，然后在2002年进行了第二次翻新。这是一个古老而神圣的庙宇，位于白桃山历史文化遗址和风景名胜群中。它拥有近千年的历史，并被认定为国家遗址。',
          '_beacon_3_name': '龙天寺',
          '_beacon_3_name_detail': '龙天寺',
          '_beacon_3_info':
              '龙天寺始建于阮朝时期，于1941年建成。这个地方供奉有为国家做出贡献的佛陀和将军。龙天寺是哈龙地区最大的庙宇，位于同名街道上。这是一个著名的地点，长期保存了历史和文化价值。',
          '_beacon_4_name': '白桃山',
          '_beacon_4_name_detail': '白桃山',
          '_beacon_4_info':
              '白桃山位于市中心，外表雄伟而肤浅，是石灰石山的杰作。白桃山是一首诗的历史流传，是英雄土地的辉煌壮丽之作。白桃山的历史是在建设和保卫国家的过程中书写的，与陈国宁将军在1228年巴克当江战胜元兵侵略者的轶事相联系。今天，山上的石碑仍然铭刻着山上那次胜利的重要战略位置："几千年前，这座山顶是国家东北边境的重要瞭望塔，白桃山默默地"观察"了广西的变化；如今，白桃山"参与"了广西旅游品牌的建设。山已经证明了它的魅力。白桃山不仅是登山者的理想目的地，也是文化和历史爱好者的伟大探索之旅。\n'
                  '探索从未容易的神秘之旅将带来许多惊喜。在山脚下的每一步都标志着神秘洞穴中矿山地区人民的革命活动的岁月。幸运的是，在清晨，攀登者可以看到山羊悠闲地吃草。攀登时紧贴悬崖攀爬是一种令人兴奋的刺激体验。',
          '_beacon_5_name': '下龙湾',
          "_beacon_5_name_detail": "下龙湾",
          '_beacon_5_info':
              '下龙湾已经多次被联合国教科文组织认定为世界自然遗产，数千座岛屿由宏伟而生动的创造而创造而出。由于其令人惊叹的美丽，下龙湾成为国内外游客热门的旅游胜地。\n'
                  '下龙湾是一个独特的遗产地，因为这个地方包含着地球历史形成和发展的重要遗迹。它不仅是古代越南人的摇篮，还是大自然伟大形态的艺术品，有着各种形状和大小的数千个岩石岛屿以及许多有趣的洞穴，汇集成一个既生动又神秘的世界。此外，下龙湾还是高浓度生物多样性的栖息地，拥有典型的生态系统和数千种极其丰富和多样的植物和动物物种。这个地方还与民族的英雄历史和文化价值联系在一起。',
        },
      };
}
