import 'dart:ui';
import 'package:final_year_project/reusableComponents/customColors.dart';
import 'package:final_year_project/reusableComponents/lodingbar.dart';
import 'package:final_year_project/reusableComponents/sizing.dart';
import 'package:final_year_project/reusableComponents/textStyleForOrders.dart';
import 'package:final_year_project/stateManagement/controllers/profilesController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:final_year_project/services/sharedPrefService.dart';
import '../profileScreen.dart';

class Home extends StatelessWidget {
  SharePrefService service = SharePrefService();
  final ProviderProfilesController controller =
      Get.put(ProviderProfilesController());
  @override
  Widget build(BuildContext context) {
      controller.getProfilesData();
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(children: [
              Container(
                height: Sizing.heightMultiplier * 14,
                color: CustomColors.lightGreen,
                child: Padding(
                  padding: EdgeInsets.only(
                      top: Sizing.heightMultiplier * 3,
                      left: Sizing.heightMultiplier + 10,
                      right: Sizing.heightMultiplier + 10,
                      bottom: Sizing.heightMultiplier),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                          child: Text(
                        'Mudassar Maqbool',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )),
                      Stack(
                        children: [
                          Icon(
                            Icons.circle_notifications,
                            color: Colors.white,
                            size: 30,
                          ),
                          Positioned(
                            right: 0,
                            child: Container(
                              height: 10,
                              width: 10,
                              decoration: BoxDecoration(
                                  color: CustomColors.lightRed,
                                  shape: BoxShape.circle),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: Sizing.heightMultiplier * 10,
                    right: Sizing.heightMultiplier + 5,
                    left: Sizing.heightMultiplier + 5),
                child: Card(
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0))),
                    elevation: 5,
                    child: Container(
                        height: Sizing.heightMultiplier * 14,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                'Overall Statistics',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.grey),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          '4.2',
                                          style:
                                              OrdersTextStyle.statisticsStyle(),
                                        ),
                                        Text(
                                          'Ratings',
                                          style: OrdersTextStyle
                                              .statisticsyTextStyle(),
                                        )
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text('3',
                                            style: OrdersTextStyle
                                                .statisticsStyle()),
                                        Text(
                                          'Reviews',
                                          style: OrdersTextStyle
                                              .statisticsyTextStyle(),
                                        )
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text('4',
                                            style: OrdersTextStyle
                                                .statisticsStyle()),
                                        Text(
                                          'Orders',
                                          style: OrdersTextStyle
                                              .statisticsyTextStyle(),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ))),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: Sizing.heightMultiplier * 25,
                    right: Sizing.heightMultiplier + 5,
                    left: Sizing.heightMultiplier + 5),
                child: Card(
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0))),
                    elevation: 5,
                    child: Container(
                        height: Sizing.heightMultiplier * 28,
                        width: MediaQuery.of(context).size.width,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Orders History',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.grey),
                              ),
                              //   Container(height: 1,color: Colors.grey,),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Active',
                                        style: OrdersTextStyle.ordersStyle()),
                                    Text('0',
                                        style:
                                            OrdersTextStyle.statisticsStyle())
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Completed',
                                        style: OrdersTextStyle.ordersStyle()),
                                    Text('2',
                                        style:
                                            OrdersTextStyle.statisticsStyle())
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Cancelled',
                                        style: OrdersTextStyle.ordersStyle()),
                                    Text('1',
                                        style:
                                            OrdersTextStyle.statisticsStyle())
                                  ],
                                ),
                              ),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(5.0))),
                                      minimumSize: Size(100, 40),
                                      primary: CustomColors.lightRed),
                                  onPressed: () {
                                    service.updateBoolSp();
                                    service.logOutCurrentuserSf();
                                  },
                                  child: Text('View Details'))
                            ],
                          ),
                        ))),
              )
            ]),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Services Offered',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.grey),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                  style: TextButton.styleFrom(
                      minimumSize: Size(150, 45),
                      primary: CustomColors.lightRed),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProfileScreen(
                              currentUserId: controller.id.value)),
                    );
                  },
                  child: Text('Add Service')),
            ),
            // Obx(() {
            //   if (controller.isLoading.value == true) {
            //     return LoadingBar();
            //   } else {
            //     return controller.profilesList.length == 0
            //         ? Center(child: Text("No Service Found"))
            //         : ListView.builder(
            //             physics: ScrollPhysics(),
            //             shrinkWrap: true,
            //             itemCount: controller.profilesList.length,
            //             itemBuilder: (context, index) {
            //               return Card(
            //                 elevation: 5,
            //                 shape: RoundedRectangleBorder(
            //                     borderRadius:
            //                         BorderRadius.all(Radius.circular(5))),
            //                 clipBehavior: Clip.antiAlias,
            //                 child: Container(
            //                   height: 100,
            //                   child: Row(
            //                     children: [
            //                       Padding(
            //                         padding: const EdgeInsets.all(2.0),
            //                         child: Container(
            //                             width: 100,
            //                             // height: 100,
            //                             decoration: BoxDecoration(
            //                                 borderRadius: BorderRadius.all(
            //                                     Radius.circular(5)),
            //                                 image: DecorationImage(
            //                                     image: NetworkImage(
            //                                         'http://192.168.43.31:4000/${controller.profilesList[index].shopImage}'),
            //                                     fit: BoxFit.cover))),
            //                       ),
            //                       Flexible(
            //                         child: Padding(
            //                           padding: const EdgeInsets.all(2.0),
            //                           child: Column(
            //                             crossAxisAlignment:
            //                                 CrossAxisAlignment.start,
            //                             mainAxisAlignment:
            //                                 MainAxisAlignment.spaceBetween,
            //                             children: [
            //                               Text(
            //                                 controller
            //                                     .profilesList[index].shopName,
            //                                 style: TextStyle(
            //                                     color: Colors.black,
            //                                     fontWeight: FontWeight.bold,
            //                                     fontSize: 15),
            //                               ),
            //                               Text(
            //                                   controller
            //                                       .profilesList[index].address,
            //                                   maxLines: 1,
            //                                   overflow: TextOverflow.ellipsis,
            //                                   style: TextStyle(
            //                                       color: Colors.black54)),
            //                               Text('9:AM-10:PM Mon-Sat',
            //                                   maxLines: 1,
            //                                   overflow: TextOverflow.ellipsis,
            //                                   style: OrdersTextStyle
            //                                       .servicesTextStyle()),
            //                               Align(
            //                                 alignment: Alignment.bottomLeft,
            //                                 child: Container(
            //                                   decoration: BoxDecoration(
            //                                     color: CustomColors.lightRed,
            //                                     //   border: Border.all(width: 1),
            //                                     borderRadius: BorderRadius.all(
            //                                         Radius.circular(5)),
            //                                   ),
            //                                   child: Padding(
            //                                     padding:
            //                                         const EdgeInsets.all(3.0),
            //                                     child: Text(
            //                                       controller
            //                                           .profilesList[index]
            //                                           .providercategories
            //                                           .providerCatName,
            //                                       style: TextStyle(
            //                                           color: Colors.white,
            //                                           fontWeight:
            //                                               FontWeight.normal),
            //                                     ),
            //                                   ),
            //                                   // height: 25,
            //                                   // width: 70,
            //                                 ),
            //                               )
            //                             ],
            //                           ),
            //                         ),
            //                       )
            //                     ],
            //                   ),
            //                 ),
            //               );
            //             },
            //           );
            //   }
            // }),
            StreamBuilder(
              stream: controller.profilesList.stream,
              builder: (contex, snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Center(child: Text(snapshot.data[index].address));
                    },
                    itemCount: snapshot.data.length,
                  );
                }
                return Text('loading');
              },
            )
          ],
        ),
      ),
    );
  }
}
