import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/entity/post/vo_product_post.dart';
import 'package:fast_app_base/entity/product/product_status.dart';
import 'package:fast_app_base/entity/product/vo_product.dart';
import 'package:fast_app_base/entity/user/vo_address.dart';

import 'user/vo_user.dart';

String picSum(int id) {
  return 'https://picsum.photos/id/$id/200/200';
}

final user1 = User(
  id: 1,
  nickname: "홍길동",
  temperature: 36.5,
  profileUrl: picSum(810),
);

final user2 = User(
  id: 2,
  nickname: "바다",
  temperature: 36.5,
  profileUrl: picSum(710),
);

final user3 = User(
  id: 3,
  nickname: "파도",
  temperature: 36.5,
  profileUrl: picSum(1010),
);

final product1 = Product(
  user1,
  '아이폰15',
  1000000,
  '상태S급, 판매합니다',
  ProductStatus.normal,
  [
    picSum(100),
    picSum(101),
    picSum(102),
  ],
);

final product2 = Product(
  user1,
  '갤럭시12',
  1200000,
  '새폰사서 팔아요 꺠끗하게 썼어요',
  ProductStatus.normal,
  [
    picSum(200),
    picSum(201),
    picSum(202),
  ],
);

final product3 = Product(
  user3,
  '조명 판매',
  10000,
  '예쁜 조명 감성 조명 판매합니당',
  ProductStatus.normal,
  [
    picSum(301),
    picSum(302),
    picSum(303),
  ],
);

final post1 = ProductPost(
    product1.user,
    product1,
    product1.description,
    const Address('사랑시 고백구 행복동', '서곡 두산 아파트'),
    30,
    99,
    DateTime.now().subtract(5.minutes));

final post2 = ProductPost(
    product2.user,
    product2,
    product2.description,
    const Address('사랑시 고백구 행복동', '서곡 두산 아파트'),
    5,
    25,
    DateTime.now().subtract(10.minutes));

final post3 = ProductPost(
    product3.user,
    product3,
    product3.description,
    const Address('사랑시 고백구 행복동', '서곡 두산 아파트'),
    1,
    2,
    DateTime.now().subtract(40.minutes));

final postList = [post1, post2, post3, post1, post2, post3];
