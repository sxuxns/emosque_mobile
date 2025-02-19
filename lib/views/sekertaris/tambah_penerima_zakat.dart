import 'package:fe_pengabdian/calendar.dart';
import 'package:fe_pengabdian/input_form.dart';
import 'package:fe_pengabdian/zakat_fitrah.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:google_fonts/google_fonts.dart';


class addPenerimaZakat extends StatefulWidget{
  @override
  State<addPenerimaZakat> createState() => _addPenerimaZakatState();
}

class _addPenerimaZakatState extends State<addPenerimaZakat> {
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
            "Penerima Zakat",
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
              inputForm(judul: "Nama Yayasan", hint: "Masukkan Nama Yayasan"),
              inputForm(judul: "Rekapan Total Beras", hint: "Masukkan Rekapan Total Beras"),
              Container(
                margin: EdgeInsets.only(top: 16, left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                          "Rekapan Total Uang",
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w500
                          ),
                        ),
                    Container(
                      margin: EdgeInsets.only(top: 16),
                      child: Row(
                        children: [
                          Container(
                            height: 52,
                            width: 52,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color.fromRGBO(172, 172, 172, 1),
                                width: 0.7
                              ),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8),
                                bottomLeft: Radius.circular(8),
                                topRight: Radius.circular(0), // Tidak ada radius di sudut kanan atas
                                bottomRight: Radius.circular(0), // Tidak ada radius di sudut kanan bawah
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "Rp",
                                textAlign: TextAlign.center, // Mengatur penempatan horizontal
                                style: GoogleFonts.poppins(
                                  color: Color.fromRGBO(136, 136, 136, 1),
                                  fontSize: 16.5,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                       // Memberikan jarak antara kedua Container
                          Expanded( // Menggunakan Expanded untuk Container kedua
                            child: Container(
                              height: 52,
                              // Mengatur lebar Container kedua menjadi maksimal
                              width: double.infinity,
                              padding: EdgeInsets.only(left: 12),
                              decoration: BoxDecoration(
                                border: Border(
                                    right: BorderSide(
                                    color: Color.fromRGBO(172, 172, 172, 1),
                                    width: 0.7,
                                  ),
                                  top: BorderSide(
                                    color: Color.fromRGBO(172, 172, 172, 1),
                                    width: 0.7,
                                  ),
                                  bottom: BorderSide(
                                    color: Color.fromRGBO(172, 172, 172, 1),
                                    width: 0.7,
                                  ),
                                  left: BorderSide.none
                                ),
                                borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(0),
                                bottomLeft: Radius.circular(0),
                                topRight: Radius.circular(8), // Tidak ada radius di sudut kanan atas
                                bottomRight: Radius.circular(8), // Tidak ada radius di sudut kanan bawah
                              ),
                              ),
                              child: TextFormField(
                                autofocus: false,
                                cursorColor: Color.fromRGBO(172, 172, 172, 1),
                                style: GoogleFonts.poppins(
                                  color: Color.fromRGBO(136, 136, 136, 1),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500
                                ),
                                decoration: InputDecoration(
                                  hintText: "500.000",
                                  hintStyle: TextStyle(
                                    color: Color.fromRGBO(136, 136, 136, 1),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide.none
                                  ),
                                  border: UnderlineInputBorder(
                                    borderSide: BorderSide.none
                                  )
                                ),
                              ), 
                              // Widget lainnya di sini (jika ada)
                            ),
                          ),
                        ],
                      ),
                    ),
                    
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 16, left: 20, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Tanggal Rekapan",
                          style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w500
                          ),
                         ),
                        Container(
                          // margin: EdgeInsets.only(top: 16),
                          // height: 52,
                          //           // Mengatur lebar Container kedua menjadi maksimal
                          // width: double.infinity,
                          // padding: EdgeInsets.only(left: 12),
                          // decoration: BoxDecoration(
                          // border: Border.all(
                          // color: Color.fromRGBO(172, 172, 172, 1),
                          // width: 0.7
                          //       ),
                          //   borderRadius: BorderRadius.circular(8)
                          // ),
                          
                        ),
                      ],
                    ),
                ),
              calender(),
              Container(
                margin: EdgeInsets.only(top: 16, left: 20, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Total Penerimaan",
                          style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w500
                          ),
                         ),
                        Container(
                          margin: EdgeInsets.only(top: 16),
                          height: 52,
                                    // Mengatur lebar Container kedua menjadi maksimal
                          width: double.infinity,
                          padding: EdgeInsets.only(left: 12),
                          decoration: BoxDecoration(
                          border: Border.all(
                          color: Color.fromRGBO(172, 172, 172, 1),
                          width: 0.7
                                ),
                            borderRadius: BorderRadius.circular(8)
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(
                                child: Text(
                                  "Rp 50.000, Beras 10 Kilogram",
                                  
                                  style: GoogleFonts.poppins(
                                    color: Color.fromRGBO(172, 172, 172, 1),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400
                                  )),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                Container(
                margin: EdgeInsets.only(top: 16, left: 20, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Upload Bukti Surat",
                          style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w500
                          ),
                         ),
                        Container(
                          margin: EdgeInsets.only(top: 16),
                          height: 86,
                          width: double.infinity,
                          padding: EdgeInsets.only(left: 12),
                          decoration: BoxDecoration(
                          border: Border.all(
                          color: Color.fromRGBO(172, 172, 172, 1),
                          width: 0.7
                                ),
                            borderRadius: BorderRadius.circular(8)
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              
                              Icon(
                                Icons.file_upload_outlined,
                                size: 30,
                                color: Color.fromRGBO(172, 172, 172, 1),
                              ),
                              Text(
                                  "Upload Surat",
                                  style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400
                                  )),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
            ],
          ),
        ), 
      ),
      floatingActionButtonLocation:
        FloatingActionButtonLocation.endFloat,
        floatingActionButton: Container(
        height: 40,
        width: 110,
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5)
            ),
            backgroundColor: Color.fromRGBO(6, 215, 115, 1),
          ),
          onPressed: () {
            // Navigator.push(context, MaterialPageRoute(
            //   builder: (context) => zakatFitrah(),
            //   ));
          },
          child: const Center(
            child: Row(
              children: [
                Icon(
                            Icons.add_circle_outline,
                            color: Colors.white,
                            size: 17,),
                            SizedBox(width: 10),
                Text(
                  'Save',
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