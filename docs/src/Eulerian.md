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
    <td style = "text-align: left;">Eulerian</td>
    <td style = "text-align: left;"></td>
    <td style = "text-align: left;"></td>
  </tr>
  <tr>
    <td style = "text-align: left;">Triangle</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A173018'>A173018</a></td>
    <td style = "text-align: left;">[1 1 0 1 1 0 1 4 1 0 1 11 11 1 0 1 26 66 26 1 0 1 57 302 302 57 1 0 1 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Reverse</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A123125'>A123125</a></td>
    <td style = "text-align: left;">[1 0 1 0 1 1 0 1 4 1 0 1 11 11 1 0 1 26 66 26 1 0 1 57 302 302 57 1 0 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">InvRev</td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 0 1 0 -1 1 0 3 -4 1 0 -23 33 -11 1 0 425 -620 220 -26 1 0 -18129 ]'>nomatch</a></td>
    <td style = "text-align: left;">[1 0 1 0 -1 1 0 3 -4 1 0 -23 33 -11 1 0 425 -620 220 -26 1 0 -18129 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">DiagTri</td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 1 1 0 1 1 1 4 0 1 11 1 1 26 11 0 1 57 66 1 1 120 302 26 0 1 247 ]'>nomatch</a></td>
    <td style = "text-align: left;">[1 1 1 0 1 1 1 4 0 1 11 1 1 26 11 0 1 57 66 1 1 120 302 26 0 1 247 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PolyTri</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A332700'>A332700</a></td>
    <td style = "text-align: left;">[1 1 1 1 1 1 1 2 1 1 1 6 3 1 1 1 24 13 4 1 1 1 120 75 22 5 1 1 1 720 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Sum</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000142'>A000142</a></td>
    <td style = "text-align: left;">[1 1 2 6 24 120 720 5040 40320 362880 3628800 39916800 479001600 ]        </td>
  </tr>
  <tr>
    <td style = "text-align: left;">EvenSum</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A128103'>A128103</a></td>
    <td style = "text-align: left;">[1 1 1 2 12 68 360 2384 20160 185408 1814400 19781504 239500800 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">OddSum</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A262745'>A262745</a></td>
    <td style = "text-align: left;">[0 0 1 4 12 52 360 2656 20160 177472 1814400 20135296 239500800 ]  </td>
  </tr>
  <tr>
    <td style = "text-align: left;">AltSum</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A009006'>A009006</a></td>
    <td style = "text-align: left;">[1 1 0 -2 0 16 0 -272 0 7936 0 -353792 0 22368256 0 -1903757312 0 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">DiagSum</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000800'>A000800</a></td>
    <td style = "text-align: left;">[1 1 1 2 5 13 38 125 449 1742 7269 32433 153850 772397 4088773 ]  </td>
  </tr>
  <tr>
    <td style = "text-align: left;">Middle</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A006551'>A006551</a></td>
    <td style = "text-align: left;">[1 1 1 4 11 66 302 2416 15619 156190 1310354 15724248 162512286 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Central</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A180056'>A180056</a></td>
    <td style = "text-align: left;">[1 1 11 302 15619 1310354 162512286 27971176092 6382798925475 1865385657780650 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">LeftSide</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000012'>A000012</a></td>
    <td style = "text-align: left;">[1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">RightSide</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000007'>A000007</a></td>
    <td style = "text-align: left;">[1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PosHalf</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000670'>A000670</a></td>
    <td style = "text-align: left;">[1 1 3 13 75 541 4683 47293 545835 7087261 102247563 1622632573 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">NegHalf</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A087674'>A087674</a></td>
    <td style = "text-align: left;">[1 1 -1 -3 15 21 -441 477 19935 -101979 -1150281 14838957 60479055 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PolyVal2</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000670'>A000670</a></td>
    <td style = "text-align: left;">[1 1 3 13 75 541 4683 47293 545835 7087261 102247563 1622632573 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PolyVal3</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A122704'>A122704</a></td>
    <td style = "text-align: left;">[1 1 4 22 160 1456 15904 202672 2951680 48361216 880405504 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PolyValn</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A122778'>A122778</a></td>
    <td style = "text-align: left;">[1 1 3 22 285 5656 158095 5881968 279768825 16507789696 1180490926131 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">BinConv</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A011818'>A011818</a></td>
    <td style = "text-align: left;">[1 1 3 16 115 1056 11774 154624 2337507 39984640 763546234 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">IBinConv</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A344052'>A344052</a></td>
    <td style = "text-align: left;">[1 -1 -1 8 19 -276 -1002 21216 103395 -2881180 -17620142 609297072 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">TransSqrs</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A344054'>A344054</a></td>
    <td style = "text-align: left;">[0 0 1 8 64 540 4920 48720 524160 6108480 76809600 1037836800 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">TransNat0</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A180119'>A180119</a></td>
    <td style = "text-align: left;">[0 0 1 6 36 240 1800 15120 141120 1451520 16329600 199584000 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">TransNat1</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A001710'>A001710</a></td>
    <td style = "text-align: left;">[1 1 3 12 60 360 2520 20160 181440 1814400 19958400 239500800 ] </td>
  </tr>
</table>
```
