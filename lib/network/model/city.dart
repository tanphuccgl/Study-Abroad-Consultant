class City {
  final String id;
  final String cityName;
  final String countryName;
  final String language;
  final String capital;
  final List<String> universities;
  final List<String> popularAttractions;
  final List<String> popularCuisines;
  final String currency;
  final String timeZone;

  City({
    required this.id,
    required this.cityName,
    required this.countryName,
    required this.language,
    required this.capital,
    required this.universities,
    required this.popularAttractions,
    required this.popularCuisines,
    required this.currency,
    required this.timeZone,
  });
}

List<City> america = [
  newyorkCity,
  losAngelesCity,
  sanFranciscoCity,
];

List<City> england = [
  londonCity,
  manchesterCity,
  edinburghCity,
];
List<City> france = [
  parisCity,
  marseilleCity,
  lyonCity,
];
List<City> germany = [
  berlinCity,
  munichCity,
  hamburgCity,
];



City berlinCity = City(
  id: '10',
  cityName: 'Berlin',
  countryName: 'Đức',
  language: 'Tiếng Đức',
  capital: 'Berlin',
  universities: [
    'Technical University of Berlin',
    'Free University of Berlin',
    'Humboldt University of Berlin',
  ],
  popularAttractions: [
    'Brandenburg Gate',
    'Berlin Wall',
    'Museum Island',
  ],
  popularCuisines: [
    'Currywurst',
    'Schnitzel',
    'Berliner Pfannkuchen',
  ],
  currency: 'Euro (EUR)',
  timeZone: 'Giờ Trung Âu (CET)',
);
City munichCity = City(
  id: '11',
  cityName: 'Munich',
  countryName: 'Đức',
  language: 'Tiếng Đức',
  capital: 'Berlin',
  universities: [
    'Technical University of Munich',
    'Ludwig Maximilian University of Munich',
    'Munich University of Applied Sciences',
  ],
  popularAttractions: [
    'Marienplatz',
    'Neuschwanstein Castle',
    'English Garden',
  ],
  popularCuisines: [
    'Weisswurst',
    'Pretzel',
    'Apfelstrudel',
  ],
  currency: 'Euro (EUR)',
  timeZone: 'Giờ Trung Âu (CET)',
);
City hamburgCity = City(
  id: '12',
  cityName: 'Hamburg',
  countryName: 'Đức',
  language: 'Tiếng Đức',
  capital: 'Berlin',
  universities: [
    'University of Hamburg',
    'Hamburg University of Technology',
    'Hamburg University of Applied Sciences',
  ],
  popularAttractions: [
    'Port of Hamburg',
    'Reeperbahn',
    'Miniatur Wunderland',
  ],
  popularCuisines: [
    'Fischbrötchen',
    ' Labskaus',
    ' Franzbrötchen',
  ],
  currency: 'Euro (EUR)',
  timeZone: 'Giờ Trung Âu (CET)',
);

City newyorkCity = City(
  id: '1',
  cityName: 'New York City',
  countryName: 'Mỹ',
  language: 'Tiếng Anh',
  capital: 'Washington, D.C.',
  universities: [
    'Columbia University',
    'New York University',
    'Cornell University',
  ],
  popularAttractions: [
    'Times Square',
    'Statue of Liberty',
    'Central Park',
  ],
  popularCuisines: [
    'Pizza',
    'Hamburger',
    'Bagel',
  ],
  currency: 'Đô la Mỹ (USD)',
  timeZone: 'Eastern Standard Time (EST)',
);

City losAngelesCity = City(
  id: '2',
  cityName: 'Los Angeles',
  countryName: 'Mỹ',
  language: 'Tiếng Anh',
  capital: 'Washington, D.C.',
  universities: [
    'University of Southern California (USC)',
    'University of California, Los Angeles (UCLA)',
    'California State University, Los Angeles (CSULA)',
  ],
  popularAttractions: [
    'Hollywood Walk of Fame',
    'Universal Studios Hollywood',
    'Santa Monica Pier',
  ],
  popularCuisines: [
    'Mexican',
    'Korean',
    'Japanese',
  ],
  currency: 'Đô la Mỹ (USD)',
  timeZone: 'Pacific Standard Time (PST)',
);
City sanFranciscoCity = City(
  id: '3',
  cityName: 'San Francisco',
  countryName: 'Mỹ',
  language: 'Tiếng Anh',
  capital: 'Washington, D.C.',
  universities: [
    'University of California, San Francisco (UCSF)',
    'University of San Francisco (USF)',
    'San Francisco State University (SFSU)',
  ],
  popularAttractions: [
    'Golden Gate Bridge',
    'Alcatraz Island',
    'Fisherman\'s Wharf',
  ],
  popularCuisines: [
    'Seafood',
    'Chinese',
    'Mexican',
  ],
  currency: 'Đô la Mỹ (USD)',
  timeZone: 'Pacific Standard Time (PST)',
);

