import '../classes/questionClass.dart';

class LocalServer {
  List<Question> questions = [
    Question(
      'Tom has \$45 and wants to buy 6 books of the same price. How much does each book cost?',
      ['a) \$6', 'b) \$7.50', 'c) \$8', 'd) \$9', 'e) \$10'],
      'b) \$7.50',
    ),
    Question(
      'Lisa received a 15% discount on a \$60 dress. How much did she pay after the discount?',
      ['a) \$46', 'b) \$48', 'c) \$50', 'd) \$52', 'e) \$54'],
      'a) \$51', //
    ),
    Question(
      'Choose the smallest value from the options:',
      ['a) 0.001', 'b) 0.01', 'c) 0.1', 'd) 1', 'e) 10'],
      'a) 0.001',
    ),
    Question(
      'Determine the highest value from the following:',
      ['a) 3.5', 'b) 3.05', 'c) 3.15', 'd) 3.25', 'e) 3.35'],
      'a) 3.5',
    ),
    Question(
      'If 25 is 20% of a certain number, what is that number?',
      ['a) 100', 'b) 125', 'c) 150', 'd) 175', 'e) 200'],
      'b) 125',
    ),
    Question(
      '60 is 75% of what number?',
      ['a) 70', 'b) 80', 'c) 90', 'd) 100', 'e) 110'],
      'b) 80',
    ),
    Question(
      'If 120 students attended an event on Friday, and 15% more students attended on Saturday, how many students attended in total?',
      ['a) 135', 'b) 145', 'c) 155', 'd) 165', 'e) 175'],
      'c) 138', //
    ),
    Question(
      'A store sells shoes for \$30 each. If you buy 2 pairs of shoes, you get a 10% discount. How much will you pay for two pairs?',
      ['a) \$54', 'b) \$57', 'c) \$60', 'd) \$63', 'e) \$66'],
      'a) \$54',
    ),
    Question(
      'If Mark can swim 40 laps in 4 hours, and Sarah can swim the same distance in 3 hours and 30 minutes, how long before Mark will Sarah finish a 30-lap swim?',
      [
        'a) 15 minutes',
        'b) 30 minutes',
        'c) 45 minutes',
        'd) 1 hour',
        'e) 1 hour and 15 minutes'
      ],
      'b) 30 minutes',
    ),
    Question(
      'The average of six numbers is 25. The first five numbers are 30, 22, 28, 35, and 26. What is the missing number?',
      ['a) 23', 'b) 24', 'c) 25', 'd) 27', 'e) 29'],
      'a) 23',
    ),
    // //////////////////////
    // ///
    Question(
      'Amy plans to buy 5 notebooks, and each notebook costs \$6.75. How much will she have to pay at the checkout?',
      ['a) \$31.75', 'b) \$33.50', 'c) \$34.25', 'd) \$35.50', 'e) \$36.75'],
      'c) \$34.25', //
    ),
    Question(
      'Sarah wants to purchase 2 boxes of chocolates. Each box costs \$4.25, but there is a special offer – buy 1, get the second at half price. How much will Sarah pay in total?',
      ['a) \$6.38', 'b) \$7.12', 'c) \$7.88', 'd) \$8.50', 'e) \$9.25'],
      'a) \$6.38',
    ),
    Question(
      'Identify the smallest value from the following options:',
      ['a) 0.005', 'b) 0.02', 'c) 0.1', 'd) 0.15', 'e) 0.25'],
      'a) 0.005',
    ),
    Question(
      'Determine the highest value among the following:',
      ['a) 2.5', 'b) 2.05', 'c) 2.15', 'd) 2.25', 'e) 2.35'],
      'a) 2.5',
    ),
    Question(
      'If 15 is 25% of a certain number, what is that number?',
      ['a) 30', 'b) 40', 'c) 50', 'd) 60', 'e) 70'],
      'b) 60',
    ),
    Question(
      '72 is 90% of what number?',
      ['a) 75', 'b) 80', 'c) 85', 'd) 90', 'e) 95'],
      'd) 80',
    ),
    Question(
      'If 80 students attended an event on Monday, and 20% more students attended on Tuesday, how many students attended in total?',
      ['a) 96', 'b) 104', 'c) 112', 'd) 120', 'e) 128'],
      'c) 112', //
    ),
    Question(
      'A store sells hats for \$10 each. If you buy 3 hats, you get a 15% discount. How much will you pay for three hats?',
      ['a) \$25.50', 'b) \$26.50', 'c) \$27.00', 'd) \$28.50', 'e) \$29.00'],
      'd) \$28.50',
    ),
    Question(
      'If Rachel can run 20 kilometers in 2 hours, and Emma can run the same distance in 1 hour and 40 minutes, how long before Rachel will Emma finish a 15-kilometer race?',
      [
        'a) 10 minutes',
        'b) 15 minutes',
        'c) 20 minutes',
        'd) 25 minutes',
        'e) 30 minutes'
      ],
      'a) 10 minutes',
    ),
    Question(
      'The average of five numbers is 18. The first four numbers are 20, 22, 16, and 19. What is the missing number?',
      ['a) 13', 'b) 15', 'c) 17', 'd) 21', 'e) 23'],
      'a) 13',
    ),

    /////////////////////////////
    Question(
      '1 cookbook is sold for \$9.50. Marie intends to buy 3 cookbooks. How much does she have to pay when she goes to the checkout at the store?',
      ['\$22', '\$23.50', '\$26.50', '\$28', '\$28.50'],
      '\$28.50',
    ),
    Question(
      'Martin wants to buy a chocolate ice cream. The price of an ice ball is \$1.50, but there is a promotion and for 3 balls purchased, the fourth is for free. How much will Martin have to pay if he buys four scoops of ice cream for himself and four for his girlfriend?',
      ['\$8', '\$8.50', '\$9', '\$10', '\$11.50'],
      '\$10', //
    ),
    Question(
      'Which of the following values is the smallest?',
      ['0.04', '0.09', '1.12', '1.004', '0.05'],
      '0.04',
    ),
    Question(
      'Which of the following values is the highest?',
      ['1.008', '0.009', '1.08', '1.004', '1.8'],
      '1.8',
    ),
    Question(
      '20 is 20% of what number?',
      ['50', '100', '200', '250', '300'],
      '100',
    ),
    Question(
      '48 is 80% of what number?',
      ['50', '55', '60', '65', '70'],
      '60',
    ),
    Question(
      'On Monday, 50 children bought a ticket for the ghost train attraction. If 30% more children bought a ticket to this attraction on the following Tuesday, how many tickets were sold during those two days?',
      ['30', '65', '85', '115', '165'],
      '65', //
    ),
    Question(
      'One kilo of Persian rice is sold for 5 cents per kilo. For 4 kilos purchased, the seller offers a 20% discount. If Josephine bought 12 kilos of rice, how much did she pay in total?',
      ['\$48', '\$52', '\$58', '\$60', '\$64'],
      '\$58', //
    ),
    Question(
      'It takes Max three hours to run 30 kilometers. Georges, on the other hand, travels the same distance in 2 hours and 20 minutes. If both are to complete a 15-kilometer race, how long before Max will Georges arrive at the finish line?',
      ['10 minutes', '20 minutes', '30 minutes', '40 minutes', '50 minutes'],
      '20 minutes',
    ),
    Question(
      'A group of four numbers has an average of 14. The first three numbers are 11, 12, and 17. What\'s the missing number?',
      ['11', '13', '15', '16', '18'],
      '14', //
    ),
    Question(
      'Peter has a box containing 65 red and blue balls. Counting them, he realizes that there is a ratio of 3 red balls to 10 blue balls. How many blue balls does he have in total?',
      ['15', '20', '30', '45', '50'],
      '50',
    ),
    Question(
      'Jean has 5 shirts, 3 ties, 6 trousers, and 2 coats in his wardrobe. How many different sets can he compose using a garment in each category each time?',
      ['60', '80', '180', '200', '220'],
      '180',
    ),
    Question(
      'What would be the next number in the following series? 1 … 10 … 2 … 9 … 3 … ?',
      ['5', '8', '10', '11', '12'],
      '8',
    ),
    Question(
      'What would be the next number in the following series? 1 … 3 … 7 … 15 … 31 … ?',
      ['63', '75', '83', '92', '94'],
      '63',
    ),
  ];

