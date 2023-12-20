import 'package:flutter/material.dart';
import 'package:news_app/Models/NewtileModel.dart';

class NewsTile extends StatelessWidget {
  
  const NewsTile({super.key, required this.newstileModel});
 final NewstileModel newstileModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 22),
      child: Column(
        children: [
          Container(
            height: 200,
            width: 350,
            decoration:  BoxDecoration(
                borderRadius:const BorderRadius.all(Radius.circular(10)),
                image: DecorationImage(
                  image: NetworkImage(
                     newstileModel.image??''),
                  fit: BoxFit.fill,
                )),
          ),
          const SizedBox(
            height: 12,
          ),
           Padding(
             padding: const EdgeInsets.only(left: 16),
             child: Text(
              newstileModel.text,
              maxLines: 2,
              style:const TextStyle(
                  color: Colors.black, fontSize: 20, fontWeight: FontWeight.w800),
                       ),
           ),
           Padding(
             padding: const EdgeInsets.only(left: 16),
             child: Text(
              newstileModel.Subtext??'',
              maxLines: 2,
              style:const TextStyle(color: Colors.grey, fontSize: 12),
                       ),
           )
        ],
      ),
    );
  }
}
