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
    <td style = "text-align: left;">DArcais</td>
    <td style = "text-align: left;"></td>
    <td style = "text-align: left;"></td>
  </tr>
  <tr>
    <td style = "text-align: left;">Triangle</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A078521'>A078521</a></td>
    <td style = "text-align: left;">[1 0 1 0 3 1 0 8 9 1 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Reverse</td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 1 0 1 3 0 1 9 8 0 ]'>nomatch</a></td>
    <td style = "text-align: left;">[1 1 0 1 3 0 1 9 8 0 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Inverse</td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 0 1 0 -3 1 0 19 -9 1 ]'>nomatch</a></td>
    <td style = "text-align: left;">[1 0 1 0 -3 1 0 19 -9 1 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">RevInv</td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 1 0 1 -3 0 1 -9 19 0 ]'>nomatch</a></td>
    <td style = "text-align: left;">[1 1 0 1 -3 0 1 -9 19 0 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">DiagTri</td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 0 0 1 0 3 0 8 1 0 ]'>nomatch</a></td>
    <td style = "text-align: left;">[1 0 0 1 0 3 0 8 1 0 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PolyTri</td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 0 1 0 1 1 0 4 2 1 ]'>nomatch</a></td>
    <td style = "text-align: left;">[1 0 1 0 1 1 0 4 2 1 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Sum</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A053529'>A053529</a></td>
    <td style = "text-align: left;">[1 1 4 18 120 840 7920 75600 887040 10886400 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">EvenSum</td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 0 1 9 60 480 3960 40320 443520 5443200 ]'>nomatch</a></td>
    <td style = "text-align: left;">[1 0 1 9 60 480 3960 40320 443520 5443200 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">OddSum</td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[0 1 3 9 60 360 3960 35280 443520 5443200 ]'>nomatch</a></td>
    <td style = "text-align: left;">[0 1 3 9 60 360 3960 35280 443520 5443200 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">AltSum</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A293140'>A293140</a></td>
    <td style = "text-align: left;">[1 -1 -2 0 0 120 0 5040 0 0 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">DiagSum</td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 0 1 3 9 51 204 1908 9370 109017 ]'>nomatch</a></td>
    <td style = "text-align: left;">[1 0 1 3 9 51 204 1908 9370 109017 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Middle</td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 0 3 8 59 450 2475 28294 147889 2341332 ]'>nomatch</a></td>
    <td style = "text-align: left;">[1 0 3 8 59 450 2475 28294 147889 2341332 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Central</td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 3 59 2475 147889 11744775 1163220575 137914387611 19052174174033 3005469776175867 ]'>nomatch</a></td>
    <td style = "text-align: left;">[1 3 59 2475 147889 11744775 1163220575 137914387611 19052174174033 3005469776175867 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">LeftSide</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000007'>A000007</a></td>
    <td style = "text-align: left;">[1 0 0 0 0 0 0 0 0 0 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">RightSide</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000012'>A000012</a></td>
    <td style = "text-align: left;">[1 1 1 1 1 1 1 1 1 1 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PosHalf</td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 1 7 51 609 6825 122535 1890315 41928705 884551185 ]'>nomatch</a></td>
    <td style = "text-align: left;">[1 1 7 51 609 6825 122535 1890315 41928705 884551185 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">NegHalf</td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 1 -5 15 -135 -495 -9405 -237825 363825 -42652575 ]'>nomatch</a></td>
    <td style = "text-align: left;">[1 1 -5 15 -135 -495 -9405 -237825 363825 -42652575 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PolyVal2</td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 2 10 60 480 4320 46800 554400 7459200 108864000 ]'>nomatch</a></td>
    <td style = "text-align: left;">[1 2 10 60 480 4320 46800 554400 7459200 108864000 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PolyVal3</td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 3 18 132 1224 12960 159120 2162160 32659200 536699520 ]'>nomatch</a></td>
    <td style = "text-align: left;">[1 3 18 132 1224 12960 159120 2162160 32659200 536699520 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">BinConv</td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 1 7 52 595 7521 117796 2033004 39834159 852065323 ]'>nomatch</a></td>
    <td style = "text-align: left;">[1 1 7 52 595 7521 117796 2033004 39834159 852065323 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">IBinConv</td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 1 -5 -2 115 -1779 976 79668 -2574417 32044003 ]'>nomatch</a></td>
    <td style = "text-align: left;">[1 1 -5 -2 115 -1779 976 79668 -2574417 32044003 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">TransSqrs</td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[0 1 7 53 456 4384 47492 566516 7457384 106329384 ]'>nomatch</a></td>
    <td style = "text-align: left;">[0 1 7 53 456 4384 47492 566516 7457384 106329384 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">TransNat0</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A057623'>A057623</a></td>
    <td style = "text-align: left;">[0 1 5 29 218 1814 18144 196356 2427312 32304240 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">TransNat1</td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 2 9 47 338 2654 26064 271956 3314352 43190640 ]'>nomatch</a></td>
    <td style = "text-align: left;">[1 2 9 47 338 2654 26064 271956 3314352 43190640 ]</td>
  </tr>
</table>
```
