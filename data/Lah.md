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
    <td style = "text-align: left;">Lah</td>
    <td style = "text-align: left;"></td>
    <td style = "text-align: left;"></td>
  </tr>
  <tr>
    <td style = "text-align: left;">Flat </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A111596'>A111596</a></td>
    <td style = "text-align: left;">1, 0, 1, 0, 2, 1, 0, 6, 6, 1</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Reverse </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 1 0 1 2 0 1 6 6 0 ]'>nomatch</a></td>
    <td style = "text-align: left;">1, 1, 0, 1, 2, 0, 1, 6, 6, 0</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Inverse </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A111596'>A111596</a></td>
    <td style = "text-align: left;">1, 0, 1, 0, -2, 1, 0, 6, -6, 1</td>
  </tr>
  <tr>
    <td style = "text-align: left;">RevInv </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 1 0 1 -2 0 1 -6 6 0 ]'>nomatch</a></td>
    <td style = "text-align: left;">1, 1, 0, 1, -2, 0, 1, -6, 6, 0</td>
  </tr>
  <tr>
    <td style = "text-align: left;">DiagTri </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A330609'>A330609</a></td>
    <td style = "text-align: left;">1, 0, 0, 1, 0, 2, 0, 6, 1, 0</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PolyTri </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A253286'>A253286</a></td>
    <td style = "text-align: left;">1, 0, 1, 0, 1, 1, 0, 3, 2, 1</td>
  </tr>
  <tr>
    <td style = "text-align: left;">sum </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000262'>A000262</a></td>
    <td style = "text-align: left;">1, 1, 3, 13, 73, 501, 4051, 37633, 394353, 4596553</td>
  </tr>
  <tr>
    <td style = "text-align: left;">EvenSum </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A088312'>A088312</a></td>
    <td style = "text-align: left;">1, 0, 1, 6, 37, 260, 2101, 19362, 201097, 2326536</td>
  </tr>
  <tr>
    <td style = "text-align: left;">OddSum </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A088313'>A088313</a></td>
    <td style = "text-align: left;">0, 1, 2, 7, 36, 241, 1950, 18271, 193256, 2270017</td>
  </tr>
  <tr>
    <td style = "text-align: left;">AltSum </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A111884'>A111884</a></td>
    <td style = "text-align: left;">1, -1, -1, -1, 1, 19, 151, 1091, 7841, 56519</td>
  </tr>
  <tr>
    <td style = "text-align: left;">DiagSum </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A001053'>A001053</a></td>
    <td style = "text-align: left;">1, 0, 1, 2, 7, 30, 157, 972, 6961, 56660</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Middle </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 0 2 6 36 240 1200 12600 58800 846720 ]'>nomatch</a></td>
    <td style = "text-align: left;">1, 0, 2, 6, 36, 240, 1200, 12600, 58800, 846720</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Central </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A187535'>A187535</a></td>
    <td style = "text-align: left;">1, 2, 36, 1200, 58800, 3810240, 307359360, 29682132480, 3339239904000, 428906814336000</td>
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
    <td style = "text-align: left;"><a href='https://oeis.org/A025168'>A025168</a></td>
    <td style = "text-align: left;">1, 1, 5, 37, 361, 4361, 62701, 1044205, 19748177, 417787921</td>
  </tr>
  <tr>
    <td style = "text-align: left;">NegHalf </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A318223'>A318223</a></td>
    <td style = "text-align: left;">1, 1, -3, 13, -71, 441, -2699, 9157, 206193, -8443151</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PolyVal2 </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A052897'>A052897</a></td>
    <td style = "text-align: left;">1, 2, 8, 44, 304, 2512, 24064, 261536, 3173888, 42483968</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PolyVal3 </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A255806'>A255806</a></td>
    <td style = "text-align: left;">1, 3, 15, 99, 801, 7623, 83079, 1017495, 13808097, 205374123</td>
  </tr>
  <tr>
    <td style = "text-align: left;">BinConv </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 1 5 37 361 4301 60001 954325 16984577 333572041 ]'>nomatch</a></td>
    <td style = "text-align: left;">1, 1, 5, 37, 361, 4301, 60001, 954325, 16984577, 333572041</td>
  </tr>
  <tr>
    <td style = "text-align: left;">IBinConv </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 1 -3 1 73 -699 3001 24697 -783999 10946233 ]'>nomatch</a></td>
    <td style = "text-align: left;">1, 1, -3, 1, 73, -699, 3001, 24697, -783999, 10946233</td>
  </tr>
  <tr>
    <td style = "text-align: left;">TransSqrs </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A103194'>A103194</a></td>
    <td style = "text-align: left;">0, 1, 6, 39, 292, 2505, 24306, 263431, 3154824, 41368977</td>
  </tr>
  <tr>
    <td style = "text-align: left;">TransNat0 </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A052852'>A052852</a></td>
    <td style = "text-align: left;">0, 1, 4, 21, 136, 1045, 9276, 93289, 1047376, 12975561</td>
  </tr>
  <tr>
    <td style = "text-align: left;">TransNat1 </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A002720'>A002720</a></td>
    <td style = "text-align: left;">1, 2, 7, 34, 209, 1546, 13327, 130922, 1441729, 17572114</td>
  </tr>
</table>
```
