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
    <td style = "text-align: left;">TTree</td>
    <td style = "text-align: left;"></td>
    <td style = "text-align: left;"></td>
  </tr>
  <tr>
    <td style = "text-align: left;">Flat </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A109956'>A109956</a></td>
    <td style = "text-align: left;">1, 1, 1, 3, 4, 1, 12, 18, 7, 1</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Reverse </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 1 1 1 4 3 1 7 18 12 ]'>nomatch</a></td>
    <td style = "text-align: left;">1, 1, 1, 1, 4, 3, 1, 7, 18, 12</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Inverse </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A109955'>A109955</a></td>
    <td style = "text-align: left;">1, -1, 1, 1, -4, 1, -1, 10, -7, 1</td>
  </tr>
  <tr>
    <td style = "text-align: left;">RevInv </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A193636'>A193636</a></td>
    <td style = "text-align: left;">1, 1, -1, 1, -4, 1, 1, -7, 10, -1</td>
  </tr>
  <tr>
    <td style = "text-align: left;">DiagTri </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 1 3 1 12 4 55 18 1 273 ]'>nomatch</a></td>
    <td style = "text-align: left;">1, 1, 3, 1, 12, 4, 55, 18, 1, 273</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PolyTri </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 1 1 3 2 1 12 8 3 1 ]'>nomatch</a></td>
    <td style = "text-align: left;">1, 1, 1, 3, 2, 1, 12, 8, 3, 1</td>
  </tr>
  <tr>
    <td style = "text-align: left;">sum </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A047098'>A047098</a></td>
    <td style = "text-align: left;">1, 2, 8, 38, 196, 1062, 5948, 34120, 199316, 1181126</td>
  </tr>
  <tr>
    <td style = "text-align: left;">EvenSum </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A047099'>A047099</a></td>
    <td style = "text-align: left;">1, 1, 4, 19, 98, 531, 2974, 17060, 99658, 590563</td>
  </tr>
  <tr>
    <td style = "text-align: left;">OddSum </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A047099'>A047099</a></td>
    <td style = "text-align: left;">0, 1, 4, 19, 98, 531, 2974, 17060, 99658, 590563</td>
  </tr>
  <tr>
    <td style = "text-align: left;">AltSum </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000007'>A000007</a></td>
    <td style = "text-align: left;">1, 0, 0, 0, 0, 0, 0, 0, 0, 0</td>
  </tr>
  <tr>
    <td style = "text-align: left;">DiagSum </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A109957'>A109957</a></td>
    <td style = "text-align: left;">1, 1, 4, 16, 74, 368, 1926, 10455, 58333, 332489</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Middle </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 1 4 18 42 245 510 3325 6578 45630 ]'>nomatch</a></td>
    <td style = "text-align: left;">1, 1, 4, 18, 42, 245, 510, 3325, 6578, 45630</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Central </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 4 42 510 6578 87696 1193808 16486756 230090850 3237004680 ]'>nomatch</a></td>
    <td style = "text-align: left;">1, 4, 42, 510, 6578, 87696, 1193808, 16486756, 230090850, 3237004680</td>
  </tr>
  <tr>
    <td style = "text-align: left;">LeftSide </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A001764'>A001764</a></td>
    <td style = "text-align: left;">1, 1, 3, 12, 55, 273, 1428, 7752, 43263, 246675</td>
  </tr>
  <tr>
    <td style = "text-align: left;">RightSide </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000012'>A000012</a></td>
    <td style = "text-align: left;">1, 1, 1, 1, 1, 1, 1, 1, 1, 1</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PosHalf </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 3 21 183 1773 18303 197157 2189799 24891741 288132303 ]'>nomatch</a></td>
    <td style = "text-align: left;">1, 3, 21, 183, 1773, 18303, 197157, 2189799, 24891741, 288132303</td>
  </tr>
  <tr>
    <td style = "text-align: left;">NegHalf </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 -1 5 -37 325 -3141 32261 -345605 3818501 -43197445 ]'>nomatch</a></td>
    <td style = "text-align: left;">1, -1, 5, -37, 325, -3141, 32261, -345605, 3818501, -43197445</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PolyVal2 </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A005809'>A005809</a></td>
    <td style = "text-align: left;">1, 3, 15, 84, 495, 3003, 18564, 116280, 735471, 4686825</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PolyVal3 </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 4 24 156 1048 7164 49488 344208 2405496 16868604 ]'>nomatch</a></td>
    <td style = "text-align: left;">1, 4, 24, 156, 1048, 7164, 49488, 344208, 2405496, 16868604</td>
  </tr>
  <tr>
    <td style = "text-align: left;">BinConv </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 2 12 88 700 5814 49588 430560 3786588 33622600 ]'>nomatch</a></td>
    <td style = "text-align: left;">1, 2, 12, 88, 700, 5814, 49588, 430560, 3786588, 33622600</td>
  </tr>
  <tr>
    <td style = "text-align: left;">IBinConv </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 0 -4 22 -84 238 -380 -828 10556 -56144 ]'>nomatch</a></td>
    <td style = "text-align: left;">1, 0, -4, 22, -84, 238, -380, -828, 10556, -56144</td>
  </tr>
  <tr>
    <td style = "text-align: left;">TransSqrs </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[0 1 8 55 362 2343 15058 96500 617930 3957847 ]'>nomatch</a></td>
    <td style = "text-align: left;">0, 1, 8, 55, 362, 2343, 15058, 96500, 617930, 3957847</td>
  </tr>
  <tr>
    <td style = "text-align: left;">TransNat0 </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[0 1 6 35 206 1227 7388 44900 275046 1696331 ]'>nomatch</a></td>
    <td style = "text-align: left;">0, 1, 6, 35, 206, 1227, 7388, 44900, 275046, 1696331</td>
  </tr>
  <tr>
    <td style = "text-align: left;">TransNat1 </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 3 14 73 402 2289 13336 79020 474362 2877457 ]'>nomatch</a></td>
    <td style = "text-align: left;">1, 3, 14, 73, 402, 2289, 13336, 79020, 474362, 2877457</td>
  </tr>
</table>
```
