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
    <td style = "text-align: left;">Fubini</td>
    <td style = "text-align: left;"></td>
    <td style = "text-align: left;"></td>
  </tr>
  <tr>
    <td style = "text-align: left;">Triangle</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A131689'>A131689</a></td>
    <td style = "text-align: left;">[1 0 1 0 1 2 0 1 6 6 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Reverse</td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 1 0 2 1 0 6 6 1 0 ]'>nomatch</a></td>
    <td style = "text-align: left;">[1 1 0 2 1 0 6 6 1 0 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">DiagTri</td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 0 0 1 0 1 0 1 2 0 ]'>nomatch</a></td>
    <td style = "text-align: left;">[1 0 0 1 0 1 0 1 2 0 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PolyTri</td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 0 1 0 1 1 0 3 2 1 ]'>nomatch</a></td>
    <td style = "text-align: left;">[1 0 1 0 1 1 0 3 2 1 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Sum</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000670'>A000670</a></td>
    <td style = "text-align: left;">[1 1 3 13 75 541 4683 47293 545835 7087261 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">EvenSum</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A052841'>A052841</a></td>
    <td style = "text-align: left;">[1 0 2 6 38 270 2342 23646 272918 3543630 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">OddSum</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A089677'>A089677</a></td>
    <td style = "text-align: left;">[0 1 1 7 37 271 2341 23647 272917 3543631 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">AltSum</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000012'>A000012</a></td>
    <td style = "text-align: left;">[1 -1 1 -1 1 -1 1 -1 1 -1 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">DiagSum</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A105795'>A105795</a></td>
    <td style = "text-align: left;">[1 0 1 1 3 7 21 67 237 907 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Middle</td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 0 1 1 14 30 540 1806 40824 186480 ]'>nomatch</a></td>
    <td style = "text-align: left;">[1 0 1 1 14 30 540 1806 40824 186480 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Central</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A210029'>A210029</a></td>
    <td style = "text-align: left;">[1 1 14 540 40824 5103000 953029440 248619571200 86355926616960 38528927611574400 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">LeftSide</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000007'>A000007</a></td>
    <td style = "text-align: left;">[1 0 0 0 0 0 0 0 0 0 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">RightSide</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000142'>A000142</a></td>
    <td style = "text-align: left;">[1 1 2 6 24 120 720 5040 40320 362880 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PosHalf</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A122704'>A122704</a></td>
    <td style = "text-align: left;">[1 1 4 22 160 1456 15904 202672 2951680 48361216 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">NegHalf</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A009006'>A009006</a></td>
    <td style = "text-align: left;">[1 1 0 -2 0 16 0 -272 0 7936 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PolyVal2</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A004123'>A004123</a></td>
    <td style = "text-align: left;">[1 2 10 74 730 9002 133210 2299754 45375130 1007179562 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PolyVal3</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A032033'>A032033</a></td>
    <td style = "text-align: left;">[1 3 21 219 3045 52923 1103781 26857659 746870565 23365498683 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">BinConv</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000312'>A000312</a></td>
    <td style = "text-align: left;">[1 1 4 27 256 3125 46656 823543 16777216 387420489 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">IBinConv</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A344053'>A344053</a></td>
    <td style = "text-align: left;">[1 1 0 -9 -40 125 3444 18571 -241872 -5796711 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">TransSqrs</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A083411'>A083411</a></td>
    <td style = "text-align: left;">[0 1 9 79 765 8311 100989 1362439 20246445 328972471 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">TransNat0</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A069321'>A069321</a></td>
    <td style = "text-align: left;">[0 1 5 31 233 2071 21305 249271 3270713 47580151 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">TransNat1</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A005649'>A005649</a></td>
    <td style = "text-align: left;">[1 2 8 44 308 2612 25988 296564 3816548 54667412 ]</td>
  </tr>
</table>
```
