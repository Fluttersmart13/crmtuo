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
          child: ListView(
            children: [
              ListTile(
                title: CustomTextStyle.bold(text: "Machine Learning"),
                trailing: const Icon(Icons.join_full),
              ),
              CustomTextStyle.regular(text: "Yotpo Solutions Pvt. Ltd"),
              CustomTextStyle.regular(
                  text: "Posted: 1 day ago  job Applicants: 199"),
              buildRowJobDetails(),
              buildRowJobDetails(),
              Row(children: [
                const Icon(Icons.location_on),
                const SizedBox(
                  width: 24,
                ),
                CustomTextStyle.regular(text: "Permanent Remote / WFH"),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 80,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.blueAccent,
                    ),
                    child: const Center(child: Text('Apply')),
                  ),
                )
              ]),
              const Divider(),
              Row(children: [
                Container(
                  width: 16,
                  height: 16,
                  color: Colors.blue,
                ),
                const SizedBox(
                  width: 4,
                ),
                CustomTextStyle.bold(text: "Job Highlights"),
              ]),
              SizedBox(
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
                CustomTextStyle.bold(text: "Job Description"),
              ]),
              Row(children: [
                const SizedBox(
                  width: 32,
                ),
                Container(
                  height: 8,
                  width: 8,
                  decoration: const BoxDecoration(
                      color: Colors.grey, shape: BoxShape.circle),
                ),
                const SizedBox(
                  width: 8,
                ),
                CustomTextStyle.regular(text: "Job Description"),
              ]),
              const Divider(),
              Row(children: [
                Container(
                  width: 16,
                  height: 16,
                  color: Colors.blue,
                ),
                const SizedBox(
                  width: 4,
                ),
                CustomTextStyle.bold(text: "About Company"),
              ]),
              const Divider(),
            ],
          ),
        ));
  }

  Row buildRowJobDetails() {
    return Row(children: [
      const Icon(Icons.work),
      const SizedBox(
        width: 24,
      ),
      CustomTextStyle.regular(text: "5-10 years"),
    ]);
  }
}
