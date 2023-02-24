import 'package:flutter/material.dart';

/// Using TextField
class PaymentDetailPage extends StatefulWidget {
  const PaymentDetailPage({Key? key}) : super(key: key);

  @override
  State<PaymentDetailPage> createState() => _PaymentDetailPageState();
}

class _PaymentDetailPageState extends State<PaymentDetailPage> {
  var stateProvinceName = 'Pilih';

  final _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      _errorText();
    });
  }

  String? _errorText() {
    if (_controller.text.isEmpty) {
      return 'Data tidak boleh kosong';
    } else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(22.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            /// Payment Details
            const Text('PAYMENT DETAILS'),
            TextField(
              controller: _controller,
              onChanged: (value) {
                _errorText();
              },
              decoration: InputDecoration(
                  hintText: 'Name on card', errorText: _errorText()),
            ),
            Row(
              children: const [
                Expanded(
                  flex: 2,
                  child: TextField(
                    decoration: InputDecoration(hintText: 'Card number'),
                  ),
                ),
                SizedBox(width: 32.0),
                Expanded(
                  flex: 1,
                  child: TextField(
                    decoration: InputDecoration(hintText: 'Expiry'),
                  ),
                ),
                SizedBox(width: 32.0),
                Expanded(
                  flex: 1,
                  child: TextField(
                    decoration: InputDecoration(hintText: 'CVV'),
                  ),
                )
              ],
            ),

            /// Billing Address
            const SizedBox(
              height: 42.0,
            ),
            const Text('BILLING ADDRESS'),

            Row(
              children: const [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(hintText: 'Street Address'),
                  ),
                ),
                SizedBox(
                  width: 22.0,
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(hintText: 'City'),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: DropdownButton<String>(
                  hint: const Text('State / Province'),
                  value: stateProvinceName,
                  items: const [
                    DropdownMenuItem<String>(
                        value: 'Pilih', child: Text('Pilih')),
                    DropdownMenuItem<String>(
                        value: 'Jawa Tengah', child: Text('Jawa Tengah')),
                    DropdownMenuItem<String>(
                        value: 'Jawa Barat', child: Text('Jawa Barat')),
                    DropdownMenuItem<String>(
                        value: 'Jawa Timur', child: Text('Jawa Timur')),
                  ],
                  onChanged: (value) {
                    setState(() {
                      stateProvinceName = value ?? '';
                    });
                  },
                )),
                const SizedBox(
                  width: 22.0,
                ),
                const Expanded(
                  child: TextField(
                    decoration: InputDecoration(hintText: 'Zip Code'),
                  ),
                ),
              ],
            ),

            const SizedBox(
              height: 42.0,
            ),

            Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton(onPressed: () {}, child: const Text('Pay')),
            )
          ],
        ),
      )),
    );
  }
}
