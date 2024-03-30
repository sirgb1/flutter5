import 'package:flutter/material.dart';
//import 'package:flutter_application4/cart.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';
import 'package:flutter_application1/cars_in_cart.dart';

class ProductCard extends StatelessWidget {
  final int id;
  final String title;
  final int price;
  final String imageUrl1;
  final String imageUrl2;
  final String imageUrl3;
  final String description;
  final String videoUrl;
  //final bool isInCart;
  //final bool isInFavorite;

  const ProductCard({
    super.key,
    required this.id,
    required this.title,
    required this.price,
    required this.imageUrl1,
    required this.imageUrl2,
    required this.imageUrl3,
    required this.description,
    required this.videoUrl,
    //required this.isInCart,
    //required this.isInFavorite
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailedCard(
              id: id,
              imageUrl1: imageUrl1,
              imageUrl2: imageUrl2,
              imageUrl3: imageUrl3,
              title: title,
              description: description,
              price: price,
              videoUrl: videoUrl,
            ),
          ),
        );
      },
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 2,
              child: Image.network(
                imageUrl1,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
                child: Text(
                  NumberFormat('##00,000').format(price) + ' ₽',
                  style: const TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


List<ProductCard> carList = [
  const ProductCard(
    id: 0,
    title: 'Lada (ВАЗ) 2121 (4x4)',
    price: 750000,
    imageUrl1: 'https://avatars.mds.yandex.net/get-autoru-vos/11396317/b8c47ea92cd535e3424ac8b7c74c80eb/456x342n',
    imageUrl2: 'https://yastatic.net/naydex/autoru/1UY5JP044/96dde5Vr4ND/b1ODDax8AgAsGDxsGIHEYDBFXERuHuo8baYDq0SzJgRipt46SneIKTzcxidyTll2x6skuz8XG1IfiWZ7k70W0rkWQgnpLwHAPd-ubcjUkbI3wMtVadyktrauDmGMuyke7W6arNvgTjvsRh-krVcU-NU17Sd3B5BMwtRjqUs9CQ2iEInJ7KPBDOBG8WkWBsjr7YZVwbGcZjT0K8BjDTkomWuvE-UV55a1rcAS8aSSFHsbtKhlcoZbwgeXpqkNesYM50',
    imageUrl3: 'https://yastatic.net/naydex/autoru/1UY5JP044/96dde5Vr4ND/b1ODDax8AgAsGDxsGIHEYDBFXERuHuo8baYDq0SzJgRipt46SrfJaTydBCF0Gk_iRWrwLj7DzxPeC3Mv0mhDU3kWV8h8ugABvF66rA5TEXK30tsXKcso9rEuDqbIvG_dbu9RadumnmztjJ-7d9GVu9-7Lia3Sx7MwVZt6kAxAkzkW4VDqGuNAWUDN2ceTcMr7gidib0TaDQzbItoyj3t3OlpkOCSaJm0Y80ZtiLYULtcda9j9U6fB0-TLi9Ad0WD5Q',
    description: 'Продаю Lada (ВАЗ) 2121 4x4, цвет фиолетовый, 2019 года выпуска, с пробегом 17 800 километров. В ПТС два собственника. Объем двигателя 1,7 литра, мощность 83 лошадиных силы. Автомобиль в отличном состоянии, не требует никаких дополнительных вложений. Без ДТП. Использовался исключительно не в городской среде, эксплуатируется крайне редко. Второй автомобиль. Готов ответить на все вопросы по телефону или при личной встрече. Звоните!',
    videoUrl: 'https://youtu.be/vuhvdBexD2U?si=Ek8qkj9j4qcoABSF',
    //isInCart: false,
    //isInFavorite: false,
  ),
  const ProductCard(
    id: 1,
    title: 'Lada (ВАЗ) Granta, 2023',
    price: 1040000,
    imageUrl1: 'https://avatars.mds.yandex.net/get-autoru-vos/11025717/6c733f19f80483698546fc68a7d7798d/1200x900n',
    imageUrl2: 'https://yastatic.net/naydex/autoru/25jb8Dp31/bbad79QX41y/nwXnjHoFNny4bR_qK4f8Ec5MiyIKl9S8N0BPqmdENRAd2kE0k8ya4rakhda9TfNHLucE4cA8CRW9rFVpw8yZoguAc9yrVyE8vSrMv3vSqcPJyRwzDVWaNuxIQmCvTDoKkhIFogOaXLAmf18VbJBwknH9myUWKoaWbHzOP08EAzveDemC_dO3uXb_0yGkRDgeUUJHaxNbXnmhgs4nKsl7x5YRyO1PUA296P7TSGOdM1c-vxzrFuHMECEzA77FBo66E0',
    imageUrl3: 'https://avatars.mds.yandex.net/get-autoru-vos/5928404/dbd509533d2e2d1375e448edf006ced5/1200x900n',
    description: 'Актуальная цена за абсолютно новый автомобиль будет действительна до конца этого года. Поторопитесь с исполнением задуманного по справедливой цене в этом году.',
    videoUrl: 'https://youtu.be/Wk5XTGyTemw?si=SmlCDRnmqTENT_jR',
    //isInCart: false,
    //isInFavorite: false,
  ),
  const ProductCard(
    id: 2,
    title: 'Lada (ВАЗ) Granta, 2019',
    price: 670000,
    imageUrl1: 'https://yastatic.net/naydex/autoru/25jb8Dp31/bbad79QX41y/nwXnjHoFNny4bR_qK4f8Ec5MiyIKl9S8N0BPqmdENRAd2kE0kg3aoPakBFao2TJE-2SE4NW83IL8eNYrw1oYo1_Vs13owuDpaGpYK3vSqcPJyRwzDVWaNuxIQmCvTDoKkhIFogOaXLAmf18VbJBwknH9myUWKoaWbHzOP08EAzveDemC_dO3uXb_0yGkRDgeUUJHaxNbXnmhgs4nKsl7x5YRyO1PUA296P7TSGOdM1c-vxzrFuHMECEzA77FBo66E0',
    imageUrl2: 'https://yastatic.net/naydex/autoru/25jb8Dp31/bbad79QX41y/nwXnjHoFNny4bR_qK4f8Ec5MiyIKl9S8N0BPqmdENRAd2kE0ks3a4rVkxpC7TPJT7iVQoMH93RQpuMLrVpnYIV5UZp0_lmMpfGvY6ikVKQNJ2wxxTUIWduvIQqfrS3zJEZPOZwPcjOcntd8KuJ17EHr63epRa0taqn1GMsNAxXkTgarGtNWwPzh02ODjyr-SlEOHKhVcGLKkhYgrrM75iNyXzapMkEa2KntehuWSdlO_tZ9tn2uAECwwCf9Cysf0kk',
    imageUrl3: 'https://yastatic.net/naydex/autoru/25jb8Dp31/bbad79QX41y/nwXnjHoFNny4bR_qK4f8Ec5MiyIKl9S8N0BPqmdENRAd2kE0ks3a4rVkxpC7TPJT7iVQoMH93RQpuMLrVpnYIV5UZp0_lmMpfGvY6ikVKQNJ2wxxTUIWduvIQqfrS3zJEZPOZwPcjOcntd8KuJ17EHr63epRa0taqn1GMsNAxXkTgarGtNWwPzh02ODjyr-SlEOHKhVcGLKkhYgrrM75iNyXzapMkEa2KntehuWSdlO_tZ9tn2uAECwwCf9Cysf0kk',
    description: 'Автомобиль продается официальным дилером Автомир Ярославка.',
    videoUrl: 'https://youtu.be/OH6Lhd5DbZw?si=xoVypI9hsIE-5-05',
    //isInCart: false,
    //isInFavorite: false,
  ),
  const ProductCard(
    id: 3,
    title: 'Lada (ВАЗ) 2107, 2007',
    price: 130000,
    imageUrl1: 'https://avatars.mds.yandex.net/get-autoru-vos/1595794/cfd6d922f5664652a52f2601d7977a31/1200x900n',
    imageUrl2: 'https://avatars.mds.yandex.net/get-autoru-vos/1644974/09cb1b58c143f044e0f23af519acd6ab/1200x900n',
    imageUrl3: 'https://yastatic.net/naydex/autoru/25jb8Dp31/bbad79QX41y/nwXnjHoFNny4bR_qK4f8Ec5MiyIKl9S8N0BPqmdENRAd2kE0kswaovakBFa92CaGrHERdcCoHJX97Vd_AhiY4ksBc90_wjQ8PSuM_DvSqcPJyRwzDVWaNuxIQmCvTDoKkhIFogOaXLAmf18VbJBwknH9myUWKoaWbHzOP08EAzveDemC_dO3uXb_0yGkRDgeUUJHaxNbXnmhgs4nKsl7x5YRyO1PUA296P7TSGOdM1c-vxzrFuHMECEzA77FBo66E0',
    description: 'Машина в отличном состоянии. Инжектор. В 1 цвете. ЛИТЫЕ ДИСКИ Р14. Каждая лампочка работает. МУЗЫКА БЛЮТУЗ. Чистые документы.',
    videoUrl: 'https://youtu.be/cWdJnEtiyOI?si=irPsdLHj_6Zz54XP',
  ),
  const ProductCard(
    id: 4,
    title: 'Lada (ВАЗ) Vesta SW, 2021',
    price: 1499000,
    imageUrl1: 'https://yastatic.net/naydex/autoru/25jb8Dp31/bbad79QX41y/nwXnjHoFNny4bR_qK4f8Ec5MiyIKl9S8N0BPqmdENRAd2kE0k81aoLdkRda8jPJT7HER4IJo3JR8L5V_QxhbIwkAs8g_wLS96SoZf_vSqcPJyRwzDVWaNuxIQmCvTDoKkhIFogOaXLAmf18VbJBwknH9myUWKoaWbHzOP08EAzveDemC_dO3uXb_0yGkRDgeUUJHaxNbXnmhgs4nKsl7x5YRyO1PUA296P7TSGOdM1c-vxzrFuHMECEzA77FBo66E0',
    imageUrl2: 'https://yastatic.net/naydex/autoru/25jb8Dp31/bbad79QX41y/nwXnjHoFNny4bR_qK4f8Ec5MiyIKl9S8N0BPqmdENRAd2kE0k41aYbfmxta8z3LGOqSFNEDpHMC97Bc-FhkNd4sAp56_16G8_auNPjvSqcPJyRwzDVWaNuxIQmCvTDoKkhIFogOaXLAmf18VbJBwknH9myUWKoaWbHzOP08EAzveDemC_dO3uXb_0yGkRDgeUUJHaxNbXnmhgs4nKsl7x5YRyO1PUA296P7TSGOdM1c-vxzrFuHMECEzA77FBo66E0',
    imageUrl3: 'https://yastatic.net/naydex/autoru/25jb8Dp31/bbad79QX41y/nwXnjHoFNny4bR_qK4f8Ec5MiyIKl9S8N0BPqmdENRAd2kE0k4zZILamhBapmadE-_EE4ABoyNX9rBcqVxmZ915B853_gKDo6asY_vvSqcPJyRwzDVWaNuxIQmCvTDoKkhIFogOaXLAmf18VbJBwknH9myUWKoaWbHzOP08EAzveDemC_dO3uXb_0yGkRDgeUUJHaxNbXnmhgs4nKsl7x5YRyO1PUA296P7TSGOdM1c-vxzrFuHMECEzA77FBo66E0',
    description: 'Продажа от официального дилера ГК «АВТОМИР».',
    videoUrl: 'https://youtu.be/grScH3F70Xo?si=jJR7Xf_21_uWrutE',
  ),
  const ProductCard(
    id: 5,
    title: 'Lada (ВАЗ) Vesta CNG, 2019',
    price: 725000,
    imageUrl1: 'https://yastatic.net/naydex/autoru/25jb8Dp31/bbad79QX41y/nwXnjHoFNny4bR_qK4f8Ec5MiyIKl9S8N0BPqmdENRAd2kE0ks_aoHekxZa9zyfErDAF4dT9yYDo7NV-F40Y95_BcwhqQ-NrqCpYvjvSqcPJyRwzDVWaNuxIQmCvTDoKkhIFogOaXLAmf18VbJBwknH9myUWKoaWbHzOP08EAzveDemC_dO3uXb_0yGkRDgeUUJHaxNbXnmhgs4nKsl7x5YRyO1PUA296P7TSGOdM1c-vxzrFuHMECEzA77FBo66E0',
    imageUrl2: 'https://yastatic.net/naydex/autoru/25jb8Dp31/bbad79QX41y/nwXnjHoFNny4bR_qK4f8Ec5MiyIKl9S8N0BPqmdENRAd2kE0kg3aIbfmhta8jXKSLmSQoJV9SEG--VVrwppYYgoBZogqlmNp6GpP_zvSqcPJyRwzDVWaNuxIQmCvTDoKkhIFogOaXLAmf18VbJBwknH9myUWKoaWbHzOP08EAzveDemC_dO3uXb_0yGkRDgeUUJHaxNbXnmhgs4nKsl7x5YRyO1PUA296P7TSGOdM1c-vxzrFuHMECEzA77FBo66E0',
    imageUrl3: 'https://avatars.mds.yandex.net/get-autoru-vos/1993805/8192c02cfcd09ba4f4f7c2fa906bb0c0/1200x900n',
    description: '1.Lada Vesta ,2019 год ,мотор 16 клапанный с кондиционером ,коробка механика ,пробег 121 тысяч ,на газу ,с подогревами',
    videoUrl: 'https://youtu.be/oMT8dpz6Z6k?si=EKCqdFAdL4SGysTA',
  ),
  const ProductCard(
    id: 6,
    title: 'Lada (ВАЗ) Vesta Cross, 2023',
    price: 1758000,
    imageUrl1: 'https://avatars.mds.yandex.net/get-autoru-vos/2163155/0c56469e90d792db113817da519ae56c/1200x900n',
    imageUrl2: 'https://avatars.mds.yandex.net/get-autoru-vos/11124027/a7e9f19a731cbbb4a05b1a63d3873875/1200x900n',
    imageUrl3: 'https://avatars.mds.yandex.net/get-autoru-vos/11836446/82c07c93bac9b10543905b8e2d9ec3ca/1200x900n',
    description: 'Автомобильные салоны ТЕХИНКОМ входят состав компании АО "МРО "ТЕХИНКОМ" и специализируются на продаже легковых автомобилей Волжского (ВАЗ) автомобильного завода. Салоны оборудованы всем необходимым оборудованием для продажи, гарантийного и послегарантийного обслуживания автомобилей LADA, а квалифицированный персонал, работающий в салонах, сделает покупку и обслуживание автомобиля быстрой и приятной. Также в наших автосалонах Вы можете установить любое дополнительное оборудование, предназначенное для установки на автомобили LADA.',
    videoUrl: 'https://youtu.be/B1sk6Esx0Iw?si=OX7l1maEYQ13HpS2',
  ),
  const ProductCard(
    id: 7,
    title: 'Lada (ВАЗ) XRAY, 2016',
    price: 789000,
    imageUrl1: 'https://avatars.mds.yandex.net/get-autoru-vos/1681159/c30b84c65ce4e61e7256848d1c92ded0/1200x900n',
    imageUrl2: 'https://avatars.mds.yandex.net/get-autoru-vos/4077809/0cfb43226b9590d83f68f36d7de85b2c/1200x900n',
    imageUrl3: 'https://yastatic.net/naydex/autoru/25jb8Dp31/bbad79QX41y/nwXnjHoFNny4bR_qK4f8Ec5MiyIKl9S8N0BPqmdENRAd2kE0k80bYvakhVao2bNTuycRoUGoHcBpuNb-Fk3YoQsUckg_w3XpaaqNKzvSqcPJyRwzDVWaNuxIQmCvTDoKkhIFogOaXLAmf18VbJBwknH9myUWKoaWbHzOP08EAzveDemC_dO3uXb_0yGkRDgeUUJHaxNbXnmhgs4nKsl7x5YRyO1PUA296P7TSGOdM1c-vxzrFuHMECEzA77FBo66E0',
    description: 'Номер объявления – 228 650 честные цены! Кредит не обязателен! Дополнительная скидка при покупке в Кредит до 60 000 рублей Дополнительная скидка по программе Трейд-ин до 30 000 рублей! Автомобиль прошел комплексную предпродажную подготовку! Вы получите достоверную информацию о состоянии автомобиля',
    videoUrl: 'https://youtu.be/5_N3rP9_F3w?si=2V05GSWw_j5exzMB',
  ),
  const ProductCard(
    id: 8,
    title: 'Lada (ВАЗ) 2114, 2005',
    price: 85000,
    imageUrl1: 'https://avatars.mds.yandex.net/get-autoru-vos/8381424/4c0f213cfc46ebbc9dcaaa7d03c93644/1200x900n',
    imageUrl2: 'https://yastatic.net/naydex/autoru/25jb8Dp31/bbad79QX41y/nwXnjHoFNny4bR_qK4f8Ec5MiyIKl9S8N0BPqmdENRAd2kE0kMxbovYmxZa8jSQHrGVQtIGoXsE9rZYrQ9kYd15Wp17qArR96D7Y_rvSqcPJyRwzDVWaNuxIQmCvTDoKkhIFogOaXLAmf18VbJBwknH9myUWKoaWbHzOP08EAzveDemC_dO3uXb_0yGkRDgeUUJHaxNbXnmhgs4nKsl7x5YRyO1PUA296P7TSGOdM1c-vxzrFuHMECEzA77FBo66E0',
    imageUrl3: 'https://yastatic.net/naydex/autoru/25jb8Dp31/bbad79QX41y/nwXnjHoFNny4bR_qK4f8Ec5MiyIKl9S8N0BPqmdENRAd2kE0k80b4PVlRZaoDKbSL2WQdhT9iYLpuBV-ggzZYsoUs10_gOF9aCoZKzvSqcPJyRwzDVWaNuxIQmCvTDoKkhIFogOaXLAmf18VbJBwknH9myUWKoaWbHzOP08EAzveDemC_dO3uXb_0yGkRDgeUUJHaxNbXnmhgs4nKsl7x5YRyO1PUA296P7TSGOdM1c-vxzrFuHMECEzA77FBo66E0',
    description: 'Авто на полном уверенном ходу,мотор работает хорошо,тихо, кпп не хрустит ,не вылетает. Дно,чашки,лонжероны целые! По кузову много ржавчины,передние крылья требуют замены,крышка багажника так же требует замены',
    videoUrl: 'https://youtu.be/xQdtUsfZHEA?si=14RhmrqhDEh1ViuZ',
  ),
  const ProductCard(
    id: 9,
    title: 'Lada (ВАЗ) Vesta, 2021',
    price: 1195000,
    imageUrl1: 'https://yastatic.net/naydex/autoru/25jb8Dp31/bbad79QX41y/nwXnjHoFNny4bR_qK4f8Ec5MiyIKl9S8N0BPqmdENRAd2kE0ks_bIXZkBFa82GeErGUQNFW9iFXo79Y_wpgZYR4B8Z1og7RofSpP6_vSqcPJyRwzDVWaNuxIQmCvTDoKkhIFogOaXLAmf18VbJBwknH9myUWKoaWbHzOP08EAzveDemC_dO3uXb_0yGkRDgeUUJHaxNbXnmhgs4nKsl7x5YRyO1PUA296P7TSGOdM1c-vxzrFuHMECEzA77FBo66E0',
    imageUrl2: 'https://avatars.mds.yandex.net/get-autoru-vos/1938692/fa11b2103a2073b7f2afecfa482be4fc/1200x900n',
    imageUrl3: 'https://avatars.mds.yandex.net/get-autoru-vos/2073135/121b955083e5c990c986dbc973ef561d/1200x900n',
    description: 'Номер объявления – 227 842. Честные цены! Кредит не обязателен! Дополнительная скидка при покупке в rредит до 70 000 рублей Дополнительная скидка по программе Трейд-ин до 40 000 рублей. Автомобиль прошел комплексную предпродажную подготовку. Вы получите достоверную информацию о состоянии автомобиля',
    videoUrl: 'https://youtu.be/nBLF5YDE_v8?si=ieZk7D1atzJTECPq',
  )
];


class DetailedCard extends StatelessWidget {
  final int id;
  final String title;
  final int price;
  final String imageUrl1;
  final String imageUrl2;
  final String imageUrl3;
  final String description;
  final String videoUrl;

  const DetailedCard({
    //super.key,
    required this.id,
    required this.title,
    required this.price,
    required this.imageUrl1,
    required this.imageUrl2,
    required this.imageUrl3,
    required this.description,
    required this.videoUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              if (cart.contains(carList[id])) {
                cart.remove(carList[id]);
                Fluttertoast.showToast(msg: "Товар был убран из корзины", toastLength: Toast.LENGTH_SHORT, gravity: ToastGravity.CENTER, backgroundColor: Colors.grey, textColor: Colors.white);
              } else {
                cart.add(CartedCar(id: id, title: title, price: price, imageUrl1: imageUrl1, imageUrl2: imageUrl2, imageUrl3: imageUrl3, description: description, videoUrl: videoUrl, quantity: 1,));
                Fluttertoast.showToast(msg: "Товар был добавлен в корзину", toastLength: Toast.LENGTH_SHORT, gravity: ToastGravity.CENTER, backgroundColor: Colors.grey, textColor: Colors.white);
              }
            },
          ),
          IconButton(
            onPressed: () {
              if (favorite.contains(carList[id])) {
                favorite.remove(carList[id]);
                Fluttertoast.showToast(msg: 'Товар был убран из избранного');
              } else {
                favorite.add(carList[id]);
                Fluttertoast.showToast(msg: 'Товар был добавлен в избранное');
              }
            },
            icon: const Icon(Icons.favorite),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
               // margin: const EdgeInsets.only(right: 20),
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
               ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                NumberFormat('##00,000').format(price) + ' ₽',
                style: const TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 300, height: 300, child: Image.network(imageUrl1)),
                  SizedBox(width: 300, height: 300, child: Image.network(imageUrl2)),
                  SizedBox(width: 300, height: 300, child: Image.network(imageUrl3)),
                ],
              ),
            ),
            Container(
              //width: 150,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(3.0),
              height: 80.0,
              child: Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Text(
                    description,
                    style: const TextStyle(fontSize: 18.0),
                    // maxLines: 3,
                    // overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ),
            YoutubePlayer(
              controller: YoutubePlayerController(
                initialVideoId: YoutubePlayer.convertUrlToId(videoUrl).toString(),
                flags: const YoutubePlayerFlags(
                  autoPlay: true,
                  mute: false,
                ),
              ),
              showVideoProgressIndicator: true,
              progressIndicatorColor: Colors.blueAccent,
            ),
          ],
        ),
      ),
    );
  }
}


List<CartedCar> cart = [];
List<ProductCard> favorite = [];