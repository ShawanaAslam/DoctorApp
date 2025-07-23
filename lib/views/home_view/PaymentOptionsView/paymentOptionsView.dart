
import 'package:flutter/material.dart';

import '../../../controller/widgets/text_widget.dart';

class PaymentOptionsView extends StatefulWidget {
  const PaymentOptionsView({super.key});

  @override
  State<PaymentOptionsView> createState() => _PaymentOptionsViewState();
}

class _PaymentOptionsViewState extends State<PaymentOptionsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: TextWidget(txt: 'Payment Options',clr: Colors.black,fntwt: FontWeight.w500,),
        centerTitle: true,
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back)),
      ),
    );
  }
}

