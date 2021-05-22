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
    <td style = "text-align: left;">StirlingSet</td>
    <td style = "text-align: left;"></td>
    <td style = "text-align: left;"></td>
  </tr>
  <tr>
    <td style = "text-align: left;">Triangle</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A048993'>A048993</a></td>
    <td style = "text-align: left;">[1 0 1 0 1 1 0 1 3 1 0 1 7 6 1 0 1 15 25 10 1 0 1 31 90 65 15 1 0 1 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Reverse</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A106800'>A106800</a></td>
    <td style = "text-align: left;">[1 1 0 1 1 0 1 3 1 0 1 6 7 1 0 1 10 25 15 1 0 1 15 65 90 31 1 0 1 21 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Inverse</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A048994'>A048994</a></td>
    <td style = "text-align: left;">[1 0 1 0 -1 1 0 2 -3 1 0 -6 11 -6 1 0 24 -50 35 -10 1 0 -120 274 -225 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">RevInv</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A054654'>A054654</a></td>
    <td style = "text-align: left;">[1 1 0 1 -1 0 1 -3 2 0 1 -6 11 -6 0 1 -10 35 -50 24 0 1 -15 85 -225 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">DiagTri</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A136011'>A136011</a></td>
    <td style = "text-align: left;">[1 0 0 1 0 1 0 1 1 0 1 3 0 1 7 1 0 1 15 6 0 1 31 25 1 0 1 63 90 10 0 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PolyTri</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A189233'>A189233</a></td>
    <td style = "text-align: left;">[1 0 1 0 1 1 0 2 2 1 0 5 6 3 1 0 15 22 12 4 1 0 52 94 57 20 5 1 0 203 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Sum</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000110'>A000110</a></td>
    <td style = "text-align: left;">[1 1 2 5 15 52 203 877 4140 21147 115975 678570 4213597 27644437 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">EvenSum</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A024430'>A024430</a></td>
    <td style = "text-align: left;">[1 0 1 3 8 25 97 434 2095 10707 58194 338195 2097933 13796952 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">OddSum</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A024429'>A024429</a></td>
    <td style = "text-align: left;">[0 1 1 2 7 27 106 443 2045 10440 57781 340375 2115664 13847485 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">AltSum</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000587'>A000587</a></td>
    <td style = "text-align: left;">[1 -1 0 1 1 -2 -9 -9 50 267 413 -2180 -17731 -50533 110176 1966797 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">DiagSum</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A171367'>A171367</a></td>
    <td style = "text-align: left;">1 0 1 1 2 4 9 22 58 164 495 1587 5379 19195 71872 281571 1151338 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Middle</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A343279'>A343279</a></td>
    <td style = "text-align: left;">[1 0 1 1 7 15 90 301 1701 7770 42525 246730 1323652 9321312 49329280 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Central</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A007820'>A007820</a></td>
    <td style = "text-align: left;">[1 1 7 90 1701 42525 1323652 49329280 2141764053 106175395755 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">LeftSide</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000007'>A000007</a></td>
    <td style = "text-align: left;">[1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">RightSide</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000012'>A000012</a></td>
    <td style = "text-align: left;">[1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PosHalf</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A004211'>A004211</a></td>
    <td style = "text-align: left;">[1 1 3 11 49 257 1539 10299 75905 609441 5284451 49134923 487026929 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">NegHalf</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A009235'>A009235</a></td>
    <td style = "text-align: left;">[1 1 -1 -1 9 -23 -25 583 -3087 4401 79087 -902097 4783801 2361049 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PolyVal2</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A001861'>A001861</a></td>
    <td style = "text-align: left;">[1 2 6 22 94 454 2430 14214 89918 610182 4412798 33827974 273646526 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PolyVal3</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A027710'>A027710</a></td>
    <td style = "text-align: left;">[1 3 12 57 309 1866 12351 88563 681870 5597643 48718569 447428856 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PolyValn</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A242817'>A242817</a></td>
    <td style = "text-align: left;">[1 1 6 57 756 12880 268098 6593839 187104200 6016681467 216229931110 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">BinConv</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A122455'>A122455</a></td>
    <td style = "text-align: left;">[1 1 3 13 71 456 3337 27203 243203 2357356 24554426 272908736 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">IBinConv</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A343841'>A343841</a></td>
    <td style = "text-align: left;">[1 1 -1 -5 15 56 -455 -237 16947 -64220 -529494 6833608 -8606015 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">TransSqrs</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A033452'>A033452</a></td>
    <td style = "text-align: left;">[0 1 5 22 99 471 2386 12867 73681 446620 2856457 19217243 135610448 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">TransNat0</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A005493'>A005493</a></td>
    <td style = "text-align: left;">[0 1 3 10 37 151 674 3263 17007 94828 562595 3535027 23430840 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">TransNat1</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000110'>A000110</a></td>
    <td style = "text-align: left;">[1 2 5 15 52 203 877 4140 21147 115975 678570 4213597 27644437 ]</td>
  </tr>
</table>
```
