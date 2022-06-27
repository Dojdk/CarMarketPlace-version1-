import 'package:flutter/material.dart';

import 'package:turboaz/models/cars.dart';
import './models/cartypes.dart';

const dataTypes = [
  Cartypes(
      id: 'c1', type: 'Super Cars', photourl: 'assets/images/supercar.png'),
  Cartypes(
      id: 'c2',
      type: 'Sedan',
      color: Colors.blue,
      photourl: 'assets/images/sedan.png'),
  Cartypes(
      id: 'c3',
      type: 'Hatchback',
      color: Colors.grey,
      photourl: 'assets/images/hatchback.png'),
  Cartypes(
      id: 'c4',
      type: 'Coupe',
      color: Colors.green,
      photourl: 'assets/images/coupe.png'),
  Cartypes(
      id: 'c5',
      type: 'Cabriolete',
      color: Colors.yellow,
      photourl: 'assets/images/cabriolet.png'),
  Cartypes(
      id: 'c6',
      type: 'Hybrid',
      color: Colors.purple,
      photourl: 'assets/images/fuel.png'),
  Cartypes(
      id: 'c7',
      type: 'Muscle Cars',
      color: Colors.indigo,
      photourl: 'assets/images/muscle.png'),
  Cartypes(
      id: 'c8',
      type: 'Pick Up',
      color: Colors.brown,
      photourl: 'assets/images/pickup.png'),
];

const dataCars = [
  Cars(
    id: 'm1',
    name: 'Ford',
    model: 'Fusion',
    typeid: ['c2'],
    price: 13000,
    mileage: 37300,
    year: 2018,
    url: 'http://azcar.az/ru/wp-content/uploads/2021/04/ford_fusion.jpg',
    power: 249,
    engine: 2.0,
    transmission: Transmission.automatic,
  ),
  Cars(
    id: 'm2',
    name: 'Ford',
    model: 'Mustang',
    typeid: ['c2', 'c4', 'c7'],
    price: 63000,
    mileage: 53000,
    year: 2016,
    url:
        'https://turbo.azstatic.com/uploads/full/2022%2F06%2F08%2F12%2F55%2F31%2Ff8bb6df7-da86-4d6a-9cbb-9ba8822ca7d7%2F90551_NJOFZI2yzj5WytRhmVFbDQ.jpg',
    power: 426,
    engine: 5.0,
    transmission: Transmission.automatic,
  ),
  Cars(
    id: 'm3',
    name: 'Mitsubishi',
    model: 'L 200',
    typeid: ['c8'],
    price: 40900,
    mileage: 3000,
    year: 2021,
    url:
        'https://turbo.azstatic.com/uploads/f460x343/2022%2F06%2F24%2F13%2F15%2F23%2F7ef52482-6e65-4224-b498-d1e4b7e77358%2F39310_2E8Ux3y7oHdT1U3fIhhydw.jpg',
    power: 181,
    engine: 2.4,
    transmission: Transmission.automatic,
  ),
  Cars(
    id: 'm4',
    name: 'Mercedes',
    model: 'SL 63 AMG',
    typeid: ['c4', 'c5', 'c1'],
    price: 150000,
    mileage: 15000,
    year: 2018,
    url:
        'https://www.a777aa77.ru/mercedes-amg-2/2022-mercedes-amg-sl-63-4matic-r232.jpg',
    power: 585,
    engine: 5.5,
    transmission: Transmission.automatic,
  ),
  Cars(
    id: 'm5',
    name: 'Chevrolet',
    model: 'Cruze',
    typeid: ['c3'],
    price: 11000,
    mileage: 33300,
    year: 2018,
    url:
        'https://turbo.azstatic.com/uploads/full/2022%2F06%2F11%2F00%2F07%2F26%2F478027d0-b3cd-4cd8-aad4-902c6ca77053%2F84900_qoWtrUM4pBdoIHYka_H8sw.jpg',
    power: 141,
    engine: 1.8,
    transmission: Transmission.automatic,
  ),
  Cars(
    id: 'm6',
    name: 'Toyota',
    model: 'Prius',
    typeid: ['c3', 'c6'],
    price: 23000,
    mileage: 92300,
    year: 2018,
    url:
        'https://turbo.azstatic.com/uploads/full/2022%2F06%2F10%2F00%2F31%2F06%2F6166b5c7-c298-4ecf-9006-33e3761ead1e%2F85122_AmYdr_99BdNe_jNL63yvdA.jpg',
    power: 98,
    engine: 1.8,
    transmission: Transmission.automatic,
  ),
  Cars(
    id: 'm7',
    name: 'Porsche',
    model: 'Panamera',
    typeid: ['c1', 'c3'],
    price: 115000,
    mileage: 0,
    year: 2018,
    url:
        'https://turbo.azstatic.com/uploads/full/2022%2F06%2F20%2F09%2F55%2F22%2Fa0a64591-4993-41cb-a51d-04f697d775af%2F43027_bdKPJUC-vH66jrfeC3CyvA.jpg',
    power: 330,
    engine: 2.9,
    transmission: Transmission.automatic,
  ),
  Cars(
    id: 'm8',
    name: 'BMW',
    model: 'I8',
    typeid: ['c1', 'c6', 'c4'],
    price: 92000,
    mileage: 65000,
    year: 2015,
    url:
        'https://turbo.azstatic.com/uploads/full/2020%2F05%2F28%2F17%2F04%2F39%2Fb02a1011-e4b7-4251-8e7e-c061741ec7a1%2F84623_LXBm-TFYlXinKV9HKGF7Kg.jpg',
    power: 374,
    engine: 1.5,
    transmission: Transmission.automatic,
  ),
  Cars(
    id: 'm9',
    name: 'Chevrolet',
    model: 'Camaro',
    typeid: ['c4', 'c5', 'c7'],
    price: 60000,
    mileage: 10300,
    year: 1967,
    url:
        'https://cdn1.mecum.com/auctions/ln1118/ln1118-334932/images/1-1536244344376@2x.jpg',
    power: 350,
    engine: 3.8,
    transmission: Transmission.mechanic,
  ),
  Cars(
    id: 'm10',
    name: 'BMW',
    model: 'M5',
    typeid: [
      'c2',
    ],
    price: 48300,
    mileage: 95500,
    year: 2013,
    url:
        'https://turbo.azstatic.com/uploads/full/2022%2F06%2F14%2F03%2F04%2F46%2F3f4cf749-4a87-4420-974d-fcc95fd23f0b%2F84890_0cusi0T3KY3jMzvAtZxbKQ.jpg',
    power: 575,
    engine: 4.4,
    transmission: Transmission.automatic,
  ),
];

List<Cars> liked=[];
