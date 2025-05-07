import 'package:ecommerce25_app/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ImageUIWidget(),
          PickingUpWidget(),
          DivConfirmedAndPersonCallWidget(),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              "Tip your shopper",
              style: AppTextStyle.inter16BlackW700.copyWith(fontSize: 16),
            ),
          ),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              "Everyone deserve a little kindness",
              style: AppTextStyle.inter16BlackW700.copyWith(
                color: Color(0xff898483),
                fontSize: 14,
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                4,
                (index) => Container(
                  padding: EdgeInsets.symmetric(horizontal: 15,vertical: 7),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.black26),
                  ),
                  child: Text("\$${index==0?2:index*5}.00",style: AppTextStyle.inter16BlackW700,),
                )
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DivConfirmedAndPersonCallWidget extends StatelessWidget {
  const DivConfirmedAndPersonCallWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
        decoration: BoxDecoration(
          color: Colors.white60,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.black12),
        ),
        child: Column(
          children: [
            RowConfirmedToDeliveredWidget(),
            SizedBox(height: 20),
            PersonCallWidget(),
          ],
        ),
      ),
    );
  }
}

class PersonCallWidget extends StatelessWidget {
  const PersonCallWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(
              child: Image.asset("assets/images/confirm_order/man.png"),
            ),
            SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "James Williams",
                  style: AppTextStyle.inter16BlackW700.copyWith(fontSize: 14),
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Text(
                      "Picking Orders",
                      style: AppTextStyle.inter16BlackW700.copyWith(
                        color: Color(0xff9B9B9B),
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(width: 10),
                    SizedBox(
                      height: 20,
                      width: 20,
                      child: Image.asset(
                        "assets/images/confirm_order/star.png",
                        width: 10,
                        height: 10,
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(width: 10),

                    Text(
                      "4.8",
                      style: AppTextStyle.inter16BlackW700.copyWith(
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        Row(
          children: [
            CircleAvatar(
              radius: 22,
              child: Image.asset("assets/images/confirm_order/chat.png"),
            ),
            SizedBox(width: 12),
            CircleAvatar(
              radius: 22,
              child: Image.asset("assets/images/confirm_order/telephone.png"),
            ),
          ],
        ),
      ],
    );
  }
}

class RowConfirmedToDeliveredWidget extends StatelessWidget {
  const RowConfirmedToDeliveredWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,

        itemBuilder:
            (context, index) => Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RowConfirmedWidget(
                  rowConfirmedModel: RowConfirmedModel.listConfirmed[index],
                ),

                index == 3
                    ? SizedBox()
                    : Container(width: 20, color: Colors.grey, height: 3),
              ],
            ),

        itemCount: RowConfirmedModel.listConfirmed.length,
      ),
    );
  }
}

class ImageUIWidget extends StatelessWidget {
  const ImageUIWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.sizeOf(context).width * .90,
      child: Image.asset(
        "assets/images/confirm_order/map.png",
        fit: BoxFit.fill,
      ),
    );
  }
}

class PickingUpWidget extends StatelessWidget {
  const PickingUpWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 20),
      decoration: BoxDecoration(
        color: Colors.white70,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        border: Border(top: BorderSide(color: Colors.black12, width: 1)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Picking up your order...",
                    style: AppTextStyle.inter16BlackW700,
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Arriving at 11:45",
                    style: AppTextStyle.inter16BlackW700.copyWith(
                      color: Color(0xff898483),
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              CircleAvatar(
                backgroundColor: Colors.black26,
                radius: 26,
                child: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.shopping_cart,
                    size: 35,
                    color: Colors.green,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class RowConfirmedWidget extends StatelessWidget {
  const RowConfirmedWidget({super.key, required this.rowConfirmedModel});

  final RowConfirmedModel rowConfirmedModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: 30,
          width: 40,
          child: Image.asset(rowConfirmedModel.pathImage, fit: BoxFit.fill),
        ),
        SizedBox(height: 10),
        FittedBox(
          child: Text(
            rowConfirmedModel.title,
            style: AppTextStyle.inter16BlackW700.copyWith(
              color: Colors.green,
              fontSize: 12,
            ),
          ),
        ),
      ],
    );
  }
}

class RowConfirmedModel {
  final String pathImage;
  final String title;

  RowConfirmedModel({required this.pathImage, required this.title});

  static List<RowConfirmedModel> listConfirmed = [
    RowConfirmedModel(
      title: "Confirmed",
      pathImage: "assets/images/confirm_order/confirmed.png",
    ),
    RowConfirmedModel(
      title: "Picking Items",
      pathImage: "assets/images/confirm_order/picking_items.png",
    ),
    RowConfirmedModel(
      title: "Out for delivery",
      pathImage: "assets/images/motocycle.png",
    ),
    RowConfirmedModel(
      title: "Delivered",
      pathImage: "assets/images/confirm_order/delivry.png",
    ),
  ];
}
