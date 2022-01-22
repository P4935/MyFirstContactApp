import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:my_first_contacts_app/contact_details_view.dart';
import 'package:my_first_contacts_app/contact_model.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);

  final ScrollController _scrollController = ScrollController();

  final List<Map<String, String>> data = [
    {
      "name": "Amir Burgess",
      "phone": "366-2288",
      "email": "proin@icloud.net",
      "region": "Trentino-Alto Adige",
      "country": "Turkey"
    },
    {
      "name": "Cassandra West",
      "phone": "1-798-205-8978",
      "email": "dolor@aol.ca",
      "region": "Wielkopolskie",
      "country": "Belgium"
    },
    {
      "name": "Amy Norris",
      "phone": "1-551-437-2291",
      "email": "pede.ultrices@aol.edu",
      "region": "Osun",
      "country": "Australia"
    },
    {
      "name": "Kieran Levy",
      "phone": "1-333-436-6132",
      "email": "euismod@aol.ca",
      "region": "Bedfordshire",
      "country": "United Kingdom"
    },
    {
      "name": "Pascale Wynn",
      "phone": "1-345-777-4262",
      "email": "per@icloud.org",
      "region": "Missouri",
      "country": "Peru"
    },
    {
      "name": "Alana Blackburn",
      "phone": "133-2206",
      "email": "aliquet.phasellus.fermentum@google.edu",
      "region": "Tyrol",
      "country": "Belgium"
    },
    {
      "name": "Linus Rivas",
      "phone": "1-262-314-2514",
      "email": "velit.justo@icloud.couk",
      "region": "Kocaeli",
      "country": "Russian Federation"
    },
    {
      "name": "Kristen Ashley",
      "phone": "832-0335",
      "email": "neque.et@aol.edu",
      "region": "Gorontalo",
      "country": "Netherlands"
    },
    {
      "name": "Christine Hodges",
      "phone": "250-7792",
      "email": "bibendum.fermentum.metus@aol.edu",
      "region": "Valparaíso",
      "country": "Spain"
    },
    {
      "name": "Ignacia Nielsen",
      "phone": "1-734-676-5726",
      "email": "quis.tristique@google.com",
      "region": "Kentucky",
      "country": "United States"
    },
    {
      "name": "Alfreda Harvey",
      "phone": "1-355-542-5742",
      "email": "pede.malesuada@aol.couk",
      "region": "Alajuela",
      "country": "Peru"
    },
    {
      "name": "Leilani Lee",
      "phone": "342-8154",
      "email": "a.feugiat@yahoo.com",
      "region": "Paraná",
      "country": "South Korea"
    },
    {
      "name": "Hamilton Newman",
      "phone": "279-3326",
      "email": "ligula@google.couk",
      "region": "Sverdlovsk Oblast",
      "country": "Colombia"
    },
    {
      "name": "Denise Hardin",
      "phone": "402-8642",
      "email": "ac.mattis@protonmail.com",
      "region": "Calabria",
      "country": "Pakistan"
    },
    {
      "name": "Katell Mooney",
      "phone": "1-522-834-8796",
      "email": "in.sodales.elit@protonmail.net",
      "region": "Picardie",
      "country": "Norway"
    },
    {
      "name": "Omar Spence",
      "phone": "755-5252",
      "email": "pede.et@outlook.edu",
      "region": "O'Higgins",
      "country": "Turkey"
    },
    {
      "name": "Yetta Dunlap",
      "phone": "182-8568",
      "email": "sed.facilisis@yahoo.org",
      "region": "łódzkie",
      "country": "Colombia"
    },
    {
      "name": "Harding Willis",
      "phone": "1-745-248-7145",
      "email": "donec.egestas.aliquam@hotmail.net",
      "region": "Araucanía",
      "country": "China"
    },
    {
      "name": "Adrienne Wiggins",
      "phone": "755-6176",
      "email": "sodales.elit.erat@yahoo.ca",
      "region": "Poitou-Charentes",
      "country": "Russian Federation"
    },
    {
      "name": "Chava Wynn",
      "phone": "1-735-266-9787",
      "email": "nunc.sit@hotmail.couk",
      "region": "Île-de-France",
      "country": "Austria"
    },
    {
      "name": "Karina Downs",
      "phone": "1-362-510-4232",
      "email": "pellentesque.ut@aol.org",
      "region": "Rio Grande do Sul",
      "country": "Italy"
    },
    {
      "name": "Dolan Cross",
      "phone": "1-242-349-4886",
      "email": "integer.id@hotmail.edu",
      "region": "Vorarlberg",
      "country": "Indonesia"
    },
    {
      "name": "Carson Herman",
      "phone": "839-8652",
      "email": "massa.mauris@aol.net",
      "region": "Waals-Brabant",
      "country": "Belgium"
    },
    {
      "name": "Fredericka Holt",
      "phone": "587-2255",
      "email": "tempus.non@outlook.edu",
      "region": "Calabria",
      "country": "Russian Federation"
    },
    {
      "name": "Cleo Hardy",
      "phone": "552-3983",
      "email": "ac.urna.ut@icloud.net",
      "region": "Abruzzo",
      "country": "Poland"
    },
    {
      "name": "Kenneth Hensley",
      "phone": "1-434-423-3127",
      "email": "metus@yahoo.net",
      "region": "Dōngběi",
      "country": "New Zealand"
    },
    {
      "name": "Ifeoma Haney",
      "phone": "521-1493",
      "email": "cursus.luctus@protonmail.org",
      "region": "Northern Territory",
      "country": "Nigeria"
    },
    {
      "name": "Tiger Boyer",
      "phone": "1-825-759-5993",
      "email": "non.lacinia@google.ca",
      "region": "Oklahoma",
      "country": "Spain"
    },
    {
      "name": "Nehru Walls",
      "phone": "838-5010",
      "email": "diam@yahoo.com",
      "region": "Hatay",
      "country": "Colombia"
    },
    {
      "name": "Caldwell Merrill",
      "phone": "461-0479",
      "email": "neque.venenatis@yahoo.com",
      "region": "Haute-Normandie",
      "country": "New Zealand"
    },
    {
      "name": "Kylee Mcintosh",
      "phone": "507-4534",
      "email": "etiam@protonmail.edu",
      "region": "Gävleborgs län",
      "country": "Italy"
    },
    {
      "name": "Giacomo Mcgee",
      "phone": "1-723-205-2133",
      "email": "iaculis.odio.nam@aol.net",
      "region": "South Island",
      "country": "Russian Federation"
    },
    {
      "name": "Giacomo Hahn",
      "phone": "1-294-412-6746",
      "email": "pede.nec@outlook.net",
      "region": "Nariño",
      "country": "United Kingdom"
    },
    {
      "name": "Tad Odom",
      "phone": "1-744-940-5864",
      "email": "ridiculus@hotmail.couk",
      "region": "Niger",
      "country": "Austria"
    },
    {
      "name": "Michael Adkins",
      "phone": "1-405-445-4089",
      "email": "consectetuer@google.ca",
      "region": "North Chungcheong",
      "country": "Mexico"
    },
    {
      "name": "Maxwell Morris",
      "phone": "652-6376",
      "email": "blandit.at@hotmail.edu",
      "region": "Melilla",
      "country": "United Kingdom"
    },
    {
      "name": "Seth Contreras",
      "phone": "475-9212",
      "email": "at@protonmail.net",
      "region": "Penza Oblast",
      "country": "Italy"
    },
    {
      "name": "Quinlan Smith",
      "phone": "1-561-882-8647",
      "email": "eu@hotmail.com",
      "region": "South Island",
      "country": "China"
    },
    {
      "name": "Cody Ross",
      "phone": "1-413-834-2754",
      "email": "quisque.tincidunt@protonmail.com",
      "region": "Nordrhein-Westphalen",
      "country": "Brazil"
    },
    {
      "name": "Harlan Ayala",
      "phone": "1-141-636-4756",
      "email": "orci.ut.semper@aol.net",
      "region": "Western Australia",
      "country": "Peru"
    },
    {
      "name": "Nita Welch",
      "phone": "415-3802",
      "email": "eleifend.nunc.risus@icloud.edu",
      "region": "East Nusa Tenggara",
      "country": "Belgium"
    },
    {
      "name": "Jessamine Cross",
      "phone": "1-864-635-1132",
      "email": "enim.nec.tempus@icloud.com",
      "region": "North Jeolla",
      "country": "Turkey"
    },
    {
      "name": "Rhoda Crosby",
      "phone": "1-670-825-8317",
      "email": "nec@icloud.ca",
      "region": "South Australia",
      "country": "India"
    },
    {
      "name": "Nash Reynolds",
      "phone": "1-187-774-5637",
      "email": "montes.nascetur@aol.net",
      "region": "Coahuila",
      "country": "New Zealand"
    },
    {
      "name": "Dara Conner",
      "phone": "1-315-401-5415",
      "email": "ipsum.leo.elementum@outlook.org",
      "region": "Buteshire",
      "country": "New Zealand"
    },
    {
      "name": "Kevyn Shields",
      "phone": "864-4622",
      "email": "bibendum.ullamcorper@yahoo.ca",
      "region": "Benue",
      "country": "Austria"
    },
    {
      "name": "Xanthus Vinson",
      "phone": "1-241-715-2447",
      "email": "rutrum@icloud.edu",
      "region": "Sachsen-Anhalt",
      "country": "Indonesia"
    },
    {
      "name": "Tatiana Lang",
      "phone": "766-5655",
      "email": "a.enim@yahoo.ca",
      "region": "Lorraine",
      "country": "Australia"
    },
    {
      "name": "Keefe Stewart",
      "phone": "1-552-889-3320",
      "email": "eleifend.non@hotmail.com",
      "region": "Schleswig-Holstein",
      "country": "Brazil"
    },
    {
      "name": "Dean Raymond",
      "phone": "140-4668",
      "email": "pede.cum@hotmail.net",
      "region": "Risaralda",
      "country": "South Korea"
    },
    {
      "name": "Desirae Dale",
      "phone": "874-9883",
      "email": "nulla.vulputate.dui@aol.com",
      "region": "Rajasthan",
      "country": "Australia"
    },
    {
      "name": "Indigo Stein",
      "phone": "563-3523",
      "email": "tristique.ac@google.edu",
      "region": "Ceuta",
      "country": "Colombia"
    },
    {
      "name": "Eric Riddle",
      "phone": "380-3319",
      "email": "luctus.et@hotmail.ca",
      "region": "Dadra and Nagar Haveli",
      "country": "Austria"
    },
    {
      "name": "Silas Robinson",
      "phone": "1-924-845-8612",
      "email": "luctus.felis@aol.ca",
      "region": "Manisa",
      "country": "France"
    },
    {
      "name": "Colleen Rosa",
      "phone": "1-367-351-1448",
      "email": "vestibulum@icloud.com",
      "region": "Manitoba",
      "country": "Italy"
    },
    {
      "name": "James Sampson",
      "phone": "608-4267",
      "email": "nibh.lacinia@hotmail.com",
      "region": "Arequipa",
      "country": "Peru"
    },
    {
      "name": "Brody Grant",
      "phone": "1-843-491-1234",
      "email": "morbi.quis@hotmail.ca",
      "region": "Northwest Territories",
      "country": "Spain"
    },
    {
      "name": "Ava Frederick",
      "phone": "1-616-321-3740",
      "email": "pellentesque.massa@protonmail.couk",
      "region": "Ohio",
      "country": "Mexico"
    },
    {
      "name": "Shaeleigh Marquez",
      "phone": "367-4284",
      "email": "nulla.ante@icloud.org",
      "region": "Antwerpen",
      "country": "Nigeria"
    },
    {
      "name": "Yoshio Burks",
      "phone": "1-962-556-2931",
      "email": "fermentum.vel.mauris@protonmail.edu",
      "region": "Friesland",
      "country": "Australia"
    },
    {
      "name": "Yuli Johnston",
      "phone": "1-418-730-4836",
      "email": "diam.dictum.sapien@aol.net",
      "region": "Tyrol",
      "country": "Peru"
    },
    {
      "name": "Elijah Rodgers",
      "phone": "803-2552",
      "email": "iaculis.quis@outlook.org",
      "region": "Lancashire",
      "country": "Turkey"
    },
    {
      "name": "Thor Sargent",
      "phone": "569-4247",
      "email": "luctus.aliquet.odio@protonmail.org",
      "region": "Pennsylvania",
      "country": "United Kingdom"
    },
    {
      "name": "Giacomo Sherman",
      "phone": "1-834-954-3184",
      "email": "curae.donec.tincidunt@protonmail.couk",
      "region": "Angus",
      "country": "Germany"
    },
    {
      "name": "Damian Daniels",
      "phone": "623-2775",
      "email": "risus@protonmail.com",
      "region": "Tyrol",
      "country": "Vietnam"
    },
    {
      "name": "Tanek Huffman",
      "phone": "1-922-238-4451",
      "email": "cursus.integer@google.net",
      "region": "Smolensk Oblast",
      "country": "France"
    },
    {
      "name": "Cally Howe",
      "phone": "1-485-526-5448",
      "email": "aliquam@hotmail.couk",
      "region": "Brandenburg",
      "country": "Austria"
    },
    {
      "name": "May Wiley",
      "phone": "410-4170",
      "email": "eu.tellus.eu@protonmail.edu",
      "region": "Bình Thuận",
      "country": "Australia"
    },
    {
      "name": "Palmer Newton",
      "phone": "631-8343",
      "email": "aliquet@aol.org",
      "region": "La Libertad",
      "country": "Costa Rica"
    },
    {
      "name": "Delilah Buck",
      "phone": "284-5181",
      "email": "dui.lectus@yahoo.net",
      "region": "Vermont",
      "country": "Netherlands"
    },
    {
      "name": "Dillon Burns",
      "phone": "1-894-435-4964",
      "email": "ullamcorper.magna.sed@aol.ca",
      "region": "Magallanes y Antártica Chilena",
      "country": "United States"
    },
    {
      "name": "Vielka Lowe",
      "phone": "448-5314",
      "email": "in.faucibus@hotmail.couk",
      "region": "West-Vlaanderen",
      "country": "South Korea"
    },
    {
      "name": "Hamilton Cain",
      "phone": "766-8816",
      "email": "imperdiet.ornare@yahoo.ca",
      "region": "Aydın",
      "country": "Australia"
    },
    {
      "name": "Felix Oneil",
      "phone": "1-784-571-7033",
      "email": "facilisis@protonmail.edu",
      "region": "Swiętokrzyskie",
      "country": "Indonesia"
    },
    {
      "name": "Hannah Barr",
      "phone": "1-316-364-4843",
      "email": "sed.congue@protonmail.org",
      "region": "Poitou-Charentes",
      "country": "Poland"
    },
    {
      "name": "Ramona Mack",
      "phone": "451-0864",
      "email": "nisl.quisque@protonmail.org",
      "region": "Connecticut",
      "country": "Indonesia"
    },
    {
      "name": "Zachary Hayden",
      "phone": "1-617-884-0884",
      "email": "vitae@icloud.ca",
      "region": "Norte de Santander",
      "country": "Canada"
    },
    {
      "name": "Tanisha Watts",
      "phone": "1-757-245-6361",
      "email": "lectus@hotmail.com",
      "region": "Chiapas",
      "country": "Costa Rica"
    },
    {
      "name": "Carly Weber",
      "phone": "1-271-364-2256",
      "email": "mi@hotmail.couk",
      "region": "Los Ríos",
      "country": "Indonesia"
    },
    {
      "name": "Kristen Sims",
      "phone": "288-1319",
      "email": "sem.vitae@outlook.org",
      "region": "Minas Gerais",
      "country": "Colombia"
    },
    {
      "name": "Leroy Salinas",
      "phone": "766-1533",
      "email": "quis.tristique.ac@google.net",
      "region": "Antofagasta",
      "country": "Poland"
    },
    {
      "name": "Xena Alston",
      "phone": "1-817-661-0528",
      "email": "nunc.mauris@icloud.com",
      "region": "Guanacaste",
      "country": "Australia"
    },
    {
      "name": "Madaline Gates",
      "phone": "107-4357",
      "email": "amet.orci@aol.edu",
      "region": "Marche",
      "country": "Colombia"
    },
    {
      "name": "Clare Hogan",
      "phone": "1-693-141-0121",
      "email": "ac.mi@hotmail.ca",
      "region": "Santa Catarina",
      "country": "United States"
    },
    {
      "name": "Rajah Perkins",
      "phone": "1-913-450-3576",
      "email": "duis@google.org",
      "region": "Ulster",
      "country": "United Kingdom"
    },
    {
      "name": "Rudyard Small",
      "phone": "1-407-286-5461",
      "email": "duis.elementum@aol.net",
      "region": "Herefordshire",
      "country": "Russian Federation"
    },
    {
      "name": "Charity Juarez",
      "phone": "322-8580",
      "email": "metus.eu.erat@protonmail.ca",
      "region": "Niger",
      "country": "Vietnam"
    },
    {
      "name": "Rhoda Frazier",
      "phone": "1-279-414-3506",
      "email": "adipiscing@icloud.org",
      "region": "Alajuela",
      "country": "Indonesia"
    },
    {
      "name": "Katell Frye",
      "phone": "1-675-954-3689",
      "email": "nisl.quisque@icloud.org",
      "region": "Katsina",
      "country": "Nigeria"
    },
    {
      "name": "Mollie Lynn",
      "phone": "327-5343",
      "email": "in@icloud.com",
      "region": "Ontario",
      "country": "Norway"
    },
    {
      "name": "Fay Nolan",
      "phone": "1-884-751-6175",
      "email": "montes@google.couk",
      "region": "Tyrol",
      "country": "Turkey"
    },
    {
      "name": "Elaine Shepherd",
      "phone": "1-722-839-0145",
      "email": "sagittis@icloud.couk",
      "region": "Araucanía",
      "country": "Russian Federation"
    },
    {
      "name": "Elvis Whitaker",
      "phone": "1-587-262-1333",
      "email": "pharetra.sed@icloud.ca",
      "region": "Querétaro",
      "country": "South Korea"
    },
    {
      "name": "Aimee Joyce",
      "phone": "1-362-278-8563",
      "email": "amet@google.net",
      "region": "Michoacán",
      "country": "Chile"
    },
    {
      "name": "Cooper Matthews",
      "phone": "643-8761",
      "email": "tincidunt.tempus.risus@outlook.net",
      "region": "Clackmannanshire",
      "country": "Vietnam"
    },
    {
      "name": "Theodore Dunlap",
      "phone": "1-635-343-0415",
      "email": "pellentesque.tincidunt@hotmail.ca",
      "region": "Niedersachsen",
      "country": "Australia"
    },
    {
      "name": "Mercedes Guthrie",
      "phone": "1-223-167-4764",
      "email": "sed.auctor@outlook.couk",
      "region": "Vestland",
      "country": "Brazil"
    },
    {
      "name": "Bevis Camacho",
      "phone": "1-373-861-5821",
      "email": "justo.sit.amet@hotmail.org",
      "region": "Xīběi",
      "country": "Vietnam"
    },
    {
      "name": "David Dillard",
      "phone": "812-1503",
      "email": "in@outlook.ca",
      "region": "South Gyeongsang",
      "country": "Germany"
    },
    {
      "name": "Kieran Todd",
      "phone": "250-5362",
      "email": "nec.ante@icloud.org",
      "region": "Meta",
      "country": "Italy"
    },
    {
      "name": "Brenda Salazar",
      "phone": "781-3726",
      "email": "maecenas.iaculis@google.ca",
      "region": "Tambov Oblast",
      "country": "Pakistan"
    },
    {
      "name": "Hyatt Trevino",
      "phone": "481-4587",
      "email": "dui.augue@icloud.org",
      "region": "Bauchi",
      "country": "Turkey"
    },
    {
      "name": "Alexa Hicks",
      "phone": "1-776-896-9424",
      "email": "vitae.semper@aol.com",
      "region": "Galicia",
      "country": "Austria"
    },
    {
      "name": "Chastity Huff",
      "phone": "507-2188",
      "email": "natoque@icloud.ca",
      "region": "West-Vlaanderen",
      "country": "China"
    },
    {
      "name": "Emma Little",
      "phone": "1-117-540-1224",
      "email": "orci.adipiscing.non@protonmail.net",
      "region": "North Gyeongsang",
      "country": "United Kingdom"
    },
    {
      "name": "Cally Duncan",
      "phone": "454-4101",
      "email": "nibh.enim@yahoo.net",
      "region": "Los Lagos",
      "country": "India"
    },
    {
      "name": "Uta Contreras",
      "phone": "1-402-439-3643",
      "email": "donec.vitae@hotmail.edu",
      "region": "Jönköpings län",
      "country": "South Korea"
    },
    {
      "name": "Amir Sharp",
      "phone": "553-1553",
      "email": "aliquam@yahoo.edu",
      "region": "Limousin",
      "country": "Peru"
    },
    {
      "name": "Martin Bond",
      "phone": "1-803-344-5353",
      "email": "luctus@icloud.org",
      "region": "Niger",
      "country": "Canada"
    },
    {
      "name": "Lacota Levine",
      "phone": "1-833-787-4643",
      "email": "in.nec.orci@hotmail.ca",
      "region": "Namen",
      "country": "Turkey"
    },
    {
      "name": "Catherine Juarez",
      "phone": "1-871-401-6883",
      "email": "enim.commodo.hendrerit@outlook.couk",
      "region": "Los Lagos",
      "country": "New Zealand"
    },
    {
      "name": "Barrett O'donnell",
      "phone": "1-953-245-7862",
      "email": "dignissim.lacus@icloud.com",
      "region": "Trøndelag",
      "country": "Belgium"
    },
    {
      "name": "Lani Schultz",
      "phone": "886-6124",
      "email": "dolor@protonmail.ca",
      "region": "Kaduna",
      "country": "Chile"
    },
    {
      "name": "Kato Montoya",
      "phone": "1-560-865-4341",
      "email": "lorem.ipsum@aol.edu",
      "region": "Chiapas",
      "country": "Turkey"
    },
    {
      "name": "Indigo Sargent",
      "phone": "484-8095",
      "email": "cum.sociis@google.edu",
      "region": "Sindh",
      "country": "Spain"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text('My Contacts',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            )),
        actions: const [
          Padding(padding: EdgeInsets.only(right: 10)),
          Center(
            child: CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage(
                  'assets/avatar.png',
                )),
          )
        ],
        elevation: 0,
        backgroundColor: Colors.white,
        bottom: PreferredSize(
            preferredSize: const Size.fromHeight(70),
            child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)),
                      hintText: 'Search name or number',
                      prefixIcon: const Icon(Icons.search)),
                ))),
      ),
      body: SafeArea(
        child: ListView(
          controller: _scrollController,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text('Recent',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600)),
            ),
            ListView.separated(
                controller: _scrollController,
                shrinkWrap: true,
                itemBuilder: (context, indent) {
                  return ListTile(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return ContactsDetailsView(
                            contact: Contact(
                                country: 'Ghana',
                                email: 'snowmace@gmail.com',
                                name: 'Obed Selase',
                                phone: '+233 246 778 104',
                                region: 'Eastern'));
                      }));
                    },
                    leading: const CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('assets/55.png')),
                    title: const Text('Obed Selase',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600)),
                    subtitle: const Text('+233 246 778 104'),
                    trailing: const IconButton(
                        onPressed: null, icon: Icon(Icons.more_horiz)),
                  );
                },
                separatorBuilder: (context, inedx) {
                  return const Divider(
                    indent: 25,
                    thickness: 2,
                  );
                },
                itemCount: 3),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Contacts',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
            ),
            GroupedListView<Map<String, String>, String>(
              shrinkWrap: true,
              elements: data,
              groupBy: (element) => element['name'].toString().substring(0, 1),
              groupSeparatorBuilder: (String groupByValue) => SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(groupByValue.substring(0, 1),
                      textAlign: TextAlign.right,
                      style: const TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 18)),
                ),
              ),
              itemBuilder: (context, Map<String, String> element) {
                Contact contact = Contact.fromJson(element);
                return Column(
                  children: [
                    ListTile(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return ContactsDetailsView(
                            contact: contact,
                          );
                        }));
                      },
                      leading: const CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage('assets/55.png')),
                      title: Text('${element['name']}',
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600)),
                      subtitle: Text('${element['phone']}'),
                      trailing: const IconButton(
                          onPressed: null, icon: Icon(Icons.more_horiz)),
                    ),
                    const Divider(
                      indent: 25,
                      thickness: 2,
                    )
                  ],
                );
              },
              itemComparator: (item1, item2) =>
                  item1['name']!.compareTo(item2['name']!),
              useStickyGroupSeparators: true,
              floatingHeader: true,
              order: GroupedListOrder.ASC,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF1A4ADA),
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
