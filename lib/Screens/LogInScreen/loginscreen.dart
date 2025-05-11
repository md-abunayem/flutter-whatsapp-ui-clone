import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/Screens/OTP/otpscreen.dart';
import 'package:whatsapp_ui_clone/Widgets/uiHelper.dart';

class LogInScreen extends StatefulWidget {
  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {


  List<Map<String, String>> countries = [
    {"name": "Afghanistan", "dial_code": "+93"},
    {"name": "Albania", "dial_code": "+355"},
    {"name": "Algeria", "dial_code": "+213"},
    {"name": "Andorra", "dial_code": "+376"},
    {"name": "Angola", "dial_code": "+244"},
    {"name": "Argentina", "dial_code": "+54"},
    {"name": "Armenia", "dial_code": "+374"},
    {"name": "Australia", "dial_code": "+61"},
    {"name": "Austria", "dial_code": "+43"},
    {"name": "Azerbaijan", "dial_code": "+994"},
    {"name": "Bahamas", "dial_code": "+1-242"},
    {"name": "Bahrain", "dial_code": "+973"},
    {"name": "Bangladesh", "dial_code": "+880"},
    {"name": "Belarus", "dial_code": "+375"},
    {"name": "Belgium", "dial_code": "+32"},
    {"name": "Belize", "dial_code": "+501"},
    {"name": "Benin", "dial_code": "+229"},
    {"name": "Bhutan", "dial_code": "+975"},
    {"name": "Bolivia", "dial_code": "+591"},
    {"name": "Bosnia and Herzegovina", "dial_code": "+387"},
    {"name": "Botswana", "dial_code": "+267"},
    {"name": "Brazil", "dial_code": "+55"},
    {"name": "Brunei", "dial_code": "+673"},
    {"name": "Bulgaria", "dial_code": "+359"},
    {"name": "Burkina Faso", "dial_code": "+226"},
    {"name": "Burundi", "dial_code": "+257"},
    {"name": "Cambodia", "dial_code": "+855"},
    {"name": "Cameroon", "dial_code": "+237"},
    {"name": "Canada", "dial_code": "+1"},
    {"name": "Chad", "dial_code": "+235"},
    {"name": "Chile", "dial_code": "+56"},
    {"name": "China", "dial_code": "+86"},
    {"name": "Colombia", "dial_code": "+57"},
    {"name": "Congo (Brazzaville)", "dial_code": "+242"},
    {"name": "Congo (Kinshasa)", "dial_code": "+243"},
    {"name": "Costa Rica", "dial_code": "+506"},
    {"name": "Croatia", "dial_code": "+385"},
    {"name": "Cuba", "dial_code": "+53"},
    {"name": "Cyprus", "dial_code": "+357"},
    {"name": "Czech Republic", "dial_code": "+420"},
    {"name": "Denmark", "dial_code": "+45"},
    {"name": "Djibouti", "dial_code": "+253"},
    {"name": "Dominica", "dial_code": "+1-767"},
    {"name": "Dominican Republic", "dial_code": "+1-809"},
    {"name": "Ecuador", "dial_code": "+593"},
    {"name": "Egypt", "dial_code": "+20"},
    {"name": "El Salvador", "dial_code": "+503"},
    {"name": "Estonia", "dial_code": "+372"},
    {"name": "Ethiopia", "dial_code": "+251"},
    {"name": "Fiji", "dial_code": "+679"},
    {"name": "Finland", "dial_code": "+358"},
    {"name": "France", "dial_code": "+33"},
    {"name": "Gabon", "dial_code": "+241"},
    {"name": "Gambia", "dial_code": "+220"},
    {"name": "Georgia", "dial_code": "+995"},
    {"name": "Germany", "dial_code": "+49"},
    {"name": "Ghana", "dial_code": "+233"},
    {"name": "Greece", "dial_code": "+30"},
    {"name": "Grenada", "dial_code": "+1-473"},
    {"name": "Guatemala", "dial_code": "+502"},
    {"name": "Guinea", "dial_code": "+224"},
    {"name": "Guinea-Bissau", "dial_code": "+245"},
    {"name": "Guyana", "dial_code": "+592"},
    {"name": "Haiti", "dial_code": "+509"},
    {"name": "Honduras", "dial_code": "+504"},
    {"name": "Hungary", "dial_code": "+36"},
    {"name": "Iceland", "dial_code": "+354"},
    {"name": "India", "dial_code": "+91"},
    {"name": "Indonesia", "dial_code": "+62"},
    {"name": "Iran", "dial_code": "+98"},
    {"name": "Iraq", "dial_code": "+964"},
    {"name": "Ireland", "dial_code": "+353"},
    {"name": "Israel", "dial_code": "+972"},
    {"name": "Italy", "dial_code": "+39"},
    {"name": "Ivory Coast", "dial_code": "+225"},
    {"name": "Jamaica", "dial_code": "+1-876"},
    {"name": "Japan", "dial_code": "+81"},
    {"name": "Jordan", "dial_code": "+962"},
    {"name": "Kazakhstan", "dial_code": "+7"},
    {"name": "Kenya", "dial_code": "+254"},
    {"name": "Kuwait", "dial_code": "+965"},
    {"name": "Kyrgyzstan", "dial_code": "+996"},
    {"name": "Laos", "dial_code": "+856"},
    {"name": "Latvia", "dial_code": "+371"},
    {"name": "Lebanon", "dial_code": "+961"},
    {"name": "Lesotho", "dial_code": "+266"},
    {"name": "Liberia", "dial_code": "+231"},
    {"name": "Libya", "dial_code": "+218"},
    {"name": "Lithuania", "dial_code": "+370"},
    {"name": "Luxembourg", "dial_code": "+352"},
    {"name": "Madagascar", "dial_code": "+261"},
    {"name": "Malawi", "dial_code": "+265"},
    {"name": "Malaysia", "dial_code": "+60"},
    {"name": "Maldives", "dial_code": "+960"},
    {"name": "Mali", "dial_code": "+223"},
    {"name": "Malta", "dial_code": "+356"},
    {"name": "Mauritania", "dial_code": "+222"},
    {"name": "Mauritius", "dial_code": "+230"},
    {"name": "Mexico", "dial_code": "+52"},
    {"name": "Moldova", "dial_code": "+373"},
    {"name": "Monaco", "dial_code": "+377"},
    {"name": "Mongolia", "dial_code": "+976"},
    {"name": "Montenegro", "dial_code": "+382"},
    {"name": "Morocco", "dial_code": "+212"},
    {"name": "Mozambique", "dial_code": "+258"},
    {"name": "Myanmar", "dial_code": "+95"},
    {"name": "Namibia", "dial_code": "+264"},
    {"name": "Nepal", "dial_code": "+977"},
    {"name": "Netherlands", "dial_code": "+31"},
    {"name": "New Zealand", "dial_code": "+64"},
    {"name": "Nicaragua", "dial_code": "+505"},
    {"name": "Niger", "dial_code": "+227"},
    {"name": "Nigeria", "dial_code": "+234"},
    {"name": "North Korea", "dial_code": "+850"},
    {"name": "North Macedonia", "dial_code": "+389"},
    {"name": "Norway", "dial_code": "+47"},
    {"name": "Oman", "dial_code": "+968"},
    {"name": "Pakistan", "dial_code": "+92"},
    {"name": "Palestine", "dial_code": "+970"},
    {"name": "Panama", "dial_code": "+507"},
    {"name": "Papua New Guinea", "dial_code": "+675"},
    {"name": "Paraguay", "dial_code": "+595"},
    {"name": "Peru", "dial_code": "+51"},
    {"name": "Philippines", "dial_code": "+63"},
    {"name": "Poland", "dial_code": "+48"},
    {"name": "Portugal", "dial_code": "+351"},
    {"name": "Qatar", "dial_code": "+974"},
    {"name": "Romania", "dial_code": "+40"},
    {"name": "Russia", "dial_code": "+7"},
    {"name": "Rwanda", "dial_code": "+250"},
    {"name": "Saudi Arabia", "dial_code": "+966"},
    {"name": "Senegal", "dial_code": "+221"},
    {"name": "Serbia", "dial_code": "+381"},
    {"name": "Seychelles", "dial_code": "+248"},
    {"name": "Sierra Leone", "dial_code": "+232"},
    {"name": "Singapore", "dial_code": "+65"},
    {"name": "Slovakia", "dial_code": "+421"},
    {"name": "Slovenia", "dial_code": "+386"},
    {"name": "Somalia", "dial_code": "+252"},
    {"name": "South Africa", "dial_code": "+27"},
    {"name": "South Korea", "dial_code": "+82"},
    {"name": "Spain", "dial_code": "+34"},
    {"name": "Sri Lanka", "dial_code": "+94"},
    {"name": "Sudan", "dial_code": "+249"},
    {"name": "Suriname", "dial_code": "+597"},
    {"name": "Sweden", "dial_code": "+46"},
    {"name": "Switzerland", "dial_code": "+41"},
    {"name": "Syria", "dial_code": "+963"},
    {"name": "Taiwan", "dial_code": "+886"},
    {"name": "Tajikistan", "dial_code": "+992"},
    {"name": "Tanzania", "dial_code": "+255"},
    {"name": "Thailand", "dial_code": "+66"},
    {"name": "Tunisia", "dial_code": "+216"},
    {"name": "Turkey", "dial_code": "+90"},
    {"name": "Uganda", "dial_code": "+256"},
    {"name": "Ukraine", "dial_code": "+380"},
    {"name": "United Arab Emirates", "dial_code": "+971"},
    {"name": "United Kingdom", "dial_code": "+44"},
    {"name": "United States", "dial_code": "+1"},
    {"name": "Uruguay", "dial_code": "+598"},
    {"name": "Uzbekistan", "dial_code": "+998"},
    {"name": "Vanuatu", "dial_code": "+678"},
    {"name": "Venezuela", "dial_code": "+58"},
    {"name": "Vietnam", "dial_code": "+84"},
    {"name": "Yemen", "dial_code": "+967"},
    {"name": "Zambia", "dial_code": "+260"},
    {"name": "Zimbabwe", "dial_code": "+263"},
  ];

  late Map<String, String> selectedCountry = countries.firstWhere(
    (country) => country["name"] == "Bangladesh",
    orElse: () => countries[0],
  );

  TextEditingController numberController = TextEditingController();

  @override
  void dispose(){
    numberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 90,
            ),
            UiHelper.CustomText(
                text: "Enter your phone number",
                height: 20,
                textColor: Color(0xFF00A884),
                fontWeight: FontWeight.w700),
            SizedBox(
              height: 60,
            ),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: TextStyle(
                  height: 1.8,
                  fontSize: 16,
                ),
                children: [
                  TextSpan(
                      text: "WhatsApp will need to verify your phone",
                      style: TextStyle(color: Color(0xFF5E5E5E))),
                  TextSpan(
                      text: "\nnumber. Carrier charges may apply.",
                      style: TextStyle(color: Color(0xFF5E5E5E))),
                  TextSpan(
                      text: "\n What’s my number?",
                      style: TextStyle(color: Color(0xFF00A884))),
                ],
              ),
            ),
            SizedBox(height: 80),
            SizedBox(
              width: 350,
              child: DropdownButtonFormField(
                items: countries.map((Map<String, String> country) {
                  return DropdownMenuItem(
                    value: country,
                    child: Text(country["name"]!),
                  );
                }).toList(),
                onChanged: (newCountry) {
                  if (newCountry != null) {
                    setState(() => selectedCountry = newCountry);
                  }
                },
                value: selectedCountry,
                decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFF00A884),
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF00A884)))),
              ),
            ),
            SizedBox(height: 30,),
            SizedBox(
              width: 350,
              child: Row(
                children: [
                  SizedBox(
                    width: 80,
                    child: DropdownButtonFormField<Map<String, String>>(
                      items: countries.map((country) {
                        return DropdownMenuItem<Map<String, String>>(
                          value: country,
                          child: Text(country['dial_code']!),
                        );
                      }).toList(),
                      onChanged: (newCountry) {
                        if (newCountry != null) {
                          setState(() => selectedCountry = newCountry);
                        }
                      },
                      value: selectedCountry,
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF00A884)),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF00A884)),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Expanded(
                    child: TextField(
                      controller: numberController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: '01711111111',
                        enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(0xFF00A884))),
                        focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(0xFF00A884)))
                      ),
                    ),
                  )

                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: UiHelper.CustomButton(callback: (){
        return login(numberController.text.toString());
      }, buttonName: "Next"),
      floatingActionButtonLocation:FloatingActionButtonLocation.centerFloat,

    );
  }
  login(String phoneNumber){
    if(phoneNumber==""){
      return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Enter Phone Number"),backgroundColor: Color(0xFF00A884)));
    }else{
      return Navigator.push(context, MaterialPageRoute(builder: (context){
        return OTPScreen(phoneNumber: phoneNumber,);
      }));
    }
    
  }
}
