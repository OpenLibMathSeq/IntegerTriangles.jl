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
    <td style = "text-align: left;">SchroederB</td>
    <td style = "text-align: left;"></td>
    <td style = "text-align: left;"></td>
  </tr>
  <tr>
    <td style = "text-align: left;">Flat </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A122538'>A122538</a></td>
    <td style = "text-align: left;">1, 0, 1, 0, 2, 1, 0, 6, 4, 1</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Reverse </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=1,1,0,1,2,0,1,4,6,0,'>nomatch</a></td>
    <td style = "text-align: left;">1, 1, 0, 1, 2, 0, 1, 4, 6, 0</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Inverse </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A122542'>A122542</a></td>
    <td style = "text-align: left;">1, 0, 1, 0, -2, 1, 0, 2, -4, 1</td>
  </tr>
  <tr>
    <td style = "text-align: left;">RevInv </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A266213'>A266213</a></td>
    <td style = "text-align: left;">1, 1, 0, 1, -2, 0, 1, -4, 2, 0</td>
  </tr>
  <tr>
    <td style = "text-align: left;">DiagTri </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=1,0,0,1,0,2,0,6,1,0,'>nomatch</a></td>
    <td style = "text-align: left;">1, 0, 0, 1, 0, 2, 0, 6, 1, 0</td>
  </tr>
  <tr>
    <td style = "text-align: left;">ConvTri </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A010054'>A010054</a></td>
    <td style = "text-align: left;">1, 1, 0, 1, 0, 0, 1, 0, 0, 0</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PolyTri </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=1,0,1,0,1,1,0,3,2,1,'>nomatch</a></td>
    <td style = "text-align: left;">1, 0, 1, 0, 1, 1, 0, 3, 2, 1</td>
  </tr>
  <tr>
    <td style = "text-align: left;">sum </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A001003'>A001003</a></td>
    <td style = "text-align: left;">1, 1, 3, 11, 45, 197, 903, 4279, 20793, 103049</td>
  </tr>
  <tr>
    <td style = "text-align: left;">EvenSum </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=1,0,1,4,17,76,353,1688,8257,41128,'>nomatch</a></td>
    <td style = "text-align: left;">1, 0, 1, 4, 17, 76, 353, 1688, 8257, 41128</td>
  </tr>
  <tr>
    <td style = "text-align: left;">OddSum </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A010683'>A010683</a></td>
    <td style = "text-align: left;">0, 1, 2, 7, 28, 121, 550, 2591, 12536, 61921</td>
  </tr>
  <tr>
    <td style = "text-align: left;">AltSum </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A001003'>A001003</a></td>
    <td style = "text-align: left;">1, -1, -1, -3, -11, -45, -197, -903, -4279, -20793</td>
  </tr>
  <tr>
    <td style = "text-align: left;">DiagSum </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=1,0,1,2,7,26,107,468,2141,10124,'>nomatch</a></td>
    <td style = "text-align: left;">1, 0, 1, 2, 7, 26, 107, 468, 2141, 10124</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Middle </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=1,0,2,6,16,68,146,714,1408,7432,'>nomatch</a></td>
    <td style = "text-align: left;">1, 0, 2, 6, 16, 68, 146, 714, 1408, 7432</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Central </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A103885'>A103885</a></td>
    <td style = "text-align: left;">1, 2, 16, 146, 1408, 14002, 142000, 1459810, 15158272, 158611106</td>
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
    <td style = "text-align: left;"><a href='https://oeis.org/A330802'>A330802</a></td>
    <td style = "text-align: left;">1, 1, 5, 33, 253, 2121, 18853, 174609, 1667021, 16290969</td>
  </tr>
  <tr>
    <td style = "text-align: left;">NegHalf </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A330803'>A330803</a></td>
    <td style = "text-align: left;">1, 1, -3, 17, -123, 1001, -8739, 79969, -756939, 7349657</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PolyVal2 </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A109980'>A109980</a></td>
    <td style = "text-align: left;">1, 2, 8, 36, 172, 852, 4324, 22332, 116876, 618084</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PolyVal3 </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=1,3,15,81,453,2583,14907,86733,507561,2982987,'>nomatch</a></td>
    <td style = "text-align: left;">1, 3, 15, 81, 453, 2583, 14907, 86733, 507561, 2982987</td>
  </tr>
  <tr>
    <td style = "text-align: left;">TransAlts </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A001003'>A001003</a></td>
    <td style = "text-align: left;">1, -1, -1, -3, -11, -45, -197, -903, -4279, -20793</td>
  </tr>
  <tr>
    <td style = "text-align: left;">TransSqrs </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A065096'>A065096</a></td>
    <td style = "text-align: left;">0, 1, 6, 31, 156, 785, 3978, 20335, 104856, 545073</td>
  </tr>
  <tr>
    <td style = "text-align: left;">TransNat0 </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A239204'>A239204</a></td>
    <td style = "text-align: left;">0, 1, 4, 17, 76, 353, 1688, 8257, 41128, 207905</td>
  </tr>
  <tr>
    <td style = "text-align: left;">TransNat1 </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A010683'>A010683</a></td>
    <td style = "text-align: left;">1, 2, 7, 28, 121, 550, 2591, 12536, 61921, 310954</td>
  </tr>
</table>
```
