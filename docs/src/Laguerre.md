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
    <td style = "text-align: left;"></td>
    <td style = "text-align: left;"></td>
    <td style = "text-align: left;"></td>
  </tr>
  <tr>
    <td style = "text-align: left;">Trait</td>
    <td style = "text-align: left;">ANumber</td>
    <td style = "text-align: left;">Sequence</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Triangle</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A021009'>A021009</a></td>
    <td style = "text-align: left;">[1 1 1 2 4 1 6 18 9 1 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Reverse</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A021010'>A021010</a></td>
    <td style = "text-align: left;">[1 1 1 1 4 2 1 9 18 6 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Inverse</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A021009'>A021009</a></td>
    <td style = "text-align: left;">[1 -1 1 2 -4 1 -6 18 -9 1 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">RevInv</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A021010'>A021010</a></td>
    <td style = "text-align: left;">[1 1 -1 1 -4 2 1 -9 18 -6 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">DiagTri</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A084950'>A084950</a></td>
    <td style = "text-align: left;">[1 1 2 1 6 4 24 18 1 120 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PolyTri</td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 1 1 2 2 1 6 7 3 1 ]'>nomatch</a></td>
    <td style = "text-align: left;">[1 1 1 2 2 1 6 7 3 1 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Sum</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A002720'>A002720</a></td>
    <td style = "text-align: left;">[1 2 7 34 209 1546 13327 130922 1441729 17572114 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">EvenSum</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A331325'>A331325</a></td>
    <td style = "text-align: left;">[1 1 3 15 97 745 6571 65359 723969 8842257 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">OddSum</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A331326'>A331326</a></td>
    <td style = "text-align: left;">[0 1 4 19 112 801 6756 65563 717760 8729857 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">AltSum</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A009940'>A009940</a></td>
    <td style = "text-align: left;">[1 0 -1 -4 -15 -56 -185 -204 6209 112400 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">DiagSum</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A001040'>A001040</a></td>
    <td style = "text-align: left;">[1 1 3 10 43 225 1393 9976 81201 740785 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Middle</td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 1 4 18 72 600 2400 29400 117600 1905120 ]'>nomatch</a></td>
    <td style = "text-align: left;">[1 1 4 18 72 600 2400 29400 117600 1905120 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Central</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A295383'>A295383</a></td>
    <td style = "text-align: left;">[1 4 72 2400 117600 7620480 614718720 59364264960 6678479808000 857813628672000 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">LeftSide</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000142'>A000142</a></td>
    <td style = "text-align: left;">[1 1 2 6 24 120 720 5040 40320 362880 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">RightSide</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000012'>A000012</a></td>
    <td style = "text-align: left;">[1 1 1 1 1 1 1 1 1 1 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PosHalf</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A025167'>A025167</a></td>
    <td style = "text-align: left;">[1 3 17 139 1473 19091 291793 5129307 101817089 2250495523 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">NegHalf</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A025166'>A025166</a></td>
    <td style = "text-align: left;">[1 -1 1 7 -127 1711 -23231 334391 -5144063 84149983 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PolyVal2</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A087912'>A087912</a></td>
    <td style = "text-align: left;">[1 3 14 86 648 5752 58576 671568 8546432 119401856 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PolyVal3</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A277382'>A277382</a></td>
    <td style = "text-align: left;">[1 4 23 168 1473 14988 173007 2228544 31636449 490102164 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">BinConv</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A216831'>A216831</a></td>
    <td style = "text-align: left;">[1 2 11 88 905 11246 162607 2668436 48830273 983353690 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">IBinConv</td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 0 -5 22 9 -1244 14335 -79470 -586943 25131304 ]'>nomatch</a></td>
    <td style = "text-align: left;">[1 0 -5 22 9 -1244 14335 -79470 -586943 25131304 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">TransSqrs</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A105219'>A105219</a></td>
    <td style = "text-align: left;">[0 1 8 63 544 5225 55656 653023 8379008 116780049 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">TransNat0</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A103194'>A103194</a></td>
    <td style = "text-align: left;">[0 1 6 39 292 2505 24306 263431 3154824 41368977 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">TransNat1</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000262'>A000262</a></td>
    <td style = "text-align: left;">[1 3 13 73 501 4051 37633 394353 4596553 58941091 ]</td>
  </tr>
</table>
```
