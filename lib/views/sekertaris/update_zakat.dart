import 'package:fe_pengabdian/dropdown_zakat.dart';
import 'package:fe_pengabdian/input_form.dart';
import 'package:fe_pengabdian/zakat_fitrah.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class updateZakat extends StatefulWidget{
  @override
  State<updateZakat> createState() => _tambahZakatState();
}

class _tambahZakatState extends State<updateZakat> {

  String? jenis;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          padding: EdgeInsets.only(left: 20),
          onPressed: (){},
          icon: Icon(
            Icons.arrow_back_ios,
            size: 25,
            ),
          ),
          title: Text(
            "Zakat Fitrah",
            style: 
            GoogleFonts.poppins(
              color: Color.fromRGBO(6, 215, 115, 1),
              fontSize: 25,
              fontWeight: FontWeight.bold
            ),),
          centerTitle: true,
      ),

      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              inputForm(judul: "Nama Pezakat", hint: "Masukkan Nama Pezakat"),
              inputForm(judul: "Jumlah Zakat", hint: "Masukkan Jumlah Zakat"),
              DropdownZakat(
                initialValue: jenis,
                onChanged: (newValue) {
                  setState(() {
                    jenis = newValue;
                  });
                },
              ),
              
            ],
          ),
        ), 
      ),
      floatingActionButtonLocation:
        FloatingActionButtonLocation.endFloat,
        floatingActionButton: Container(
        height: 40,
        width: 125,
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5)
            ),
            backgroundColor: Color.fromRGBO(55, 163, 165, 1),
          ),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) => zakatFitrah(),
              ));
          },
          child: const Center(
            child: Row(
              children: [
                Icon(
                            Icons.update,
                            color: Colors.white,
                            size: 17,),
                            SizedBox(width: 10),
                Text(
                  'Update',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16
                  ),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}