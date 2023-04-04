import 'package:crmtuo/utility/custome_popups.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Job details"),
        ),
        body: Container(
          child: Padding(
            padding: const EdgeInsets.only(left: 0,right: 0,top: 0),
            child: ListView(

              children: [
                 Padding(
                   padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Padding(
                         padding: const EdgeInsets.only(top: 20,bottom: 10),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             CustomTextStyle.extraBold(text: "Machine Learning",color: Colors.blue,fontSize: 18.0),
                             CustomTextStyle.extraBold(text: "yotpo.",color: Colors.indigo,fontSize: 16.0),
                           ],
                         ),
                       ),
                       CustomTextStyle.regular(text: "Yotpo Solutions Pvt. Ltd", fontSize: 14,color: Colors.grey),
                       const SizedBox(height: 5.0,),
                       CustomTextStyle.regular(
                           text: "Posted: 1 day ago  Job Applicants: 199", fontSize: 14,color: Colors.grey),
                       const SizedBox(height: 20,),
                       buildRowJobDetails( icon: Icons.card_giftcard, text: "5-10 years"),
                       const SizedBox(height: 5.0,),
                       buildRowJobDetails(icon: Icons.credit_card, text: "\$5000-\$10000 P.A"),
                       const SizedBox(height: 5.0,),
                       Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Wrap(
                               children: [
                                 const Icon(Icons.location_on_outlined,color: Colors.grey,),
                                 const SizedBox(
                                   width: 24,
                                 ),
                                 CustomTextStyle.bold(text: "Permanent Remote / WFH",fontSize: 14,color: Colors.grey),
                               ],
                             ),
                             GestureDetector(
                               onTap: () {},
                               child: Container(
                                 width: 80,
                                 height: 30,
                                 decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(50),
                                   color: Colors.blueAccent,
                                 ),
                                 child: const Center(child: Text('Apply',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                               ),
                             )
                           ]),
                     ],
                   ),
                 ),
                const Divider(thickness: 2.0,),
                const SizedBox(height: 10,),
                Row(children: [
                  Container(
                    width: 16,
                    height: 16,
                    color: Colors.blue,
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  CustomTextStyle.bold(text: "Job Highlights",fontSize: 16),
                ]),
                Container(
                  margin: EdgeInsets.only(right: 25),
                  child: Column(
                    children: [
                      const SizedBox(height: 10,),
                      Row(children: [
                        const SizedBox(
                          width: 32,
                        ),
                        CustomTextStyle.dotcircle(width: 4.0,height: 4.0),
                        const SizedBox(
                          width: 8,
                        ),
                        CustomTextStyle.regular(text: "Knowledge and experience of Machine Learning",
                            fontSize: 14,color: Colors.grey),
                      ]),
                      const SizedBox(height: 5,),
                      Row(children: [
                        const SizedBox(
                          width: 32,
                        ),
                        CustomTextStyle.dotcircle(width: 4.0,height: 4.0),
                        const SizedBox(
                          width: 8,
                        ),
                        Expanded(
                          child: CustomTextStyle.regular(text: "Good understanding of cross-platform and cross-browser",
                              fontSize: 14,color: Colors.grey),
                        ),
                      ]),
                      const SizedBox(height: 5,),
                      Row(children: [
                        const SizedBox(
                          width: 32,
                        ),
                        CustomTextStyle.dotcircle(width: 4,height: 4),
                        const SizedBox(
                          width: 8,
                        ),
                        CustomTextStyle.regular(text: "Experience with working on Text and image based Al",
                            fontSize: 14,color: Colors.grey),
                      ]),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(children: [
                  Container(
                    width: 16,
                    height: 16,
                    color: Colors.blue,
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  CustomTextStyle.bold(text: "Job Description",fontSize: 16),
                ]),
                Container(

                  child: Column(
                    children: [
                      const SizedBox(height: 10,),
                      Row(children: [
                        const SizedBox(
                          width: 32,
                        ),
                       CustomTextStyle.dotcircle(width: 4.0,height: 4.0),
                        const SizedBox(
                          width: 8,
                        ),
                        CustomTextStyle.regular(text: "Experience working closely with a programming",
                            fontSize: 14,color: Colors.grey),
                      ]),
                      const SizedBox(height: 5,),
                      Row(children: [
                        const SizedBox(
                          width: 32,
                        ),
                       CustomTextStyle.dotcircle(width: 4.0,height: 4.0),
                        const SizedBox(
                          width: 8,
                        ),
                        CustomTextStyle.regular(text: "in depth knowledge of current web & mobile techniques",
                            fontSize: 14,color: Colors.grey),
                      ]),
                      const SizedBox(height: 5,),
                      Row(children: [
                        const SizedBox(
                          width: 32,
                        ),
                       CustomTextStyle.dotcircle(width: 4.0,height: 4.0),
                        const SizedBox(
                          width: 8,
                        ),
                        CustomTextStyle.regular(text: "Experience with working on Text and image based Al",
                            fontSize: 14,color: Colors.grey),
                      ]),
                      const SizedBox(height: 5,),
                      Row(children: [
                        const SizedBox(
                          width: 32,
                        ),
                       CustomTextStyle.dotcircle(width: 4.0,height: 4.0),
                        const SizedBox(
                          width: 8,
                        ),
                        Expanded(
                          child: CustomTextStyle.regular(text: "Good communication skills are essential for liaising closely with customers  Ability to use initiative and work under pressure to achieve tight deadlines",
                              fontSize: 14,color: Colors.grey),
                        ),
                      ]),
                    ],
                  ),
                ),
                const SizedBox(height: 10,),
                const Divider(thickness: 2,),
                const SizedBox(height: 15,),
                Row(children: [
                  Container(
                    width: 16,
                    height: 16,
                    color: Colors.blue,
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  CustomTextStyle.bold(text: "About Company",fontSize: 16),
                ]),
                const SizedBox(height: 10,),
                Row(children: [
                      const SizedBox(
                        width: 32,
                      ),
                      Expanded(child:
                      const Text("Our core values are embedded in 4Ps: Personal Integrity. Prompt Fulfilment, Positive Energy, and Professional Development Like in any human relationship, business too has an important element that is critical for its sustenance. That is keeping promises literally translate to preserving your relationship with us long-term and contented Established in 1989",
                      style: TextStyle( fontSize: 14,color: Colors.grey, fontWeight: FontWeight.w400,),)),
                    ]),
                const Divider(thickness: 2,),
                const SizedBox(height: 15,),
              ],
            ),
          ),
        ));
  }

  Row buildRowJobDetails({IconData? icon, String? text}) {
    return Row(children: [
       Icon(icon,color: Colors.grey,),
      const SizedBox(
        width: 24,
      ),
      CustomTextStyle.bold(text: text,fontSize: 14,color: Colors.grey),
    ]);
  }
}
