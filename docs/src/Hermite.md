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
    <td style = "text-align: left;">Hermite</td>
    <td style = "text-align: left;"></td>
    <td style = "text-align: left;"></td>
  </tr>
  <tr>
    <td style = "text-align: left;">Triangle</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A099174'>A099174</a></td>
    <td style = "text-align: left;">[1 0 1 1 0 1 0 3 0 1 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Reverse</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A073278'>A073278</a></td>
    <td style = "text-align: left;">[1 1 0 1 0 1 1 0 3 0 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Inverse</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A066325'>A066325</a></td>
    <td style = "text-align: left;">[1 0 1 -1 0 1 0 -3 0 1 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">RevInv</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A073278'>A073278</a></td>
    <td style = "text-align: left;">[1 1 0 1 0 -1 1 0 -3 0 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">DiagTri</td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 0 1 1 0 0 3 3 1 0 ]'>nomatch</a></td>
    <td style = "text-align: left;">[1 0 1 1 0 0 3 3 1 0 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PolyTri</td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 0 1 1 1 1 0 2 2 1 ]'>nomatch</a></td>
    <td style = "text-align: left;">[1 0 1 1 1 1 0 2 2 1 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Sum</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000085'>A000085</a></td>
    <td style = "text-align: left;">[1 1 2 4 10 26 76 232 764 2620 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">EvenSum</td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 0 2 0 10 0 76 0 764 0 ]'>nomatch</a></td>
    <td style = "text-align: left;">[1 0 2 0 10 0 76 0 764 0 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">OddSum</td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[0 1 0 4 0 26 0 232 0 2620 ]'>nomatch</a></td>
    <td style = "text-align: left;">[0 1 0 4 0 26 0 232 0 2620 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">AltSum</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000085'>A000085</a></td>
    <td style = "text-align: left;">[1 -1 2 -4 10 -26 76 -232 764 -2620 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">DiagSum</td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 0 2 0 7 0 37 0 266 0 ]'>nomatch</a></td>
    <td style = "text-align: left;">[1 0 2 0 7 0 37 0 266 0 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Middle</td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 0 0 3 6 0 0 105 210 0 ]'>nomatch</a></td>
    <td style = "text-align: left;">[1 0 0 3 6 0 0 105 210 0 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Central</td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 0 6 0 210 0 13860 0 1351350 0 ]'>nomatch</a></td>
    <td style = "text-align: left;">[1 0 6 0 210 0 13860 0 1351350 0 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">LeftSide</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A123023'>A123023</a></td>
    <td style = "text-align: left;">[1 0 1 0 3 0 15 0 105 0 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">RightSide</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000012'>A000012</a></td>
    <td style = "text-align: left;">[1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PosHalf</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A115329'>A115329</a></td>
    <td style = "text-align: left;">[1 1 5 13 73 281 1741 8485 57233 328753 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">NegHalf</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A115329'>A115329</a></td>
    <td style = "text-align: left;">[1 1 5 13 73 281 1741 8485 57233 328753 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PolyVal2</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A005425'>A005425</a></td>
    <td style = "text-align: left;">[1 2 5 14 43 142 499 1850 7193 29186 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PolyVal3</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A202834'>A202834</a></td>
    <td style = "text-align: left;">[1 3 10 36 138 558 2364 10440 47868 227124 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">BinConv</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A344501'>A344501</a></td>
    <td style = "text-align: left;">[1 1 2 10 40 176 916 4852 27350 163270 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">IBinConv</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A344501'>A344501</a></td>
    <td style = "text-align: left;">[1 1 2 10 40 176 916 4852 27350 163270 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">TransSqrs</td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[0 1 4 12 40 130 456 1624 6112 23580 ]'>nomatch</a></td>
    <td style = "text-align: left;">[0 1 4 12 40 130 456 1624 6112 23580 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">TransNat0</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A013989'>A013989</a></td>
    <td style = "text-align: left;">[0 1 2 6 16 50 156 532 1856 6876 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">TransNat1</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000085'>A000085</a></td>
    <td style = "text-align: left;">[1 2 4 10 26 76 232 764 2620 9496 ]</td>
  </tr>
</table>
```
