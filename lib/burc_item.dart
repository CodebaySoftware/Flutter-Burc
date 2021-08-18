import 'package:flutter/material.dart';
import 'package:flutter_new/burc_detay.dart';

import 'model/burc.dart';

class BurcItem extends StatelessWidget {
  final Burc listelenenBurc;
  const BurcItem({required this.listelenenBurc, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var myTextStyle = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 8,
        child: ListTile(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => BurcDetay(secilenBurc: listelenenBurc),
              ),
            );
          },
          leading: Image.asset(
            "assets/images/" + listelenenBurc.burcKucukResim,
            width: 64,
            height: 64,
          ),
          title: Text(listelenenBurc.burcAdi, style: myTextStyle.headline6),
          subtitle: Text(listelenenBurc.burcTarihi),
          trailing: Icon(
            Icons.arrow_forward_ios,
            color: Colors.pink,
          ),
        ),
      ),
    );
  }
}
