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
    <td style = "text-align: left;">Laguerre</td>
    <td style = "text-align: left;"></td>
    <td style = "text-align: left;"></td>
  </tr>
  <tr>
    <td style = "text-align: left;">Triangle</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A021009'>A021009</a></td>
    <td style = "text-align: left;">[1 1 1 2 4 1 6 18 9 1 24 96 72 16 1 120 600 600 200 25 1 720 4320 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Reverse</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A021010'>A021010</a></td>
    <td style = "text-align: left;">[1 1 1 1 4 2 1 9 18 6 1 16 72 96 24 1 25 200 600 600 120 1 36 450 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Inverse</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A021009'>A021009</a></td>
    <td style = "text-align: left;">[1 -1 1 2 -4 1 -6 18 -9 1 24 -96 72 -16 1 -120 600 -600 200 -25 1 720 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">RevInv</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A021010'>A021010</a></td>
    <td style = "text-align: left;">[1 1 -1 1 -4 2 1 -9 18 -6 1 -16 72 -96 24 1 -25 200 -600 600 -120 1 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">DiagTri</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A084950'>A084950</a></td>
    <td style = "text-align: left;">[1 1 2 1 6 4 24 18 1 120 96 9 720 600 72 1 5040 4320 600 16 40320 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PolyTri</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A343847'>A343847</a></td>
    <td style = "text-align: left;">[1 1 1 2 2 1 6 7 3 1 24 34 14 4 1 120 209 86 23 5 1 720 1546 648 168 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Sum</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A002720'>A002720</a></td>
    <td style = "text-align: left;">[1 2 7 34 209 1546 13327 130922 1441729 17572114 234662231 3405357682 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">EvenSum</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A331325'>A331325</a></td>
    <td style = "text-align: left;">[1 1 3 15 97 745 6571 65359 723969 8842257 118091251 1712261551 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">OddSum</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A331326'>A331326</a></td>
    <td style = "text-align: left;">[0 1 4 19 112 801 6756 65563 717760 8729857 116570980 1693096131 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">AltSum</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A009940'>A009940</a></td>
    <td style = "text-align: left;">[1 0 -1 -4 -15 -56 -185 -204 6209 112400 1520271 19165420 237686449 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">DiagSum</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A001040'>A001040</a></td>
    <td style = "text-align: left;">[1 1 3 10 43 225 1393 9976 81201 740785 7489051 83120346 1004933203 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Middle</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A343580'>A343580</a></td>
    <td style = "text-align: left;">[1 1 4 18 72 600 2400 29400 117600 1905120 7620480 153679680 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Central</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A295383'>A295383</a></td>
    <td style = "text-align: left;">[1 4 72 2400 117600 7620480 614718720 59364264960 6678479808000 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">LeftSide</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000142'>A000142</a></td>
    <td style = "text-align: left;">[1 1 2 6 24 120 720 5040 40320 362880 3628800 39916800 479001600 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">RightSide</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000012'>A000012</a></td>
    <td style = "text-align: left;">[1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PosHalf</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A025167'>A025167</a></td>
    <td style = "text-align: left;">[1 3 17 139 1473 19091 291793 5129307 101817089 2250495523 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">NegHalf</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A025166'>A025166</a></td>
    <td style = "text-align: left;">[1 -1 1 7 -127 1711 -23231 334391 -5144063 84149983 -1446872959 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PolyVal2</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A087912'>A087912</a></td>
    <td style = "text-align: left;">[1 3 14 86 648 5752 58576 671568 8546432 119401856 1815177984 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PolyVal3</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A277382'>A277382</a></td>
    <td style = "text-align: left;">[1 4 23 168 1473 14988 173007 2228544 31636449 490102164 8219695239 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PolyCent</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A277373'>A277373</a></td>
    <td style = "text-align: left;">[1 2 14 168 2840 61870 1649232 51988748 1891712384 78031713690 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">BinConv</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A216831'>A216831</a></td>
    <td style = "text-align: left;">[1 2 11 88 905 11246 162607 2668436 48830273 983353690 21570885011 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">IBinConv</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A343840'>A343840</a></td>
    <td style = "text-align: left;">[1 0 -5 22 9 -1244 14335 -79470 -586943 25131304 -434574909 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">TransSqrs</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A105219'>A105219</a></td>
    <td style = "text-align: left;">[0 1 8 63 544 5225 55656 653023 8379008 116780049 1757211400 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">TransNat0</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A103194'>A103194</a></td>
    <td style = "text-align: left;">[0 1 6 39 292 2505 24306 263431 3154824 41368977 589410910 9064804551 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">TransNat1</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000262'>A000262</a></td>
    <td style = "text-align: left;">[1 3 13 73 501 4051 37633 394353 4596553 58941091 824073141 ]</td>
  </tr>
</table>
```
