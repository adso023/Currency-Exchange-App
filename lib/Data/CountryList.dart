class CountryList {

  List<Map<String, String>> _countries = [
    {"Code" : "AUD", "Name" : "Australian Dollar", "Country" : "Australia", "flag" : "assets/flags/australia.svg"},
    {"Code" : "BGN", "Name" : "Bulgarian lev", "Country" : "Bulgaria", "flag" : "assets/flags/bulgaria.svg"},
    {"Code" : "BRL", "Name" : "Brazilian real", "Country" : "Brazil", "flag" : "assets/flags/brazil.svg"},
    {"Code" : "CAD", "Name" : "Canadian dollar", "Country" : "Canada", "flag" : "assets/flags/canada.svg"},
    {"Code" : "CHF", "Name" : "Swiss franc", "Country" : "Switzerland", "flag" : "assets/flags/switzerland.svg"},
    {"Code" : "CNY", "Name" : "Chinese yuan renminbi", "Country" : "China", "flag" : "assets/flags/china.svg"},
    {"Code" : "CZK", "Name" : "Czech koruna", "Country" : "Czech Republic", "flag" : "assets/flags/czech.svg"},
    {"Code" : "DKK", "Name" : "Danish krone", "Country" : "Denmark", "flag" : "assets/flags/denmark.svg"},
    {"Code" : "GBP", "Name" : "Pound sterling", "Country" : "Great Britain", "flag" : "assets/flags/greatbritain.svg"},
    {"Code" : "HKD", "Name" : "Hong Kong dollar", "Country" : "Hong Kong", "flag" : "assets/flags/hongkong.svg"},
    {"Code" : "HRK", "Name" : "Croatian kuna", "Country" : "Croatia", "flag" : "assets/flags/croatia.svg"},
    {"Code" : "HUF", "Name" : "Hungarian forint", "Country" : "Hungary", "flag" : "assets/flags/hungary.svg"},
    {"Code" : "IDR", "Name" : "Indonesian rupiah", "Country" : "Indonesia", "flag" : "assets/flags/indonesia.svg"},
    {"Code" : "ILS", "Name" : "Israeli shekel", "Country" : "Israel", "flag" : "assets/flags/israel.svg"},
    {"Code" : "INR", "Name" : "Indian rupee", "Country" : "India", "flag" : "assets/flags/india.svg"},
    {"Code" : "ISK", "Name" : "Icelandic krona", "Country" : "Iceland", "flag" : "assets/flags/iceland.svg"},
    {"Code" : "JPY", "Name" : "Japanese yen", "Country" : "Japan", "flag" : "assets/flags/japan.svg"},
    {"Code" : "KRW", "Name" : "South Korean won", "Country" : "South Korea", "flag" : "assets/flags/southkorea.svg"},
    {"Code" : "MXN", "Name" : "Mexican peso", "Country" : "Mexico", "flag" : "assets/flags/mexico.svg"},
    {"Code" : "MYR", "Name" : "Malaysian ringgit", "Country" : "Malaysia", "flag" : "assets/flags/malaysia.svg"},
    {"Code" : "NOK", "Name" : "Norwegian krone", "Country" : "Norway", "flag" : "assets/flags/norway.svg"},
    {"Code" : "NZD", "Name" : "New Zealand dollar", "Country" : "New Zealand", "flag" : "assets/flags/newzealand.svg"},
    {"Code" : "PHP", "Name" : "Philippine peso", "Country" : "Philippines", "flag" : "assets/flags/philippine.svg"},
    {"Code" : "PLN", "Name" : "Polish zloty", "Country" : "Poland", "flag" : "assets/flags/poland.svg"},
    {"Code" : "RON", "Name" : "Romanian leu", "Country" : "Romania", "flag" : "assets/flags/romania.svg"},
    {"Code" : "RUB", "Name" : "Russian rouble", "Country" : "Russia", "flag" : "assets/flags/russia.svg"},
    {"Code" : "SEK", "Name" : "Swedish krona", "Country" : "Sweden", "flag" : "assets/flags/sweden.svg"},
    {"Code" : "SGD", "Name" : "Singapore dollar", "Country" : "Singapore", "flag" : "assets/flags/singapore.svg"},
    {"Code" : "THB", "Name" : "Thai baht", "Country" : "Thailand", "flag" : "assets/flags/thailand.svg"},
    {"Code" : "TRY", "Name" : "Turkish lira", "Country" : "Turkey", "flag" : "assets/flags/turkey.svg"},
    {"Code" : "USD", "Name" : "US dollar", "Country" : "United States of America", "flag" : "assets/flags/usa.svg"},
    {"Code" : "ZAR", "Name" : "South African rand", "Country" : "South Africa", "flag" : "assets/flags/southafrica.svg"}
  ];

//  List<Map<String, String>> _countries = [
//    {
//      "Code": "AED",
//      "Name": "UAE Dirham",
//      "Country": "United Arab Emirates"
//    },
//    {
//      "Code": "ARS",
//      "Name": "Argentine Peso",
//      "Country": "Argentina"
//    },
//    {
//      "Code": "AUD",
//      "Name": "Australian Dollar",
//      "Country": "Australia"
//    },
//    {
//      "Code": "BGN",
//      "Name": "Bulgarian Lev",
//      "Country": "Bulgaria"
//    },
//    {
//      "Code": "BRL",
//      "Name": "Brazilian Real",
//      "Country": "Brazil"
//    },
//    {
//      "Code": "BSD",
//      "Name": "Bahamian Dollar",
//      "Country": "Bahamas"
//    },
//    {
//      "Code": "CAD",
//      "Name": "Canadian Dollar",
//      "Country": "Canada"
//    },
//    {
//      "Code": "CHF",
//      "Name": "Swiss Franc",
//      "Country": "Switzerland"
//    },
//    {
//      "Code": "CLP",
//      "Name": "Chilean Peso",
//      "Country": "Chile"
//    },
//    {
//      "Code": "CNY",
//      "Name": "Chinese Renminbi",
//      "Country": "China"
//    },
//    {
//      "Code": "COP",
//      "Name": "Colombian Peso",
//      "Country": "Colombia"
//    },
//    {
//      "Code": "CZK",
//      "Name": "Czech Koruna",
//      "Country": "Czech Republic"
//    },
//    {
//      "Code": "DKK",
//      "Name": "Danish Krone",
//      "Country": "Denmark"
//    },
//    {
//      "Code": "DOP",
//      "Name": "Dominican Peso",
//      "Country": "Dominican Republic"
//    },
//    {
//      "Code": "EGP",
//      "Name": "Egyptian Pound",
//      "Country": "Egypt"
//    },
//    {
//      "Code": "EUR",
//      "Name": "Euro",
//      "Country": "Germany"
//    },
//    {
//      "Code": "EUR",
//      "Name": "Euro",
//      "Country": "Austria"
//    },
//    {
//      "Code": "EUR",
//      "Name": "Euro",
//      "Country": "Belgium"
//    },
//    {
//      "Code": "EUR",
//      "Name": "Euro",
//      "Country": "Cyprus"
//    },
//    {
//      "Code": "EUR",
//      "Name": "Euro",
//      "Country": "Estonia"
//    },
//    {
//      "Code": "EUR",
//      "Name": "Euro",
//      "Country": "Finland"
//    },
//    {
//      "Code": "EUR",
//      "Name": "Euro",
//      "Country": "France"
//    },
//    {
//      "Code": "EUR",
//      "Name": "Euro",
//      "Country": "Greece"
//    },
//    {
//      "Code": "EUR",
//      "Name": "Euro",
//      "Country": "Ireland"
//    },
//    {
//      "Code": "EUR",
//      "Name": "Euro",
//      "Country": "Italy"
//    },
//    {
//      "Code": "EUR",
//      "Name": "Euro",
//      "Country": "Latvia"
//    },
//    {
//      "Code": "EUR",
//      "Name": "Euro",
//      "Country": "Lithuania"
//    },
//    {
//      "Code": "EUR",
//      "Name": "Euro",
//      "Country": "Luxembourg"
//    },
//    {
//      "Code": "EUR",
//      "Name": "Euro",
//      "Country": "Malta"
//    },
//    {
//      "Code": "EUR",
//      "Name": "Euro",
//      "Country": "Netherlands"
//    },
//    {
//      "Code": "EUR",
//      "Name": "Euro",
//      "Country": "Portugal"
//    },
//    {
//      "Code": "EUR",
//      "Name": "Euro",
//      "Country": "Slovakia"
//    },
//    {
//      "Code": "EUR",
//      "Name": "Euro",
//      "Country": "Slovenia"
//    },
//    {
//      "Code": "EUR",
//      "Name": "Euro",
//      "Country": "Spain"
//    },
//    {
//      "Code": "FJD",
//      "Name": "Fiji Dollar",
//      "Country": "Fiji"
//    },
//    {
//      "Code": "GBP",
//      "Name": "Pound Sterling",
//      "Country": "United Kingdom"
//    },
//    {
//      "Code": "GTQ",
//      "Name": "Guatemalan Quetzal",
//      "Country": "Guatemala"
//    },
//    {
//      "Code": "HKD",
//      "Name": "Hong Kong Dollar",
//      "Country": "Hong Kong"
//    },
//    {
//      "Code": "HRK",
//      "Name": "Croatian Kuna",
//      "Country": "Croatia"
//    },
//    {
//      "Code": "HUF",
//      "Name": "Hungarian Forint",
//      "Country": "Hungary"
//    },
//    {
//      "Code": "IDR",
//      "Name": "Indonesian Rupiah",
//      "Country": "Indonesia"
//    },
//    {
//      "Code": "ILS",
//      "Name": "Israeli New Shekel",
//      "Country": "Israel"
//    },
//    {
//      "Code": "INR",
//      "Name": "Indian Rupee",
//      "Country": "India"
//    },
//    {
//      "Code": "ISK",
//      "Name": "Icelandic Krona",
//      "Country": "Iceland"
//    },
//    {
//      "Code": "JPY",
//      "Name": "Japanese Yen",
//      "Country": "Japan"
//    },
//    {
//      "Code": "KRW",
//      "Name": "South Korean Won",
//      "Country": "South Korea"
//    },
//    {
//      "Code": "KZT",
//      "Name": "Kazakhstani Tenge",
//      "Country": "Kazakhstan"
//    },
//    {
//      "Code": "MVR",
//      "Name": "Maldivian Rufiyaa",
//      "Country": "Maldives"
//    },
//    {
//      "Code": "MXN",
//      "Name": "Mexican Peso",
//      "Country": "Mexico"
//    },
//    {
//      "Code": "MYR",
//      "Name": "Malaysian Ringgit",
//      "Country": "Malaysia"
//    },
//    {
//      "Code": "NOK",
//      "Name": "Norwegian Krone",
//      "Country": "Norway"
//    },
//    {
//      "Code": "NZD",
//      "Name": "New Zealand Dollar",
//      "Country": "New Zealand"
//    },
//    {
//      "Code": "PAB",
//      "Name": "Panamanian Balboa",
//      "Country": "Panama"
//    },
//    {
//      "Code": "PEN",
//      "Name": "Peruvian Sol",
//      "Country": "Peru"
//    },
//    {
//      "Code": "PHP",
//      "Name": "Philippine Peso",
//      "Country": "Philippines"
//    },
//    {
//      "Code": "PKR",
//      "Name": "Pakistani Rupee",
//      "Country": "Pakistan"
//    },
//    {
//      "Code": "PLN",
//      "Name": "Polish Zloty",
//      "Country": "Poland"
//    },
//    {
//      "Code": "PYG",
//      "Name": "Paraguayan Guarani",
//      "Country": "Paraguay"
//    },
//    {
//      "Code": "RON",
//      "Name": "Romanian Leu",
//      "Country": "Romania"
//    },
//    {
//      "Code": "RUB",
//      "Name": "Russian Ruble",
//      "Country": "Russia"
//    },
//    {
//      "Code": "SAR",
//      "Name": "Saudi Riyal",
//      "Country": "Saudi Arabia"
//    },
//    {
//      "Code": "SEK",
//      "Name": "Swedish Krona",
//      "Country": "Sweden"
//    },
//    {
//      "Code": "SGD",
//      "Name": "Singapore Dollar",
//      "Country": "Singapore"
//    },
//    {
//      "Code": "THB",
//      "Name": "Thai Baht",
//      "Country": "Thailand"
//    },
//    {
//      "Code": "TRY",
//      "Name": "Turkish Lira",
//      "Country": "Turkey"
//    },
//    {
//      "Code": "TWD",
//      "Name": "New Taiwan Dollar",
//      "Country": "Taiwan"
//    },
//    {
//      "Code": "UAH",
//      "Name": "Ukrainian Hryvnia",
//      "Country": "Ukraine"
//    },
//    {
//      "Code": "USD",
//      "Name": "United States Dollar",
//      "Country": "United States"
//    },
//    {
//      "Code": "UYU",
//      "Name": "Uruguayan Peso",
//      "Country": "Uruguay"
//    },
//    {
//      "Code": "ZAR",
//      "Name": "South African Rand",
//      "Country": "South Africa"
//    }
//  ];

  get countries => _countries;
}