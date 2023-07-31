import 'package:eco_drive/models/vehicle_model.dart';
import 'package:flutter/material.dart';
import '../main.dart';

class VehicleListWiget extends StatelessWidget {

  late final Vehicle vehicle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5),
      child: Row(

        children: [
          Image(width: 60, height: 60,image:NetworkImage(vehicle.type)),
          //  Icon(Icons.bike_scooter_sharp,size:40),
          Container(
            width: mq.width * .7,
            child: Card(

              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(vehicle.name,style: TextStyle(fontSize: 20 ,fontWeight: FontWeight.w600),),
                        SizedBox(height: 5,),
                        Text("Year :${vehicle.age}",style: TextStyle(fontSize: 15 ,fontWeight: FontWeight.w500)),
                        SizedBox(height: 5,),

                      ],),

                    SizedBox(width: mq.width*.2,),
                    Column(

                      children: [
                        Text("Mileage : ${vehicle.mileage}",style: TextStyle(fontSize: 15 ,fontWeight: FontWeight.w500)),
                        SizedBox(height: 5,),
                        Text("Condition : ${vehicle.condition}",style: TextStyle(fontSize: 15 ,fontWeight: FontWeight.w500)),
                        SizedBox(height: 5,),

                      ],),

                  ],
                ),
              ),

            ),
          ),
        ],
      ),
    );
  }
}
