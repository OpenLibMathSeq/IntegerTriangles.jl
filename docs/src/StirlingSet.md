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
    <td style = "text-align: left;">Flat </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A048993'>A048993</a></td>
    <td style = "text-align: left;">1, 0, 1, 0, 1, 1, 0, 1, 3, 1</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Reverse </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A106800'>A106800</a></td>
    <td style = "text-align: left;">1, 1, 0, 1, 1, 0, 1, 3, 1, 0</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Inverse </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A048994'>A048994</a></td>
    <td style = "text-align: left;">1, 0, 1, 0, -1, 1, 0, 2, -3, 1</td>
  </tr>
  <tr>
    <td style = "text-align: left;">RevInv </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A054654'>A054654</a></td>
    <td style = "text-align: left;">1, 1, 0, 1, -1, 0, 1, -3, 2, 0</td>
  </tr>
  <tr>
    <td style = "text-align: left;">DiagTri </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 0 0 1 0 1 0 1 1 0 ]'>nomatch</a></td>
    <td style = "text-align: left;">1, 0, 0, 1, 0, 1, 0, 1, 1, 0</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PolyTri </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A189233'>A189233</a></td>
    <td style = "text-align: left;">1, 0, 1, 0, 1, 1, 0, 2, 2, 1</td>
  </tr>
  <tr>
    <td style = "text-align: left;">sum </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000110'>A000110</a></td>
    <td style = "text-align: left;">1, 1, 2, 5, 15, 52, 203, 877, 4140, 21147</td>
  </tr>
  <tr>
    <td style = "text-align: left;">EvenSum </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A024430'>A024430</a></td>
    <td style = "text-align: left;">1, 0, 1, 3, 8, 25, 97, 434, 2095, 10707</td>
  </tr>
  <tr>
    <td style = "text-align: left;">OddSum </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A024429'>A024429</a></td>
    <td style = "text-align: left;">0, 1, 1, 2, 7, 27, 106, 443, 2045, 10440</td>
  </tr>
  <tr>
    <td style = "text-align: left;">AltSum </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000587'>A000587</a></td>
    <td style = "text-align: left;">1, -1, 0, 1, 1, -2, -9, -9, 50, 267</td>
  </tr>
  <tr>
    <td style = "text-align: left;">DiagSum </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A171367'>A171367</a></td>
    <td style = "text-align: left;">1, 0, 1, 1, 2, 4, 9, 22, 58, 164</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Middle </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 0 1 1 7 15 90 301 1701 7770 ]'>nomatch</a></td>
    <td style = "text-align: left;">1, 0, 1, 1, 7, 15, 90, 301, 1701, 7770</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Central </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A007820'>A007820</a></td>
    <td style = "text-align: left;">1, 1, 7, 90, 1701, 42525, 1323652, 49329280, 2141764053, 106175395755</td>
  </tr>
  <tr>
    <td style = "text-align: left;">LeftSide </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000007'>A000007</a></td>
    <td style = "text-align: left;">1, 0, 0, 0, 0, 0, 0, 0, 0, 0</td>
  </tr>
  <tr>
    <td style = "text-align: left;">RightSide </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000012'>A000012</a></td>
    <td style = "text-align: left;">1, 1, 1, 1, 1, 1, 1, 1, 1, 1</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PosHalf </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A004211'>A004211</a></td>
    <td style = "text-align: left;">1, 1, 3, 11, 49, 257, 1539, 10299, 75905, 609441</td>
  </tr>
  <tr>
    <td style = "text-align: left;">NegHalf </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A009235'>A009235</a></td>
    <td style = "text-align: left;">1, 1, -1, -1, 9, -23, -25, 583, -3087, 4401</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PolyVal2 </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A001861'>A001861</a></td>
    <td style = "text-align: left;">1, 2, 6, 22, 94, 454, 2430, 14214, 89918, 610182</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PolyVal3 </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A027710'>A027710</a></td>
    <td style = "text-align: left;">1, 3, 12, 57, 309, 1866, 12351, 88563, 681870, 5597643</td>
  </tr>
  <tr>
    <td style = "text-align: left;">BinTrans </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A122455'>A122455</a></td>
    <td style = "text-align: left;">1, 1, 3, 13, 71, 456, 3337, 27203, 243203, 2357356</td>
  </tr>
  <tr>
    <td style = "text-align: left;">IBinTrans </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 1 -1 -5 15 56 -455 -237 16947 -64220 ]'>nomatch</a></td>
    <td style = "text-align: left;">1, 1, -1, -5, 15, 56, -455, -237, 16947, -64220</td>
  </tr>
  <tr>
    <td style = "text-align: left;">TransSqrs </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A033452'>A033452</a></td>
    <td style = "text-align: left;">0, 1, 5, 22, 99, 471, 2386, 12867, 73681, 446620</td>
  </tr>
  <tr>
    <td style = "text-align: left;">TransNat0 </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A005493'>A005493</a></td>
    <td style = "text-align: left;">0, 1, 3, 10, 37, 151, 674, 3263, 17007, 94828</td>
  </tr>
  <tr>
    <td style = "text-align: left;">TransNat1 </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000110'>A000110</a></td>
    <td style = "text-align: left;">1, 2, 5, 15, 52, 203, 877, 4140, 21147, 115975</td>
  </tr>
</table>
```
