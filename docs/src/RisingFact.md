```@raw html
<style> table, td, th {border-collapse: collapse; font-family: sans-serif; color: blue;}
td, th {border-bottom: 0; padding: 4px}
tr:nth-child(odd) {background: #eee;}
tr:nth-child(even) {background: #fff;}
tr.header {background: orange !important; color: white; font-weight: bold;}
tr.subheader {background: lightgray !important; color: black;}
tr.headerLastRow {border-bottom: 2px solid black;}
th.rowNumber, td.rowNumber {text-align: right;} </style><body>
<table>
  <tr class = "header headerLastRow">
    <th style = "text-align: left;">Trait</th>
    <th style = "text-align: left;">ANumber</th>
    <th style = "text-align: left;">Sequence</th>
  </tr>
  <tr>
    <td style = "text-align: left;">RisingFact</td>
    <td style = "text-align: left;"></td>
    <td style = "text-align: left;"></td>
  </tr>
  <tr>
    <td style = "text-align: left;">Triangle</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A124320'>A124320</a></td>
    <td style = "text-align: left;">[1 1 1 1 2 6 1 3 12 60 1 4 20 120 840 1 5 30 210 1680 15120 1 6 42 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Reverse</td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 1 1 6 2 1 60 12 3 1 840 120 20 4 1 15120 1680 210 30 5 1 332640 ]'>nomatch</a></td>
    <td style = "text-align: left;">[1 1 1 6 2 1 60 12 3 1 840 120 20 4 1 15120 1680 210 30 5 1 332640 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">InvRev</td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 -1 1 -4 -2 1 -36 -6 -3 1 -496 -56 -8 -4 1 -9040 -800 -80 -10 -5 1 ]'>nomatch</a></td>
    <td style = "text-align: left;">[1 -1 1 -4 -2 1 -36 -6 -3 1 -496 -56 -8 -4 1 -9040 -800 -80 -10 -5 1 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">DiagTri</td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 1 1 1 1 2 1 3 6 1 4 12 1 5 20 60 1 6 30 120 1 7 42 210 840 1 8 56 ]'>nomatch</a></td>
    <td style = "text-align: left;">[1 1 1 1 1 2 1 3 6 1 4 12 1 5 20 60 1 6 30 120 1 7 42 210 840 1 8 56 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PolyTri</td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 1 1 1 2 1 1 9 3 1 1 76 29 4 1 1 985 535 61 5 1 1 17046 14489 1738 ]'>nomatch</a></td>
    <td style = "text-align: left;">[1 1 1 1 2 1 1 9 3 1 1 76 29 4 1 1 985 535 61 5 1 1 17046 14489 1738 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Sum</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A123680'>A123680</a></td>
    <td style = "text-align: left;">[1 2 9 76 985 17046 366289 9374968 278095761 9375293170 353906211241 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">EvenSum</td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 1 7 13 861 1711 335707 670377 260702713 521092531 336205086471 ]'>nomatch</a></td>
    <td style = "text-align: left;">[1 1 7 13 861 1711 335707 670377 260702713 521092531 336205086471 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">OddSum</td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[0 1 2 63 124 15335 30582 8704591 17393048 8854200639 17701124770 ]'>nomatch</a></td>
    <td style = "text-align: left;">[0 1 2 63 124 15335 30582 8704591 17393048 8854200639 17701124770 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">AltSum</td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 0 5 -50 737 -13624 305125 -8034214 243309665 -8333108108 ]'>nomatch</a></td>
    <td style = "text-align: left;">[1 0 5 -50 737 -13624 305125 -8034214 243309665 -8333108108 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">DiagSum</td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 1 2 3 10 17 86 157 1100 2081 18730 36101 397112 773665 10057646 ]'>nomatch</a></td>
    <td style = "text-align: left;">[1 1 2 3 10 17 86 157 1100 2081 18730 36101 397112 773665 10057646 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Middle</td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 1 2 3 20 30 336 504 7920 11880 240240 360360 8910720 13366080 ]'>nomatch</a></td>
    <td style = "text-align: left;">[1 1 2 3 20 30 336 504 7920 11880 240240 360360 8910720 13366080 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Central</td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 2 20 336 7920 240240 8910720 390700800 19769460480 1133836704000 ]'>nomatch</a></td>
    <td style = "text-align: left;">[1 2 20 336 7920 240240 8910720 390700800 19769460480 1133836704000 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">LeftSide</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000012'>A000012</a></td>
    <td style = "text-align: left;">[1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">RightSide</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000407'>A000407</a></td>
    <td style = "text-align: left;">[1 1 6 60 840 15120 332640 8648640 259459200 8821612800 335221286400 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PosHalf</td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 3 14 104 1208 19672 408832 10251712 299911808 10009405376 ]'>nomatch</a></td>
    <td style = "text-align: left;">[1 3 14 104 1208 19672 408832 10251712 299911808 10009405376 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">NegHalf</td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 -1 6 40 664 12408 282112 7506112 229153920 7898352832 303445214464 ]'>nomatch</a></td>
    <td style = "text-align: left;">[1 -1 6 40 664 12408 282112 7506112 229153920 7898352832 303445214464 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PolyVal2</td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 3 29 535 14489 512531 22307893 1151462831 68717854385 ]'>nomatch</a></td>
    <td style = "text-align: left;">[1 3 29 535 14489 512531 22307893 1151462831 68717854385 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PolyVal3</td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 4 61 1738 71473 3816196 250097293 19413459094 1741065412993 ]'>nomatch</a></td>
    <td style = "text-align: left;">[1 4 61 1738 71473 3816196 250097293 19413459094 1741065412993 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PolyValn</td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 2 29 1738 223057 48327026 15758791309 7201740515026 ]'>nomatch</a></td>
    <td style = "text-align: left;">[1 2 29 1738 223057 48327026 15758791309 7201740515026 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">BinConv</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A278070'>A278070</a></td>
    <td style = "text-align: left;">[1 2 11 106 1457 25946 566827 14665106 438351041 14862109042 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">IBinConv</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A278069'>A278069</a></td>
    <td style = "text-align: left;">[1 0 3 32 465 8544 190435 4996032 150869313 5155334720 196677847971 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">TransSqrs</td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[0 1 26 591 14604 406895 12782622 449204847 17499943736 749432500119 ]'>nomatch</a></td>
    <td style = "text-align: left;">[0 1 26 591 14604 406895 12782622 449204847 17499943736 749432500119 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">TransNat0</td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[0 1 14 207 3764 83015 2160234 64831151 2204676872 83786685039 ]'>nomatch</a></td>
    <td style = "text-align: left;">[0 1 14 207 3764 83015 2160234 64831151 2204676872 83786685039 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">TransNat1</td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 3 23 283 4749 100061 2526523 74206119 2482772633 93161978209 ]'>nomatch</a></td>
    <td style = "text-align: left;">[1 3 23 283 4749 100061 2526523 74206119 2482772633 93161978209 ]</td>
  </tr>
</table>
```
