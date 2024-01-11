import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class BillWidget extends StatelessWidget {
  const BillWidget({super.key});

  @override
  Widget build(BuildContext context) {
    String referenceBill = '1234';

    return Container(
      width: 440,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const FlutterLogo(size: 100),
                  QrImageView(
                    data: referenceBill,
                    version: QrVersions.auto,
                    size: 140.0,
                  ),
                ],
              ),
              const Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Mini Shop",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                    Text(
                      'Vientiane Capital',
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ),
              Text(
                "ເລກທີບິນ : $referenceBill",
                style: const TextStyle(
                  fontSize: 15,
                ),
              ),
              const Text(
                "ວ.ດ.ປ : '01/01/2024 ",
                style: TextStyle(fontSize: 17),
              ),
              const Text(
                "ທະບຽນ : ",
                style: TextStyle(fontSize: 17),
              ),
              const Text(
                "ປະເພດ :  ລົດຈັກ",
                style: TextStyle(fontSize: 17),
              ),
              const Text(
                "ຜູ້ອອກບິນ : ສອນເພັດ",
                style: TextStyle(fontSize: 17),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '1,000',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 5),
                  Text(
                    'ກີບ',
                    style: TextStyle(fontSize: 17),
                  ),
                ],
              ),
              Row(
                children: [
                  Flexible(
                    child: GestureDetector(
                      onTap: () {},
                      child: ListTile(
                        title: const Text('ເງິນສົດ'),
                        leading: Radio(
                          value: 'cash',
                          groupValue: 'cash',
                          onChanged: (val) {},
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    child: GestureDetector(
                      onTap: () {},
                      child: ListTile(
                        title: const Text('ເງິນໂອນ'),
                        leading: Radio(
                          value: 'transfer',
                          groupValue: 'transfer',
                          onChanged: (val) {},
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Positioned(
            top: 260,
            right: 0,
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text(
                    'ກກ',
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    referenceBill,
                    textAlign: TextAlign.end,
                    style: const TextStyle(
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
