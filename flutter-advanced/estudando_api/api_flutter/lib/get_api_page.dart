import 'package:api_flutter/cep_model.dart';
import 'package:brasil_fields/brasil_fields.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class GetApiPage extends StatefulWidget {
  const GetApiPage({Key? key}) : super(key: key);

  @override
  State<GetApiPage> createState() => _GetApiPageState();
}

class _GetApiPageState extends State<GetApiPage> {
  TextEditingController controller = TextEditingController();
  CepModel? cepModel;
  FocusNode cepFocus = FocusNode();

  //Future<CepModel?> get getCepModel => cepModel;

  Future<CepModel?> getInfoByCep() async {
    String cep = controller.text.replaceAll(RegExp(r'[^\w\s]+'), '');
    String url = 'https://viacep.com.br/ws/89035360/json/'; //$cep/json/';
    try {
      var response = await Dio().get(url);
      if (response.data["erro"] != "true") {
        cepModel = CepModel.fromMap(response.data);
      } else {}
      //setState(() {});
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }

    return cepModel;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextFormField(
              focusNode: cepFocus,
              onFieldSubmitted: (value) async {
                await getInfoByCep();
                setState(() {
                  controller.text = "";
                  controller.clear();
                  cepFocus.unfocus();
                });
              },
              controller: controller,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly,
                CepInputFormatter(),
              ],
            ),
            const SizedBox(height: 30),
            FutureBuilder(
              future: getInfoByCep(),
              builder: (context, AsyncSnapshot<CepModel?> snapshot) {
                if (snapshot.data == null) {
                  const Text('');
                }
                return InkWell(
                  borderRadius: BorderRadius.circular(16),
                  onTap: () {},
                  child: Card(
                    elevation: 6,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Row(
                            children: const [
                              Icon(
                                Icons.home_work,
                                size: 40,
                              ),
                              SizedBox(width: 15),
                              Text(
                                "Meu endereço",
                                style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '${cepModel!.logradouro}, ${cepModel!.bairro}, ${cepModel!.localidade}',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey.shade600,
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    Text(
                                      cepModel!.cep,
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey.shade600,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.blueGrey,
                                child: Text(
                                  cepModel!.uf,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
