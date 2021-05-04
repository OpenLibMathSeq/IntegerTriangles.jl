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
    <td style = "text-align: left;">Aitken</td>
    <td style = "text-align: left;"></td>
    <td style = "text-align: left;"></td>
  </tr>
  <tr>
    <td style = "text-align: left;">Flat </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A011971'>A011971</a></td>
    <td style = "text-align: left;">1, 1, 2, 2, 3, 5, 5, 7, 10, 15</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Reverse </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A123346'>A123346</a></td>
    <td style = "text-align: left;">1, 2, 1, 5, 3, 2, 15, 10, 7, 5</td>
  </tr>
  <tr>
    <td style = "text-align: left;">DiagTri </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 1 2 2 5 3 15 7 5 52 ]'>nomatch</a></td>
    <td style = "text-align: left;">1, 1, 2, 2, 5, 3, 15, 7, 5, 52</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PolyTri </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 1 1 2 3 1 5 10 5 1 ]'>nomatch</a></td>
    <td style = "text-align: left;">1, 1, 1, 2, 3, 1, 5, 10, 5, 1</td>
  </tr>
  <tr>
    <td style = "text-align: left;">sum </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A005493'>A005493</a></td>
    <td style = "text-align: left;">1, 3, 10, 37, 151, 674, 3263, 17007, 94828, 562595</td>
  </tr>
  <tr>
    <td style = "text-align: left;">EvenSum </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 1 7 15 94 290 1925 7541 54217 254189 ]'>nomatch</a></td>
    <td style = "text-align: left;">1, 1, 7, 15, 94, 290, 1925, 7541, 54217, 254189</td>
  </tr>
  <tr>
    <td style = "text-align: left;">OddSum </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[0 2 3 22 57 384 1338 9466 40611 308406 ]'>nomatch</a></td>
    <td style = "text-align: left;">0, 2, 3, 22, 57, 384, 1338, 9466, 40611, 308406</td>
  </tr>
  <tr>
    <td style = "text-align: left;">AltSum </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 -1 4 -7 37 -94 587 -1925 13606 -54217 ]'>nomatch</a></td>
    <td style = "text-align: left;">1, -1, 4, -7, 37, -94, 587, -1925, 13606, -54217</td>
  </tr>
  <tr>
    <td style = "text-align: left;">DiagSum </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 1 4 8 27 82 312 1256 5708 28059 ]'>nomatch</a></td>
    <td style = "text-align: left;">1, 1, 4, 8, 27, 82, 312, 1256, 5708, 28059</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Middle </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A216078'>A216078</a></td>
    <td style = "text-align: left;">1, 1, 3, 7, 27, 87, 409, 1657, 9089, 43833</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Central </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A094577'>A094577</a></td>
    <td style = "text-align: left;">1, 3, 27, 409, 9089, 272947, 10515147, 501178937, 28773452321, 1949230218691</td>
  </tr>
  <tr>
    <td style = "text-align: left;">LeftSide </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000110'>A000110</a></td>
    <td style = "text-align: left;">1, 1, 2, 5, 15, 52, 203, 877, 4140, 21147</td>
  </tr>
  <tr>
    <td style = "text-align: left;">RightSide </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000110'>A000110</a></td>
    <td style = "text-align: left;">1, 2, 5, 15, 52, 203, 877, 4140, 21147, 115975</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PosHalf </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 4 19 103 634 4393 33893 288158 2674849 26888251 ]'>nomatch</a></td>
    <td style = "text-align: left;">1, 4, 19, 103, 634, 4393, 33893, 288158, 2674849, 26888251</td>
  </tr>
  <tr>
    <td style = "text-align: left;">NegHalf </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 0 7 -17 166 -931 8333 -67902 668341 -6733957 ]'>nomatch</a></td>
    <td style = "text-align: left;">1, 0, 7, -17, 166, -931, 8333, -67902, 668341, -6733957</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PolyVal2 </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A095676'>A095676</a></td>
    <td style = "text-align: left;">1, 5, 28, 179, 1291, 10358, 91337, 876289, 9070546, 100596161</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PolyVal3 </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 7 56 521 5529 65674 860387 12290251 189680754 3139572183 ]'>nomatch</a></td>
    <td style = "text-align: left;">1, 7, 56, 521, 5529, 65674, 860387, 12290251, 189680754, 3139572183</td>
  </tr>
  <tr>
    <td style = "text-align: left;">BinTrans </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A126390'>A126390</a></td>
    <td style = "text-align: left;">1, 3, 13, 71, 457, 3355, 27509, 248127, 2434129, 25741939</td>
  </tr>
  <tr>
    <td style = "text-align: left;">IBinTrans </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000012'>A000012</a></td>
    <td style = "text-align: left;">1, 1, 1, 1, 1, 1, 1, 1, 1, 1</td>
  </tr>
  <tr>
    <td style = "text-align: left;">TransSqrs </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[0 2 23 182 1293 8932 62014 439442 3202127 24081458 ]'>nomatch</a></td>
    <td style = "text-align: left;">0, 2, 23, 182, 1293, 8932, 62014, 439442, 3202127, 24081458</td>
  </tr>
  <tr>
    <td style = "text-align: left;">TransNat0 </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[0 2 13 72 393 2202 12850 78488 502327 3366648 ]'>nomatch</a></td>
    <td style = "text-align: left;">0, 2, 13, 72, 393, 2202, 12850, 78488, 502327, 3366648</td>
  </tr>
  <tr>
    <td style = "text-align: left;">TransNat1 </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A278677'>A278677</a></td>
    <td style = "text-align: left;">1, 5, 23, 109, 544, 2876, 16113, 95495, 597155, 3929243</td>
  </tr>
</table>
```
