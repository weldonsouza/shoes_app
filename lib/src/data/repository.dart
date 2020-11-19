import 'package:shoes_app/src/model/shoes.dart';

class ShoesRepository {
  List<Shoes> getShoes() => [
//------------------------------------- NIKE ---------------------------------
        Shoes(
            id: 1,
            name: 'Nike Air Force 1 \'07 LV8',
            description:
                'From sanded leather that\'s smoother than backboard glass to bold, NBA-inspired detailing, '
                'the Nike Air Force 1 \'07 LV8 is everything you know best: crisp overlays, bold accents and the perfect '
                'amount of flash to make you shine. Its padded, low-cut collar adds heritage comfort while metal accents '
                'deliver an exclamation.',
            imageUrl: [
              [
                'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/a48f681f-ad15-499a-83b8-278640e48365/air-force-1-07-lv8-mens-shoe-LxqPHT.jpg',
                'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5,q_80/142354ec-da92-4e11-9a20-5eb02e85bf17/air-force-1-07-lv8-mens-shoe-LxqPHT.jpg',
                'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5,q_80/55c1fd0c-cb39-4cb6-8b57-82cdd699b7a8/air-force-1-07-lv8-mens-shoe-LxqPHT.jpg',
              ],
              [
                'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/4b400c0f-6b68-451f-9a3d-540c406dd3d1/air-force-1-07-lv8-mens-shoe-LxqPHT.jpg',
                'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5,q_80/36fc463d-1ed7-4d23-ac12-94a93877d7ce/air-force-1-07-lv8-mens-shoe-LxqPHT.jpg',
                'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5,q_80/014d55de-4a89-4cb8-b1c7-36154dbdd52c/air-force-1-07-lv8-mens-shoe-LxqPHT.jpg',
              ]
            ],
            gender: 'Men\'s Shoe',
            brand: 'Nike',
            color: [
              ['White/Pure', 'Platinum/Cool', 'Grey/White'],
              ['Black/Wolf', 'Grey/Dark', 'Grey/Black']
            ],
            price: 110.00),

//------------------------------------- NIKE ---------------------------------
        Shoes(
            id: 2,
            name: 'Nike Air Max Verona',
            description:
                'Designed with every woman in mind, the Air Max Verona features leather and textile on the upper, a plush collar, '
                'and unique stitching. The Nike Air cushioning adds a modern twist and is designed specifically for women, '
                'adding comfort and style to your journey.',
            imageUrl: [
              [
                'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/adbd3b01-831d-4374-b069-2ee424f04954/air-max-verona-womens-shoe-JF64LJ.jpg',
                'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5,q_80/187c56a4-c56e-45fe-b0a5-6e755c6d71cd/air-max-verona-womens-shoe-JF64LJ.jpg',
                'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5,q_80/32f261f4-1636-4ccb-9282-a7e11984ea3c/air-max-verona-womens-shoe-JF64LJ.jpg',
                'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5,q_80/d69c0373-19ce-4b6d-81e1-4a778f299284/air-max-verona-womens-shoe-JF64LJ.jpg',
              ],
              [
                'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/56dafe33-97e5-45ee-8abe-d20640e4569e/air-max-verona-womens-shoe-JF64LJ.jpg',
                'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5,q_80/b86f1519-faeb-48b0-b4ef-abf0a00c0173/air-max-verona-womens-shoe-JF64LJ.jpg',
                'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5,q_80/983d69b4-b848-46e2-ae41-41388af4fd9c/air-max-verona-womens-shoe-JF64LJ.jpg',
                'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5,q_80/b3e43d35-32f8-4a9d-abb5-570c9463791c/air-max-verona-womens-shoe-JF64LJ.jpg',
              ]
            ],
            gender: 'Women\'s Shoe',
            brand: 'Nike',
            color: [
              ['Sail/Royal', 'Pulse/Atomic', 'Pink/Black'],
              ['Summit White/Fossil/Light', 'Arctic Pink/Light Orewood Brown']
            ],
            price: 130.00),

//------------------------------------- NIKE ---------------------------------
        Shoes(
            id: 3,
            name: 'Nike Air Max 90',
            description:
                'The Nike Air Max 90 stays true to its OG running roots with its iconic Waffle outsole, stitched overlays and '
                'classic, color-accented TPU plates. Retro colors celebrate the first generation while Max Air cushioning '
                'adds comfort to your journey.',
            imageUrl: [
              [
                'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/4e729b81-b7de-4025-95a8-3e47e5fe93cc/air-max-90-womens-shoe-g5nqKN.jpg',
                'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5,q_80/06aabf94-4090-49a8-a93c-ddd6f56c3417/air-max-90-womens-shoe-g5nqKN.jpg',
                'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5,q_80/49ac3d79-a28c-427a-b811-b06dacb8ab67/air-max-90-womens-shoe-g5nqKN.jpg',
              ],
              [
                'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/f79e2746-40b6-41d3-97c9-a02c3ba46882/air-max-90-womens-shoe-g5nqKN.jpg',
                'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5,q_80/5d1009c5-e517-4ae0-a0db-32d1a6146638/air-max-90-womens-shoe-g5nqKN.jpg',
                'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5,q_80/6749b98f-02da-44a0-be3c-d2d6fe8f1f1c/air-max-90-womens-shoe-g5nqKN.jpg',
              ]
            ],
            gender: 'Women\'s Shoe',
            brand: 'Nike',
            color: [
              ['White/Pure', 'Platinum/Solar', 'Flare/Black'],
              [
                'Summit White/Metallic Red',
                'Bronze/Light Orewood',
                'Brown/Metallic Summit White'
              ]
            ],
            price: 90.00),

//------------------------------------- NIKE ---------------------------------
        Shoes(
            id: 4,
            name: 'Tênis Nike Air Zoom Tempo Next',
            description:
                'Nike Air Zoom Tempo Next% combines durability with a design that helps you achieve your best. '
                'The result is a shoe built as a running model, but made for your daily training routine.',
            imageUrl: [
              [
                'https://images.lojanike.com.br/500x500/produto/271169_2462670_20200903150720.jpg',
                'https://images.lojanike.com.br/500x500/produto/271169_2462721_20200903150748.jpg',
                'https://images.lojanike.com.br/500x500/produto/271169_2462738_20200903150756.jpg',
                'https://images.lojanike.com.br/500x500/produto/271169_2462704_20200903150739.jpg',
              ],
              [
                'https://images.lojanike.com.br/500x500/produto/248926_2538001_20200921164732.jpg',
                'https://images.lojanike.com.br/500x500/produto/248926_2538069_20200921164743.jpg',
                'https://images.lojanike.com.br/500x500/produto/248926_2538052_20200921164740.jpg',
              ]
            ],
            gender: 'Women\'s Shoe',
            brand: 'Nike',
            color: [
              ['pink'],
              ['Grey']
            ],
            price: 205.00),
      ];
}