  List<Question> q2 = [
    Question(
      'Alice bought a shirt for \$25. If there\'s a 20% discount, how much will she pay?',
      ['\$18', '\$20', '\$22', '\$24', '\$26'],
      '\$20',
    ),
    Question(
      'Tom wants to buy books. Each book costs \$12, but there\'s a "buy 2, get 1 free" offer. How much will he pay for 5 books?',
      ['\$36', '\$48', '\$60', '\$72', '\$84'],
      '\$48',
    ),
    Question(
      'Which of the following values is the smallest?',
      ['0.015', '0.025', '0.035', '0.045', '0.055'],
      '0.015',
    ),
    Question(
      'Which of the following values is the highest?',
      ['1.75', '1.65', '1.85', '1.95', '2.05'],
      '2.05',
    ),
    Question(
      '40 is 25% of what number?',
      ['120', '140', '160', '180', '200'],
      '160',
    ),
    Question(
      '75 is 15% of what number?',
      ['300', '400', '500', '600', '700'],
      '500',
    ),
    Question(
      'On Friday, 60 people attended a concert. If 40% more people attended on Saturday, how many people attended the concert over the two days?',
      ['96', '120', '144', '168', '192'],
      '144',
    ),
    Question(
      'A laptop is priced at \$900. If there\'s a 10% discount for buying two, how much will Alex pay for three laptops?',
      ['\$2,160', '\$2,250', '\$2,340', '\$2,430', '\$2,520'],
      '\$2,430',
    ),
    // Question(
    //   'It takes Emily 2 hours to paint a fence. James can paint the same fence in 1 hour and 30 minutes. If both start a 5-hour painting job, how long before Emily will James finish?',
    //   [
    //     '30 minutes',
    //     '45 minutes',
    //     '1 hour',
    //     '1 hour 15 minutes',
    //     '1 hour 30 minutes'
    //   ],
    //   '1 hour',
    // ),
    Question(
      'A group of six numbers has an average of 40. The first five numbers are 35, 38, 40, 42, and 45. What\'s the missing number?',
      ['40', '52', '55', '58', '60'],
      '40',
    ),
    Question(
      'Sarah has a box containing 100 red and blue balls. The ratio of red balls to blue balls is 3:7. How many blue balls does she have in total?',
      ['30', '40', '50', '60', '70'],
      '70',
    ),
    Question(
      'Mark has 3 hats, 4 ties, 5 shirts, and 2 jackets in his wardrobe. How many different sets can he compose using a garment in each category each time?',
      ['100', '120', '200', '250', '300'],
      '120',
    ),
    Question(
      'A laptop is priced at \$850. If Sarah plans to buy 2 laptops, how much will she have to pay at the checkout?',
      ['\$1,650', '\$1,700', '\$1,750', '\$1,800', '\$1,850'],
      '\$1,700',
    ),
    Question(
      'Lisa wants to buy headphones. The original price is \$30, but there\'s a 20% discount. If she buys three, the fourth one is free. How much will she pay for five headphones?',
      ['\$90', '\$96', '\$100', '\$105', '\$110'],
      '\$96',
    ),
    Question(
      'Which of the following values is the smallest?',
      ['2.01', '1.99', '2.1', '1.995', '2.05'],
      '1.99',
    ),
    Question(
      'Which of the following values is the highest?',
      ['1.15', '1.09', '1.25', '1.18', '1.3'],
      '1.3',
    ),
    Question(
      '30 is 15% of what number?',
      ['150', '175', '200', '225', '250'],
      '200',
    ),
    Question(
      '60 is 40% of what number?',
      ['120', '140', '150', '160', '180'],
      '150',
    ),
    Question(
      'On Wednesday, 80 students attended a workshop. If 25% more students joined on Thursday, how many students attended the workshop over the two days?',
      ['140', '160', '180', '200', '220'],
      '180',
    ),

    ////////////////
    ///
    Question(
      'Mary bought a camera for \$350. If there\'s a 15% discount, how much will she pay?',
      ['\$297.50', '\$307.50', '\$317.50', '\$327.50', '\$337.50'],
      '\$297.50',
    ),
    Question(
      'John wants to buy pens. Each pen costs \$2.50, but there\'s a "buy 3, get 1 free" offer. How much will he pay for 8 pens?',
      ['\$15', '\$20', '\$22.50', '\$25', '\$30'],
      '\$15',
    ),
    Question(
      'Which of the following values is the smallest?',
      ['0.008', '0.018', '0.028', '0.038', '0.048'],
      '0.008',
    ),
    Question(
      'Which of the following values is the highest?',
      ['2.3', '2.05', '2.45', '2.15', '2.35'],
      '2.45',
    ),
    Question(
      '50 is 20% of what number?',
      ['150', '200', '250', '300', '350'],
      '250',
    ),
    Question(
      '90 is 30% of what number?',
      ['270', '300', '330', '360', '390'],
      '300',
    ),
    Question(
      'On Monday, 70 people attended a seminar. If 50% more people attended on Tuesday, how many people attended the seminar over the two days?',
      ['140', '175', '200', '230', '260'],
      '175',
    ),
    Question(
      'A smartphone is priced at \$500. If there\'s a 12% discount for buying two, how much will Emma pay for three smartphones?',
      ['\$1,260', '\$1,320', '\$1,380', '\$1,440', '\$1,500'],
      '\$1,380',
    ),
    // Question(
    //   'It takes Chris 1.5 hours to assemble a bookshelf. Sarah can assemble the same bookshelf in 1 hour. If both start a 4-hour assembly job, how long before Chris will Sarah finish?',
    //   [
    //     '30 minutes',
    //     '45 minutes',
    //     '1 hour',
    //     '1 hour 15 minutes',
    //     '1 hour 30 minutes'
    //   ],
    //   '1 hour',
    // ),
    Question(
      'A group of seven numbers has an average of 50. The first six numbers are 45, 48, 50, 52, 55, and 58. What\'s the missing number?',
      ['60', '42', '65', '68', '70'],
      '42',
    ),
    Question(
      'Alex has a box containing 120 red and green balls. The ratio of red balls to green balls is 3:7. How many green balls does he have in total?',
      ['40', '72', '84', '90', '100'],
      '84',
    ),
    Question(
      'Rachel has 4 dresses, 3 hats, 6 shoes, and 2 jackets in her wardrobe. How many different sets can she compose using a garment in each category each time?',
      ['120', '144', '180', '200', '220'],
      '144',
    ),
    Question(
      'What would be the next number in the following series? 5 ... 10 ... 7 ... 14 ... 9 ... ?',
      ['16', '18', '20', '22', '24'],
      '18',
    ),
    Question(
      'What would be the next group of letters in the following series? EG ... FH ... GI ... HJ ... ?',
      ['a) IK', 'b) HI', 'c) JL', 'd) IM'],
      'd) IK',
    ),
    Question(
      'Identify the pattern in the following series: KP ... LO ... MN ... OP ... ?',
      ['a) PQ', 'b) NO', 'c) QR', 'd) RS'],
      'a) QR',
    ),
    Question(
      'What would be the next group of letters in the following series? VX ... WY ... XZ ... YB ... ?',
      ['a) BC', 'b) ZA', 'c) AC', 'd) BD'],
      'b) ZA',
    ),
    Question(
      'Identify the pattern in the following series: DF ... EG ... FH ... GI ... ?',
      ['a) IH', 'b) HJ', 'c) IJ', 'd) HI'],
      'c) IJ',
    ),
    Question(
      'What comes next in the series? RT ... SU ... TV ... UW ... ?',
      ['a) WX', 'b) VV', 'c) WV', 'd) VX'],
      'a) WX',
    ),
    Question(
      'Determine the next group of letters in the series: OB ... NC ... PD ... QE ... ?',
      ['a) EF', 'b) QF', 'c) RF', 'd) RE'],
      'a) EF',
    ),
    Question(
      'Find the missing letters in the series: AC ... DF ... GI ... JK ... ?',
      ['a) MN', 'b) LM', 'c) LN', 'd) MO'],
      'a) MN',
    ),
    Question(
      'What follows in the sequence? LY ... MX ... NZ ... OA ... ?',
      ['a) PA', 'b) OB', 'c) PC', 'd) NA'],
      'c) PC',
    ),
    Question(
      'Determine the next group of letters in the series: IG ... JH ... KI ... LJ ... ?',
      ['a) MK', 'b) KL', 'c) MJ', 'd) ML'],
      'b) KL',
    ),
    Question(
      'Identify the pattern in the following series: BA ... DC ... FE ... HG ... ?',
      ['a) IH', 'b) GF', 'c) HG', 'd) IH'],
      'a) IH',
    ),

    Question(
      'What comes next in the sequence? VX ... WZ ... YB ... XC ... ?',
      ['a) BD', 'b) AC', 'c) ZD', 'd) AE'],
      'a) BD',
    ),
    Question(
      'Determine the missing letters in the series: OP ... NQ ... MR ... LQ ... ?',
      ['a) SQ', 'b) LS', 'c) LR', 'd) SR'],
      'a) SQ',
    ),
    Question(
      'What would be the next group of letters in the following series? FH ... GI ... HJ ... IK ... ?',
      ['a) KL', 'b) LM', 'c) KJ', 'd) JL'],
      'a) KL',
    ),
    Question(
      'Identify the pattern in the following series: BD ... CE ... DF ... EG ... ?',
      ['a) EH', 'b) FG', 'c) GH', 'd) HI'],
      'a) EH',
    ),
    Question(
      'What comes next in the series? PQ ... RS ... UV ... XY ... ?',
      ['a) AB', 'b) AC', 'c) AD', 'd) AE'],
      'a) AB',
    ),
    Question(
      'Determine the next group of letters in the series: WX ... YZ ... AB ... CD ... ?',
      ['a) DE', 'b) BC', 'c) EF', 'd) FG'],
      'a) DE',
    ),
    Question(
      'Find the missing letters in the series: KL ... MN ... OP ... QR ... ?',
      ['a) RS', 'b) ST', 'c) TU', 'd) UV'],
      'a) RS',
    ),
    Question(
      'What follows in the sequence? GI ... HF ... FE ... ED ... ?',
      ['a) DC', 'b) CB', 'c) BA', 'd) AD'],
      'a) DC',
    ),
    Question(
      'Determine the next group of letters in the series: LM ... NO ... PQ ... RS ... ?',
      ['a) TU', 'b) UV', 'c) VW', 'd) WX'],
      'a) TU',
    ),
    Question(
      'Identify the pattern in the following series: ZX ... WY ... VX ... UW ... ?',
      ['a) TS', 'b) ST', 'c) SR', 'd) RS'],
      'a) TS',
    ),
  ];
}