City londonCity = City(
  id: '4',
  cityName: 'London',
  countryName: 'Anh',
  language: 'Tiếng Anh',
  capital: 'London',
  universities: [
    'University College London (UCL)',
    'Imperial College London',
    'King\'s College London',
  ],
  popularAttractions: [
    'Big Ben',
    'Tower of London',
    'Buckingham Palace',
  ],
  popularCuisines: [
    'Fish and Chips',
    'English Breakfast',
    'Indian Curry',
  ],
  currency: 'Bảng Anh (GBP)',
  timeZone: 'Giờ Chuẩn Trung Âu (GMT)',
);

City manchesterCity = City(
  id: '5',
  cityName: 'Manchester',
  countryName: 'Anh',
  language: 'Tiếng Anh',
  capital: 'London',
  universities: [
    'University of Manchester',
    'Manchester Metropolitan University',
    'University of Salford',
  ],
  popularAttractions: [
    'Old Trafford',
    'Manchester Cathedral',
    'Manchester Art Gallery',
  ],
  popularCuisines: [
    'Manchester Tart',
    'Lancashire Hotpot',
    'Black Pudding',
  ],
  currency: 'Bảng Anh (GBP)',
  timeZone: 'Giờ Chuẩn Trung Âu (GMT)',
);

City edinburghCity = City(
  id: '6',
  cityName: 'Edinburgh',
  countryName: 'Anh',
  language: 'Tiếng Anh',
  capital: 'London',
  universities: [
    'University of Edinburgh',
    'Heriot-Watt University',
    'Edinburgh Napier University',
  ],
  popularAttractions: [
    'Edinburgh Castle',
    'Royal Mile',
    'Arthur\'s Seat',
  ],
  popularCuisines: [
    'Haggis',
    'Scotch Whisky',
    'Cranachan',
  ],
  currency: 'Bảng Anh (GBP)',
  timeZone: 'Giờ Chuẩn Trung Âu (GMT)',
);

City parisCity = City(
  id: '7',
  cityName: 'Paris',
  countryName: 'Pháp',
  language: 'Tiếng Pháp',
  capital: 'Paris',
  universities: [
    'Sorbonne University',
    'École Normale Supérieure',
    'Paris-Saclay University',
  ],
  popularAttractions: [
    'Eiffel Tower',
    'Louvre Museum',
    'Notre-Dame Cathedral',
  ],
  popularCuisines: [
    'Croissant',
    'Escargot',
    'Coq au Vin',
  ],
  currency: 'Euro (EUR)',
  timeZone: 'Giờ Trung Âu (CET)',
);
City marseilleCity = City(
  id: '8',
  cityName: 'Marseille',
  countryName: 'Pháp',
  language: 'Tiếng Pháp',
  capital: 'Paris',
  universities: [
    'Aix-Marseille University',
    'Paul Cézanne University',
    'Euromed Management School',
  ],
  popularAttractions: [
    'Vieux Port',
    'Notre-Dame de la Garde',
    'Château d\'If',
  ],
  popularCuisines: [
    'Bouillabaisse',
    'Navettes',
    'Calissons',
  ],
  currency: 'Euro (EUR)',
  timeZone: 'Giờ Trung Âu (CET)',
);
City lyonCity = City(
  id: '9',
  cityName: 'Lyon',
  countryName: 'Pháp',
  language: 'Tiếng Pháp',
  capital: 'Paris',
  universities: [
    'Claude Bernard University Lyon 1',
    'Lumière University Lyon 2',
    'Jean Moulin University Lyon 3',
  ],
  popularAttractions: [
    'Basilica of Notre-Dame de Fourvière',
    'Vieux Lyon',
    'Lyon Cathedral',
  ],
  popularCuisines: [
    'Coq au Vin',
    'Quenelles',
    'Tarte aux Pralines',
  ],
  currency: 'Euro (EUR)',
  timeZone: 'Giờ Trung Âu (CET)',
);


